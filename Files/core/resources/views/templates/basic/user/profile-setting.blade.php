@extends($activeTemplate.'layouts.master')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="card shadow-sm  border-0">
           <div class="card-header bg--sec">
                @lang('Impostazioni di profilo')
           </div>
           <div class="card-body">
            <form class="addProfile" action="{{ route('user.addProfile') }}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="row justify-content-center align-items-center mt-3">
                    <div class="col-xl6 col-lg-6 col-md-6 col-sm-6">
                        <div class="form-group">
                            <div class="image-upload">
                                <div class="thumb">
                                    <div class="avatar-preview">
                                        <div class="profilePicPreview"  style="background-image: url({{ getImage(imagePath()['profile']['user']['path'].'/'. $user->image,imagePath()['profile']['user']['size']) }})">
                                            <button type="button" class="remove-image"><i class="fa fa-times"></i></button>
                                        </div>
                                    </div>
                                    <div class="avatar-edit">
                                        <input type="file" class="profilePicUpload" name="image" id="profilePicUpload1"  accept=".png, .jpg, .jpeg">
                                        <label for="profilePicUpload1"  class="bg--base text-white">@lang('Carica il logo aziendale.')</label>
                                        <small class="mt-2 text-facebook">@lang('File supportati'): <b>@lang('jpeg'), @lang('jpg').</b> @lang('Dimensioni 400x400px') </small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class = "row">
                    <div class="form-group col-sm-12">
                        <label for="InputFirstname" class="col-form-label">@lang('Ragione Sociale'):</label>
                        <input type="text" class="form--control" id="companyName" name="companyName" placeholder="@lang('Ragione Sociale')" required>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-6">
                        <label for="InputFirstname" class="col-form-label">@lang('Sede Legale'):</label>
                        <input type="text" class="form--control" id="headOffice" name="headOffice" placeholder="@lang('Sede Legale')" required>
                    </div>
                    <div class="form-group col-sm-6">
                        <label for="phone" class="col-form-label">@lang('Telefono')</label>
                        <input type="tel" class="form--control pranto-control" id="phone_com" name="telephone_Num" placeholder="@lang('123-455-67892')" pattern="[0-9]{3}-[0-9]{3}-[0-9]{5}" required>
                        <!-- <input type="tel" class="form--control pranto-control" id="phone" name="mobile" pattern="[0-9]{2}-[0-9]{3}-[0-9]{2}-[0-9]{3}" placeholder="@lang('Your Contact Number')" required> -->
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-6">
                        <label for="email" class="col-form-label">@lang('Email semplice'):</label>
                        <input type="email" class="form--control" id="Temail" name="traditionalemail" placeholder="@lang('Email semplice')" required>
                    </div>
                    <div class="form-group col-sm-6">
                        <label for="email" class="col-form-label">@lang('PEC'):</label>
                        <input type="email" class="form--control" id="Lemail" name="legalemail" placeholder="@lang('PEC')" required>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-6">
                        <label for="lastname" class="col-form-label">@lang('Partita Iva'):</label>
                        <input type="text" class="form--control" id="vat" name="vat" placeholder="@lang('Partita Iva')" required>
                    </div>
                    <div class="form-group col-sm-6">
                        <label for="invoiceUniqueCode" class="col-form-label">@lang('Codice Univoco'):</label>
                        <input placeholder="@lang('Codice Univoco')" type="texg" class="form--control" id="Invoice_unique_code" name="Invoice_unique_code" required>
                    </div>

                </div>

                <div class="row">
                    <div class="form-group col-sm-6">
                        <label for="address" class="col-form-label">@lang('Codice Ateco'):</label>
                        <input type="text" class="form--control" id="MainAtecoCode" name="MainAtecoCode" placeholder="@lang('Codice Ateco')" required>
                    </div>
                    <div class="form-group col-sm-6">
                        <label for="state" class="col-form-label">@lang('Rapporti bancari con'):</label>
                        <input type="text" class="form--control" id="CCCR" name="CCCR" placeholder="@lang('Rapporti bancari con')" required>
                    </div>
                </div>
                {{-- <div class="row">
                    <div class="form-group col-sm-6">
                        <label for="zip" class="col-form-label">@lang('A list of Bank names with which the Company has a business relationship'):</label>
                        <input type="text" class="form--control" id="LBNCBR" name="LBNCBR" placeholder="@lang('')" required>
                    </div>
                    <div class="form-group col-sm-6" style="display: none">
                        <label for="city" class="col-form-label">@lang(' A list of necessary documents'):</label>
                        <input type="text" class="form--control" id="nDocuments" name="nDocuments" placeholder="@lang(' A list of necessary documents')">
                    </div>
                </div> --}}

                <div class="form-group row pt-3">
                    <div class="col-sm-12 text-center">
                        <button type="submit" id = "updateBtn" class="btn  btn--base btn-md w-100">@lang('Aggiorna Profilo')</button>
                    </div>
                </div>
            </form>
           </div>
           <div class = "pdfuploadpart" style = "padding-top:5vh; padding-bottom:10vh">
                <form action="{{ route('user.comDetailPdfStore') }}" method="post" enctype="multipart/form-data">
                @csrf
                    <div style = "display : flex">
                        {{-- <div class = "docDetail col-sm-5" style = "padding-left: 15px; padding-right:20px;">
                            <h3>Documenti caricati</h3>
                            <p>This is a list of documents. We don’t know how many documents user can adds. So, we want a little button to upload (Aggiungi Documento), so that add a new item to this list for every new document. The button can have a row of 12, as the previous button.</p>
                        </div> --}}
                        <div class="form-group row col-sm-12" style = "margin-right:0px; margin-left:0px">
                            <div class = "uploadDocPart" style = "width : 100%; height : auto; padding-right:13px; padding-left:15px">
                                <ul>
                                    <!-- <li class = "firstPdfItem"><a>* First Pdf Upload :</a> <a>First Pdf Upload</a></li>
                                    <li class = "secondPdfItem">* Second Pdf Upload : <a>Second Pdf Upload</a></li>
                                    <li class = "thirdPdfItem">* Third Pdf Upload : <a>Third Pdf Upload</a></li> -->
                                    <div class="col-md-12" style="height: 45px; margin-bottom : 10px">
                                        <div class="form-group" style="height: 45px">
                                            <div class="input-group" style="height: 45px">
                                                <span class="input-group-btn" style="height: 45px">
                                                  {{-- <span class="btn btn-link" style="padding-top: 10px" onclick="$(this).parent().find('input[type=file]').click();">Document1</span> --}}
                                                  <button type="button" class="btn btn-outline-primary btn-md w-10" style="height: 45px !important;margin-right:10px" onclick="$(this).parent().find('input[type=file]').click();">Select Doc 1</button>
                                                  <input name="file_1" id="file1" onchange="$(this).parent().parent().find('.form-control').html($(this).val().split(/[\\|/]/).pop());" style="display: none;" type="file">
                                                    @error('file')
                                                        <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                                                    @enderror
                                                </span>
                                                <span class="form-control" id = "pdfName_1" style="height : 45px"></span>
                                                {{-- <button onclick="checkDoc1()" type="button" class="btn btn-outline-secondary btn-md w-10" id="checkingDoc1button" style="height: 45px !important; margin-left:10px">Check Doc1</button> --}}
                                                <a type="button" class="btn btn-outline-secondary btn-md w-10 checkPdf1_link" style="height: 45px !important; margin-left:10px" download>Check Doc1</a>
                                            </div>
                                            {{-- <input type="file" name="file_1" placeholder="Choose first pdf file" id="file1">
                                                @error('file')
                                                <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                                                @enderror --}}
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="input-group" style="height: 45px">
                                                <span class="input-group-btn" style="height: 45px">
                                                    {{-- <span class="btn btn-link" style="padding-top: 10px" onclick="$(this).parent().find('input[type=file]').click();">Document2</span> --}}
                                                  <button type="button" class="btn btn-outline-primary btn-md w-10" style="height: 45px !important; margin-right:10px" onclick="$(this).parent().find('input[type=file]').click();">Select Doc 2</button>

                                                    <input name="file_2" id="file2" onchange="$(this).parent().parent().find('.form-control').html($(this).val().split(/[\\|/]/).pop());" style="display: none;" type="file">
                                                    @error('file')
                                                        <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                                                    @enderror
                                                </span>
                                                <span class="form-control" id = "pdfName_2" style="height : 45px"></span>
                                                <a type="button" class="btn btn-outline-secondary btn-md w-10 checkPdf2_link" style="height: 45px !important; margin-left:10px;" download>Check Doc2</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="input-group" style="height: 45px">
                                                <span class="input-group-btn" style="height: 45px">
                                                  <button type="button" class="btn btn-outline-primary btn-md w-10" style="height: 45px !important;margin-right:10px" onclick="$(this).parent().find('input[type=file]').click();">Select Doc 3</button>

                                                    {{-- <span class="btn btn-link" style="padding-top: 10px" onclick="$(this).parent().find('input[type=file]').click();">Document3</span> --}}
                                                    <input name="file_3" id="file3" onchange="$(this).parent().parent().find('.form-control').html($(this).val().split(/[\\|/]/).pop());" style="display: none;" type="file">
                                                    @error('file')
                                                        <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                                                    @enderror
                                                </span>
                                                <span class="form-control" id = "pdfName_3" style="height : 45px"></span>
                                                <a type="button" class="btn btn-outline-secondary btn-md w-10 checkPdf3_link" style="height: 45px !important; margin-left:10px" download>Check Doc3</a>
                                            </div>
                                        </div>
                                    </div>
                                </ul>
                            </div>
                            <div class="col-sm-12 text-center" style = "padding-top:10px">
                                <button type="submit" id="profilePdfSaveBtn" class="btn  btn--base btn-md w-100">@lang('Aggiungi Documento')</button>
                            </div>
                        </div>
                    </div>
                </form>
           </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
    $(document).ready(function(){
        
        $.ajax({
                type : 'POST',
                url : 'getprofiledata',
                data : {
                    "_token": "{{ csrf_token() }}",
                    "getprofiledata" : "getprofiledata"
                },
                success: function (data) {
                    console.log(data);
                    $('#companyName').val(data[0].companyName);
                    $('#headOffice').val(data[0].headOffice);
                    $('#phone_com').val(data[0].phone);
                    $('#Temail').val(data[0].traditionalemail);
                    $('#Lemail').val(data[0].legalemail);
                    $('#Invoice_unique_code').val(data[0].Invoice_unique_code);
                    $('#vat').val(data[0].vat);
                    $('#MainAtecoCode').val(data[0].MainAtecoCode);
                    // $('#nDocuments').val(data[0].nDocuments);
                    // $('#LBNCBR').val(data[0].LBNCBR);
                    $('#CCCR').val(data[0].CCCR);

                    var pdfstatus_1 = data[0].pdf1_path;
                    var pdfstatus_2 = data[0].pdf2_path;
                    var pdfstatus_3 = data[0].pdf3_path;

                    if (pdfstatus_1&&pdfstatus_2&&pdfstatus_3){
                        $.ajax({
                            type : 'POST',
                            url : 'checkpermission',
                            data : {
                                "_token": "{{ csrf_token() }}",
                                "permission" : "1"
                            }
                        })
                    }else {
                        $.ajax({
                            type : 'POST',
                            url : 'checkpermission',
                            data : {
                                "_token": "{{ csrf_token() }}",
                                "permission" : "0"
                            }
                        })
                    }

                }
            });
            $.ajax({
                type : 'POST',
                url : 'getpdfName',
                data : {
                    "_token": "{{ csrf_token() }}",
                    "getdocName" : "getdocName"
                },
                success: function (data){
                    var pdfstatus_1 = data[0].pdf1_name;
                    var pdfstatus_2 = data[0].pdf2_name;
                    var pdfstatus_3 = data[0].pdf3_name;

                    $('#pdfName_1').html(pdfstatus_1);
                    $('#pdfName_2').html(pdfstatus_2);
                    $('#pdfName_3').html(pdfstatus_3);

                    var pdf1_path = data[0].pdf1_path;
                    var pdf2_path = data[0].pdf2_path;
                    var pdf3_path = data[0].pdf3_path;
                    
                    console.log(pdf1_path, pdf2_path, pdf3_path);

                    $('.checkPdf1_link').attr("href","/" + pdf1_path);
                    $('.checkPdf2_link').attr("href","/" + pdf2_path);
                    $('.checkPdf3_link').attr("href","/" + pdf3_path);
                }
            });
    });
</script>
@endsection


