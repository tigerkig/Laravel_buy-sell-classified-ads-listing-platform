@extends($activeTemplate.'layouts.master')
@section('content')

        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg--sec d-flex justify-content-between">
                        Sending Request
                        <!-- {{ __($page_title) }} -->
                        <!-- <a href="{{route('user.buynewcredit.store') }}" class="btn btn-sm btn--base">
                            @lang('Buy Request Credit')
                        </a> -->
                    </div>
                    <div class="card-body">
                        <form  action="{{route('user.buynewcredit.store')}}"  method="post" enctype="multipart/form-data" onsubmit="return submitUserForm();">
                            @csrf
                            <div class="row">
                                <input type="hidden" name='product_id' value='{{ $product_id }}'/>
                                <div class="form-group col-md-6">
                                    <label for="name">@lang('Name')</label>
                                    <input type="text" name="contactName" value="{{@$user->firstname . ' '.@$user->lastname}}" class="form--control" placeholder="@lang('Enter Name')">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="email">@lang('Email address')</label>
                                    <input type="email"  name="contactEmail" value="{{@$user->email}}" class="form--control" placeholder="@lang('Enter your Email')">
                                </div>

                                <div class="form-group col-md-12">
                                    <label for="website">@lang('Subject')</label>
                                    <input type="text" name="subject" value="{{old('subject')}}" class="form--control" placeholder="@lang('Subject')">
                                </div>
                                {{-- <div class="col-12 form-group">
                                    <label for="inputMessage">@lang('Message')</label>
                                    <textarea name="message" id="inputMessage" rows="6" class="form--control">{{old('message')}}</textarea>
                                </div> --}}
                            </div>

                            {{-- <div class="row form-group ">
                                <div class="col-sm-9 file-upload">
                                    <label for="inputAttachments">@lang('Attachments')</label>
                                    <input type="file" name="attachments[]" id="inputAttachments" class="form-control mb-2" />
                                    <div id="fileUploadsContainer"></div>
                                    <p class="ticket-attachments-message text-muted">
                                        @lang('Allowed File Extensions'): .@lang('jpg'), .@lang('jpeg'), .@lang('png'), .@lang('pdf'), .@lang('doc'), .@lang('docx')
                                    </p>
                                </div>

                                <div class="form-group col-sm-1">
                                    <label for="" class="d-block">&nbsp;</label>
                                    <button type="button" class="btn btn--success btn-sm" onclick="extraTicketAttachment()">
                                        <i class="fa fa-plus"></i>
                                    </button>
                                </div>
                            </div> --}}

                            <div class="row form-group">
                                <div class="col-md-12 text-end">
                                    <button class="btn btn--success btn-sm" type="submit" id="recaptcha" ><i class="fa fa-paper-plane"></i>&nbsp;@lang('Acquista Crediti')</button>
                                    <button class=" btn btn--danger btn-sm" type="button" onclick="formReset()">&nbsp;@lang('Cancel')</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

@endsection


@push('script')
    <script>
        "use strict";
        function extraTicketAttachment() {
            $("#fileUploadsContainer").append('<input type="file" name="attachments[]" class="form-control my-3" required />')
        }
        function formReset() {
            window.location.href = "{{url()->current()}}"
        }
    </script>
@endpush
