<?php

namespace App\Http\Controllers;

use DB;
use App\Models\AdList;
use App\Models\AdImage;
use App\Models\Category;
use App\Models\District;
use App\Models\Division;
use App\Models\AdPromote;
use App\Models\SubCategory;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Rules\FileTypeValidate;
use App\Models\AdminNotification;
use Illuminate\Support\Facades\Auth;


class AdController extends Controller
{
    public function __construct() {
        $this->activeTemplate = activeTemplate();
    }

    public function createAd()
    {
        $page_title = '';
        return view($this->activeTemplate.'user.ads.postAdType',compact('page_title'));
    }

     public function postAdpermission()
    {
        $page_title = 'Crea una nuova offerta';
        $user = Auth::user();
        $selectUserData = DB::select('select * from users where id = ?', [$user->id]);
        return view($this->activeTemplate.'user.ads.postAdpermission',compact('page_title', 'selectUserData'));
    }

    public function selectCategory($type)
    {
        $page_title = 'Seleziona una categoria';
        $user = Auth::user();
        $selectUserData = DB::select('select * from users where id = ?', [$user->id]);
        if($type == 'sell'){
            $flag = 1;
        } else if($type == 'rent') {
            $flag = 2;
        } else{
            $notify[]=['error','Sorry type couldn\'t found'];
            return back()->withNotify($notify);
        }
        $categories = Category::where('status',1)->get();
        return view($this->activeTemplate.'user.ads.postAdCategory',compact('page_title','categories','type','flag','selectUserData'));
    }


    ///////////    check permission   ///////////
    public function checkpermission(){

    }
    public function selectLocation($type,$cat,$subcat)
    {
        $page_title = 'Seleziona una location';
        if($type == 'sell' || $type == 'rent'){
            $locations = Division::where('status',1)->with('districts')->get();
            return view($this->activeTemplate.'user.ads.postAdLocation',compact('page_title','cat','subcat','locations','type'));

        }
        $notify[]=['error','Sorry type couldn\'t found'];
        return back()->withNotify($notify);

    }

    public function showAdForm($type,$cat,$subcat,$location)
    {
        $page_title = 'Aggiungi crediti';
        if($type =='sell' || $type == 'rent'){
            $subcategory = SubCategory::where('status',1)->where('slug',$subcat)->first();
            $district = District::where('status',1)->where('slug',$location)->first();
            if(!$district){
                $notify[]=['error','Ci dispiace, la categoria o la location al momento non sono disponibili o non sono presenti'];
                return back()->withNotify($notify);
            }
            return view($this->activeTemplate.'user.ads.postAdForm',compact('page_title','cat','subcategory','district','type'));

        }
        $notify[]=['error','Sorry type couldn\'t found'];
        return back()->withNotify($notify);

    }

