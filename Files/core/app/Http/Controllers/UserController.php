<?php

namespace App\Http\Controllers;


use DB;
use Image;
use App\Models\AdList;
use App\Models\ReportAd;
use App\Models\AdPromote;
use App\Models\Favourite;
use Illuminate\Http\Request;
use App\Models\GeneralSetting;
use App\Rules\FileTypeValidate;
use App\Lib\GoogleAuthenticator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;


class UserController extends Controller
{
    public function __construct()
    {
        $this->activeTemplate = activeTemplate();
    }
    public function home()
    {

        $user = auth()->user();
        $data['page_title'] = 'Dashboard';
        $selectUserData = DB::select('select * from users where id = ?', [$user->id]);
        $data['totalAd'] = AdList::where('status',1)->where('user_id',auth()->user()->id)->count();
        $data['totalPendingAd'] = AdList::where('user_id',auth()->id())->where('status',0)->count();
        $data['totalPromoted'] = AdPromote::where('user_id',auth()->id())->count();

        $data['totalSaved'] =  $user->favourites->count();
        $data['refundedBalance'] =  getAmount($user->balance);
        $data['totalTrx'] =  $user->transactions()->count();
        $data['latestAds'] = AdList::where('status',1)->where('user_id',auth()->id())->latest()->take(8)->get();

        return view($this->activeTemplate . 'user.dashboard',compact('selectUserData'), $data);
        
    }

    public function naturalperson()
    {

        $user = auth()->user();
        $data['page_title'] = 'NATURALPERSON';
        $data['totalAd'] = AdList::where('status',1)->where('user_id',auth()->user()->id)->count();
        $data['totalPendingAd'] = AdList::where('user_id',auth()->id())->where('status',0)->count();
        $data['totalPromoted'] = AdPromote::where('user_id',auth()->id())->count();

        $data['totalSaved'] =  $user->favourites->count();
        $data['refundedBalance'] =  getAmount($user->balance);
        $data['totalTrx'] =  $user->transactions()->count();
        $data['latestAds'] = AdList::where('status',1)->where('user_id',auth()->id())->latest()->take(8)->get();

        return view($this->activeTemplate . 'user.naturalperson',$data);
    }

    public function legalperson()
    {

        $user = auth()->user();
        $data['page_title'] = 'LEGALPERSON';
        $data['totalAd'] = AdList::where('status',1)->where('user_id',auth()->user()->id)->count();
        $data['totalPendingAd'] = AdList::where('user_id',auth()->id())->where('status',0)->count();
        $data['totalPromoted'] = AdPromote::where('user_id',auth()->id())->count();

        $data['totalSaved'] =  $user->favourites->count();
        $data['refundedBalance'] =  getAmount($user->balance);
        $data['totalTrx'] =  $user->transactions()->count();
        $data['latestAds'] = AdList::where('status',1)->where('user_id',auth()->id())->latest()->take(8)->get();

        return view($this->activeTemplate . 'user.legalperson',$data);
    }
    public function profile()
    {
        $data['page_title'] = "Profilo Setting";
        $data['user'] = Auth::user();
        return view($this->activeTemplate. 'user.profile-setting', $data);
    }
    public function getProfile()
    {
        $user = Auth::user();
        $selectUserData = DB::select('select * from users where id = ?', [$user->id]);

        return response()->json($selectUserData);
    }

