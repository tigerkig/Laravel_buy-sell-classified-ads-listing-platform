<?php
 
namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
use App\Models\File;
 
class FileUploadController extends Controller
{
     public function index()
    {
        return view('file-upload');
    }
 
    public function comDetailPdfStore(Request $request)
    {   
        $currenttime = date("Ymdhis");
        if ($request->hasFile('file_1')) {
            $uploadPdfFile = $request->file('file_1');
            $uploadPdfExtension = $uploadPdfFile->getClientOriginalExtension();
            $uploadPdfName = $currenttime . "." . $uploadPdfExtension;
            $uploadPdfDestinationPath = 'assets/pdf/';
            $uploadPdfUrl = $uploadPdfDestinationPath . '/'. $uploadPdfName; 
            $uploadPdfFile->move($uploadPdfDestinationPath, $uploadPdfName);
        }elseif($request->hasFile('file_2')){
            $uploadPdfFile = $request->file('file_2');
            $uploadPdfExtension = $uploadPdfFile->getClientOriginalExtension();
            $uploadPdfName = $currenttime . "." . $uploadPdfExtension;
            $uploadPdfDestinationPath = 'assets/pdf/';
            $uploadPdfUrl = $uploadPdfDestinationPath . '/'. $uploadPdfName; 
            $uploadPdfFile->move($uploadPdfDestinationPath, $uploadPdfName);
        }elseif($request->hasFile('file_3')){
            $uploadPdfFile = $request->file('file_3');
            $uploadPdfExtension = $uploadPdfFile->getClientOriginalExtension();
            $uploadPdfName = $currenttime . "." . $uploadPdfExtension;
            $uploadPdfDestinationPath = 'assets/pdf/';
            $uploadPdfUrl = $uploadPdfDestinationPath . '/'. $uploadPdfName; 
            $uploadPdfFile->move($uploadPdfDestinationPath, $uploadPdfName);
        }
        // $validatedData = $request->validate([
        //  'file' => 'required|csv,txt,xlx,xls,pdf|max:2048',
        // ]);
        // $name = $request->file('file')->getClientOriginalName();
        // $path = $request->file('file')->store('resource/files');
        // $save = new File;
        // $save->name = $name;
        // $save->path = $path;
 
        // return redirect('file-upload')->with('status', 'File Has been uploaded successfully');
 
    }
}