    public function storeAd(Request $request)
    {

            $images = $request->image;
            $allowedExts = array('jpg','jpeg','png');
            $rules = [
                'title' => 'required',
                'price' => 'required|numeric|gt:0',
                'firstDate' => 'required',
            ];

            if ($images == null || count($images) == 0) {
                $notify[]=['error','È necessaria almeno un`immagine'];
                return back()->withNotify($notify);
            }

            foreach ($images as $file) {
                $ext = strtolower($file->getClientOriginalExtension());
                if (($file->getSize() / 10000000000) > 5) {
                    $notify[]=['error','La dimensione massima è di 5MB'];
                    return back()->withNotify($notify);
                }

                if (!in_array($ext, $allowedExts)) {
                    $notify[]=['error','Sono ammessi solo file jpg, jpeg, png'];
                    return back()->withNotify($notify);
                }
            }

           $subcat = SubCategory::findOrFail($request->subcategory_id);
           $district = District::findOrFail($request->district_id);

            $fields = $subcat->fields;
            if (!empty($fields)) {
                foreach ($fields as $field) {
                    if ($field->required == 1) {
                        $rules["$field->name"] = 'required';
                    }
                }
            }

            $request->validate($rules,['prev_image.required'=>'Preview Image is required','prev_image.image'=>'Preview Image has to be image type','prev_image.max'=>'Preview Image can not be greater than 2 MB']);

            $extraFields = [];
            foreach ($subcat->fields as $field) {
              $fieldName = $field->name;
              if ($request["$fieldName"]) {
                $extraFields["$fieldName"] = $request["$fieldName"];
              }
            }

            $ad = new AdList();
            $ad->user_id = auth()->id();
            $ad->category_id = $subcat->category->id;
            $ad->subcategory_id = $subcat->id;
            $ad->division = $district->division->name;
            $ad->district = $district->name;
            $ad->title = $request->title;
            $ad->slug = Str::slug($request->title).'-'.rand(411,799);
            $ad->price = $request->price;
            $ad->startDate = $request->firstDate;
            $ad->type = $request->type;
            $ad->negotiable = $request->negotiable ? 1:0;
            $ad->hide_contact = $request->hidenumber ? 1:0;

            if($request->image){
                $isTure = true;
                foreach($request->image as $image){
                    if($image && $isTure) {
                        $ad->prev_image = uploadImage($image,'assets/images/item_image/','200x200',null,null,1);
                        $ad->save();
                        $isTure = false;
                    }

                    $img = new AdImage();
                    $img->ad_id = $ad->id;
                    $img->image = uploadImage($image,'assets/images/item_image/','800x400',null,null,1);
                    $img->save();
                }
            }
            $adminNotification = new AdminNotification();
            $adminNotification->user_id = auth()->id();
            $adminNotification->title = auth()->user()->username.' Pubblicata una nuova offerta';
            $adminNotification->click_url = urlPath('admin.ads.pending');
            $adminNotification->save();

           $notify[]=['success','Nuova offerta creata con successo'];
           return back()->withNotify($notify);
     }

     public function adList(Request $request)
     {
         $search = $request->search;
         if($search){
            $page_title = "Search Result of $search";
            $ads = AdList::where('status',1)->where('user_id',auth()->id())->where('title','like',"%$search%")->paginate(getPaginate());
         } else {

             $page_title = "I tuoi crediti in vendita";
             $ads = AdList::where('status',1)->where('user_id',auth()->id())->latest()->paginate(getPaginate());
         }
         $user = Auth::user();
         $selectUserData = DB::select('select * from users where id = ?', [$user->id]);
         return view($this->activeTemplate.'user.ads.adList',compact('ads','page_title','search','selectUserData'));
     }

     public function editAd($id)
     {
        $page_title = "Edit Crediti";
        $ad = AdList::where('id',$id)->where('user_id',auth()->id())->first();
        if(!$ad){
            $notify[]=['error','Sorry! invalid request'];
            return back()->withNotify($notify);
        }
        $adFields = json_decode(json_encode($ad->fields),true);

        return view($this->activeTemplate.'user.ads.editAd',compact('ad','page_title','adFields'));
     }