    public function submitProfile(Request $request)
    {
        $companyName = $request->input('companyName');
        $headOffice = $request->input('headOffice');
        $mobile = $request->input('telephone_Num');
        $traditionalemail = $request->input('traditionalemail');
        $legalemail = $request->input('legalemail');
        $Invoice_unique_code = $request->input('Invoice_unique_code');
        $vat = $request->input('vat');
        $MainAtecoCode = $request->input('MainAtecoCode');
        $nDocuments = $request->input('nDocuments');
        $LBNCBR = $request->input('LBNCBR');
        $CCCR = $request->input('CCCR');


        $user = Auth::user();

        $old = $user->image ?: null;
        if ($request->image){
            $image =  uploadImage($request->image, 'assets/images/user/profile/', '400X400', $old);
            DB::update('update users set companyName = ?, headOffice = ?, phone = ?, traditionalemail = ?, legalemail = ?, image = ?,
                    Invoice_unique_code = ?, vat = ?, MainAtecoCode = ?, nDocuments = ?, LBNCBR = ?, CCCR = ? where id = ?',
                    [$companyName, $headOffice, $mobile, $traditionalemail, $legalemail, $image, $Invoice_unique_code, $vat, $MainAtecoCode, $nDocuments, $LBNCBR, $CCCR, $user->id]);

        } else {
            DB::update('update users set companyName = ?, headOffice = ?, phone = ?, traditionalemail = ?, legalemail = ?,
            Invoice_unique_code = ?, vat = ?, MainAtecoCode = ?, nDocuments = ?, LBNCBR = ?, CCCR = ? where id = ?',
            [$companyName, $headOffice, $mobile, $traditionalemail, $legalemail,$Invoice_unique_code, $vat, $MainAtecoCode, $nDocuments, $LBNCBR, $CCCR, $user->id]);
        }




        $in['companyName'] = $request->companyName;
            $in['headOffice'] = [
            'headOffice' => $request->headOffice,
            'phone' => $request->mobile,
            'traditionalemail' => $request->traditionalemail,
            'legalemail' => $request->legalemail,
            'Invoice_unique_code' => $request->Invoice_unique_code,
            'vat' => $request->vat,
            'MainAtecoCode' => $request->MainAtecoCode,
            'nDocuments' => $request->nDocuments,
            'LBNCBR' => $request->LBNCBR,
            'CCCR' => $request->CCCR,
        ];

        $user = Auth::user();

        if ($request->hasFile('image')) {
            try {
                $old = $user->image ?: null;
                $in['image'] = uploadImage($request->image, 'assets/images/user/profile/', '400X400', $old);
            } catch (\Exception $exp) {
                $notify[] = ['error', 'L`immagine non può essere caricata'];
                return back()->withNotify($notify);
            }
        }

        // $user->fill($in)->save();
        $notify[] = ['success', 'Profilo aggiornato con successo.'];
        return back()->withNotify($notify);
    }


    public function comDetailPdfStore(Request $request)
    {
        $pdf_1 = $request->input('file_1');
        $pdf_2 = $request->input('file_2');
        $pdf_3 = $request->input('file_3');

        // $currenttime = date("Ymdhis");
        $time_start = microtime(true);
        $time_end = microtime(true);
        $currenttime = $time_end - $time_start;

        $user = Auth::user();

        if ($request->hasFile('file_1')) {
            $uploadPdfFile = $request->file('file_1');
            $uploadPdfExtension = $uploadPdfFile->getClientOriginalExtension();
            $uploadPdfName = $currenttime . "1." . $uploadPdfExtension;
            $uploadPdfDestinationPath = 'assets/pdf/';
            $uploadPdfUrl = $uploadPdfDestinationPath . $uploadPdfName;
            $uploadPdfFile->move($uploadPdfDestinationPath, $uploadPdfName);

            DB::update('update users set pdf1_path = ? where id = ?', [$uploadPdfUrl, $user->id]);

            $notify[] = ['success', 'Documento caricato con successo.'];
            return back()->withNotify($notify);

        }elseif($request->hasFile('file_2')){
            $uploadPdfFile = $request->file('file_2');
            $uploadPdfExtension = $uploadPdfFile->getClientOriginalExtension();
            $uploadPdfName = $currenttime . "2." . $uploadPdfExtension;
            $uploadPdfDestinationPath = 'assets/pdf/';
            $uploadPdfUrl = $uploadPdfDestinationPath . $uploadPdfName;
            $uploadPdfFile->move($uploadPdfDestinationPath, $uploadPdfName);

            DB::update('update users set pdf2_path = ? where id = ?', [$uploadPdfUrl, $user->id]);

            $notify[] = ['success', 'PDF_2 Updated successfully.'];
            return back()->withNotify($notify);

        }elseif($request->hasFile('file_3')){
            $uploadPdfFile = $request->file('file_3');
            $uploadPdfExtension = $uploadPdfFile->getClientOriginalExtension();
            $uploadPdfName = $currenttime . "3." . $uploadPdfExtension;
            $uploadPdfDestinationPath = 'assets/pdf/';
            $uploadPdfUrl = $uploadPdfDestinationPath . $uploadPdfName;
            $uploadPdfFile->move($uploadPdfDestinationPath, $uploadPdfName);

            DB::update('update users set pdf3_path = ? where id = ?', [$uploadPdfUrl, $user->id]);

            $notify[] = ['success', 'PDF_3 Updated successfully.'];
            return back()->withNotify($notify);
        }
    }