     public function updateAd(Request $request,$id)
     {
        $images = $request->image;
        $allowedExts = array('jpg','jpeg','png');
        $rules = [
            'title' => 'required',
            'condition' => 'required|in:1,2',
            // 'description' => 'required',
            'price' => 'required|numeric|gt:0',
            // 'firstDate' => 'required',
            // 'phone' => 'required',
            'prev_image'=>['image','max:2048',new FileTypeValidate(['jpg','jpeg','png'])],


        ];

        // if($images != null){
        //     foreach ($images as $file) {
        //         $ext = strtolower($file->getClientOriginalExtension());
        //         if (($file->getSize() / 1000000) > 5) {
        //             $notify[]=['error','La dimensione massima è di 5MB!'];
        //             return back()->withNotify($notify);
        //         }
        //         if (!in_array($ext, $allowedExts)) {
        //             $notify[]=['error','Sono ammessi solo file jpg, jpeg, png'];
        //             return back()->withNotify($notify);
        //         }
        //     }
        // }

        // if ($images!=null && count($images) > 5) {
        //     $notify[]=['error','Puoi caricare al massimo 5 file'];
        //     return back()->withNotify($notify);
        // }

        $ad = AdList::findOrFail($id);
        // $subcat = $ad->subcategory;

        // $fields = $ad->subcategory->fields;
        // if (!empty($fields)) {
        //     foreach ($fields as $field) {
        //         if ($field->required == 1) {
        //             $rules["$field->name"] = 'required';
        //         }
        //     }
        // }

        $request->validate($rules,['prev_image.required'=>'Preview Image is required','prev_image.image'=>'Preview Image has to be image type','prev_image.max'=>'Preview Image can not be greater than 2 MB']);

        $extraFields = [];
        // foreach ($subcat->fields as $field) {
        //     $fieldName = $field->name;
        //    if ($request["$fieldName"]) {
        //       $extraFields["$fieldName"] = $request["$fieldName"];
        //     }
        // }

        $ad->title = $request->title;
        $ad->slug = Str::slug($request->title).rand(411,799);
        $ad->use_condition = $request->condition;
        // $ad->description = $request->description;
        $ad->price = $request->price;
        // $ad->negotiable = $request->negotiable ? 1:0;
        $ad->contact_num = $request->phone;
        $ad->hide_contact = $request->hidenumber ? 1:0;
        $ad->fields = json_decode(json_encode($extraFields))??[];

        if($request->prev_image){
          $old = $ad->prev_image ?? null;
          $ad->prev_image = uploadImage($request->prev_image,'assets/images/item_image/','200x200',$old,null,1);
        }
        $ad->save();

        if($images){
            foreach($images as $key => $image){
                $img = AdImage::firstOrNew(['id'=>$key]);
                $img->ad_id = $ad->id;
                $old = $img->image ?? null;
                $img->image = uploadImage($image,'assets/images/item_image/','800x400',$old,null,1);
                $img->save();
            }
        }

        $notify[]=['success','Offerta aggiornata con successo'];
        return back()->withNotify($notify);

    }

    public function removeAd($id)
    {
        $ad = AdList::findOrFail($id);
        removeFile('assets/images/item_image/'.$ad->prev_image);
        $adImages = AdImage::where('ad_id',$ad->id)->get();
        foreach ($adImages as $key => $adImage) {
            removeFile('assets/images/item_image/'.$adImage->image);
            $adImage->delete();
        }
        AdPromote::where('ad_id',$ad->id)->delete();
        $ad->delete();
        $notify[]=['success','Offerta cancellata con successo'];
        return back()->withNotify($notify);
    }

    public function removeImage($id){
        $adImage = AdImage::findOrFail($id);
        $adList = AdList::where('id',$adImage->ad_id)->first();
        if($adList->user_id != auth()->user()->id){
            abort(403);
        }
        removeFile('assets/images/item_image/'.$adImage->image);
        $adImage->delete();
        $notify[]=['success','Immagine cancellata con successo'];
        return back()->withNotify($notify);
    }

    public function comDetailPdfStore(Request $request)
    {
        $user = Auth::user();
        $nameArray = [];
        for($count = 1; $count <= 3; $count++){
            
            $currenttime = microtime(true);
            if ($request->hasFile('file_' . $count)) {
                $uploadPdfFile = $request->file('file_' . $count);
                $uploadPdfRName = $uploadPdfFile->getClientOriginalName();

                array_push($nameArray, $uploadPdfRName);

                $uploadPdfExtension = $uploadPdfFile->getClientOriginalExtension();
                $uploadPdfName = $currenttime . $count . "." . $uploadPdfExtension;
                $uploadPdfDestinationPath = 'assets/pdf/';
                $uploadPdfUrl = $uploadPdfDestinationPath . $uploadPdfName;
                $uploadPdfFile->move($uploadPdfDestinationPath, $uploadPdfName);
                
                DB::update('update users set pdf'.$count.'_path = ?, pdf'.$count.'_name = ? where id = ?', [$uploadPdfUrl, $uploadPdfRName, $user->id,]);
            }
            
        }
        $notify[] = ['success', 'Documento caricato con successo.'];
        // return view($this->activeTemplate . 'user.transactions', compact('page_title', 'empty_message', 'logs','search'));
        return back()->withNotify($notify);
    }

    public function getpdfName(){

        $user = Auth::user();
        $selectUserData = DB::select('select * from users where id = ?', [$user->id]);

        return response()->json($selectUserData);
    }

}