    public function changePassword()
    {
        $data['page_title'] = "Cambia Password";
        return view($this->activeTemplate . 'user.password', $data);
    }

    public function submitPassword(Request $request)
    {

        $this->validate($request, [
            'current_password' => 'required',
            'password' => 'required|min:5|confirmed'
        ]);
        try {
            $user = auth()->user();
            if (Hash::check($request->current_password, $user->password)) {
                $password = Hash::make($request->password);
                $user->password = $password;
                $user->save();
                $notify[] = ['success', 'La password è stata modificata.'];
                return back()->withNotify($notify);
            } else {
                $notify[] = ['error', 'La password attuale non è uguale.'];
                return back()->withNotify($notify);
            }
        } catch (\PDOException $e) {
            $notify[] = ['error', $e->getMessage()];
            return back()->withNotify($notify);
        }
    }

    /*
     * Deposit History
     */
    public function depositHistory(Request $request)
    {
        $search = $request->search;
        if($search){
            $page_title = "Search Results of $search";
            $logs = auth()->user()->deposits()->with(['gateway'])->where('trx',$search)->paginate(getPaginate());
        } else {
            $page_title = 'Payment History';
            $logs = auth()->user()->deposits()->with(['gateway'])->latest()->paginate(getPaginate());
        }
        $empty_message = 'No history found.';

        return view($this->activeTemplate . 'user.deposit_history', compact('page_title', 'empty_message', 'logs','search'));
    }
    public function transactions(Request $request)
    {
        $search = $request->search;
        if($search){
            $page_title = "Search Results of $search";
            $logs = auth()->user()->transactions()->where('trx',$search)->paginate(getPaginate());
        } else {

            $page_title = 'Transaction History';
            $logs = auth()->user()->transactions()->latest()->paginate(getPaginate());
        }
        $empty_message = 'No history found.';
        return view($this->activeTemplate . 'user.transactions', compact('page_title', 'empty_message', 'logs','search'));
    }




    public function show2faForm()
    {
        $gnl = GeneralSetting::first();
        $ga = new GoogleAuthenticator();
        $user = auth()->user();
        $secret = $ga->createSecret();
        $qrCodeUrl = $ga->getQRCodeGoogleUrl($user->username . '@' . $gnl->sitename, $secret);
        $prevcode = $user->tsc;
        $prevqr = $ga->getQRCodeGoogleUrl($user->username . '@' . $gnl->sitename, $prevcode);
        $page_title = 'Two Factor';
        return view($this->activeTemplate.'user.twofactor', compact('page_title', 'secret', 'qrCodeUrl', 'prevcode', 'prevqr'));
    }

    public function create2fa(Request $request)
    {
        $user = auth()->user();
        $this->validate($request, [
            'key' => 'required',
            'code' => 'required',
        ]);

        $ga = new GoogleAuthenticator();
        $secret = $request->key;
        $oneCode = $ga->getCode($secret);

        if ($oneCode === $request->code) {
            $user->tsc = $request->key;
            $user->ts = 1;
            $user->tv = 1;
            $user->save();


            $userAgent = getIpInfo();
            $osBrowser = osBrowser();
            notify($user, '2FA_ENABLE', [
                'operating_system' => @$osBrowser['os_platform'],
                'browser' => @$osBrowser['browser'],
                'ip' => @$userAgent['ip'],
                'time' => @$userAgent['time']
            ]);


            $notify[] = ['success', 'Autenticazione Google abilitata con successo'];
            return back()->withNotify($notify);
        } else {
            $notify[] = ['error', 'Il codice di verifica è errato'];
            return back()->withNotify($notify);
        }
    }


    public function disable2fa(Request $request)
    {

        $this->validate($request, [
            'code' => 'required',
        ]);

        $user = auth()->user();
        $ga = new GoogleAuthenticator();

        $secret = $user->tsc;
        $oneCode = $ga->getCode($secret);
        $userCode = $request->code;

        if ($oneCode == $userCode) {

            $user->tsc = null;
            $user->ts = 0;
            $user->tv = 1;
            $user->save();


            $userAgent = getIpInfo();
            $osBrowser = osBrowser();
            notify($user, '2FA_DISABLE', [
                'operating_system' => @$osBrowser['os_platform'],
                'browser' => @$osBrowser['browser'],
                'ip' => @$userAgent['ip'],
                'time' => @$userAgent['time']
            ]);


            $notify[] = ['success', 'Autenticazione a due fattori disabilitato'];
            return back()->withNotify($notify);
        } else {
            $notify[] = ['error', 'Il codice di verifica è errato'];
            return back()->with($notify);
        }
    }

    public function reportAd(Request $request)
    {

          $request->validate([
            'reasons' => 'required'
          ]);
          $report = new ReportAd;
          $report->user_id = Auth::user()->id;
          $report->ad_id = $request->ad_id;
          $report->reasons = $request->reasons;
          $report->save();

          $notify[]=['success','Report inviato'];
          return back()->withNotify($notify);
    }

    public function saveAd(Request $request)
    {
        $validate = Validator::make($request->all(),[
            'userid' => 'required',
            'adId' => 'required',
        ],
        [
            'userid.required'=>'Unrecognised user',
            'adId.required'=>'Unrecognised ad',
        ]);

        if($validate->fails()){
            return response()->json($validate->errors());
        }

        $saveAd = new Favourite();
        $saveAd->user_id = $request->userid;
        $saveAd->ad_id = $request->adId;
        $saveAd->save();
        return response()->json(['success'=>'Added to favourite list']);
      }

      public function savedAds(Request $request)
      {
          $search = $request->search;
          if($search){
              $page_title = "Search Results of $search";
              $favourites = Favourite::where("user_id",auth()->id())->whereHas('ad',function($ad) use ($search){
                  $ad->where('title','like',"%$search%");
              })->paginate(getPaginate());
          } else {
              $page_title = "Favourite Ads";
              $favourites = Favourite::where("user_id",auth()->id())->latest()->paginate(getPaginate());
          }
          return view($this->activeTemplate.'user.ads.saved',compact('page_title','favourites','search'));
      }

      public function unsaveAd($id)
      {
          Favourite::findOrFail($id)->delete();
          $notify[] = ['success', 'Ci sono crediti non salvati tra i tuoi preferiti'];
          return back()->withNotify($notify);
      }


      public function promotionLog(Request $request)
    {
        $search = $request->search;
        if($search){
            $page_title = "Search Result of $search";
            $requests = AdPromote::where('user_id',auth()->id())->whereHas('ad',function($ad) use($search){
                $ad->where("title",'like',"%$search%");
            })->latest()->paginate(getPaginate());
        } else {
            $page_title = 'Tutti i log';
            $requests = AdPromote::where('user_id',auth()->id())->latest()->paginate(getPaginate());

        }
        $user = Auth::user();
        $selectUserData = DB::select('select * from users where id = ?', [$user->id]);
        $empty_message = "No Promotions";
        return view($this->activeTemplate.'user.ads.promotionLog',compact('page_title','empty_message','requests','search','selectUserData'));
    }

}
