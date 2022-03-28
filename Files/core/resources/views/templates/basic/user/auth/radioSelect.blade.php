@extends($activeTemplate.'layouts.frontend')
@section('content')

    
@php
    $signup = getContent('signup.content',true)->data_values;
    $elements = getContent('signup.element',false,'',1);
@endphp
    <section class="pt-100 pb-100">
        <div class="container">
          <div class="row justify-content-center">
            <div class=" col-xl-12">
              <div class="account-wrapper">
                <div class="left bg_img" style="background-image: url({{getImage('assets/images/frontend/signup/'.$signup->background_image,'1080x700')}});">
                  <div>
                    <h3 class="mb-3 text-white">{{__($signup->instruction_title)}}</h3>
                    <p class="text-white">{{__($signup->instruction_details)}}</p>
  
                    <ul class="square-list mt-4 text-white">
                        @foreach ($elements as $el)
                        <li>
                          <p>{{__($el->data_values->instruction)}}</p>
                        </li>
                        @endforeach
                    </ul>
                  </div>
                </div>
                <div class="right">
                  <h3 class="title">Select Item</h3>
                  <form action="{{ route('user.register') }}" method="GET" onsubmit="saveRadioV();">
                    @csrf
                   <div class="form-group select_area">
                        <div class="ant-radio-group ant-radio-group-outline" id="person">
                            <div class="ant-space ant-space-vertical" style="gap: 8px;">
                                <div class="ant-space-item" style="">
                                    <label class="ant-radio-wrapper ant-radio-wrapper-checked" style = "display : flex;">
                                        <span class="ant-radio ant-radio-checked" style = "margin-right : 10px; padding-top : 3px">
                                            <input type="radio" name="sign_radio" class="ant-radio-input" value="0" checked="">
                                            <span class="ant-radio-inner"></span>
                                        </span>
                                        <span>
                                            <h5>
                                                <font style="vertical-align: inherit;">
                                                    <font style="vertical-align: inherit;">I am a natural person</font>
                                                </font>
                                            </h5>
                                            <p>
                                                <font style="vertical-align: inherit;">
                                                    <font style="vertical-align: inherit;">I am a private customer who wants to sell or buy in a personal capacity (therefore not a company)</font>
                                                </font>
                                            </p>
                                        </span>
                                    </label>
                                </div>
                                <div class="ant-space-item" style="">
                                    <label class="ant-radio-wrapper" style = "display : flex;">
                                        <span class="ant-radio" style = "margin-right : 10px; padding-top : 3px">
                                            <input type="radio" name="sign_radio" class="ant-radio-input" value="1">
                                            <span class="ant-radio-inner"></span>
                                        </span>
                                        <span>
                                            <h5><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">I am a legal person</font></font>
                                            </h5>
                                            <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> I am a company or a professional who wants to sell or buy on a professional basis or on behalf of a company.</font>
                                                </font>
                                            </p>
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                      <button type="submit" class="btn btn--base btn-md w-100">Continue</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
 @endsection
@push('style')
<style type="text/css">
    .country-code .input-group-prepend .input-group-text{
        background: #fff !important;
    }
    .country-code select{
        border: none;
    }
    .country-code select:focus{
        border: none;
        outline: none;
    }
</style>
@endpush
@push('script')
    <script>
      "use strict";
        function submitUserForm() {
            var response = grecaptcha.getResponse();
            if (response.length == 0) {
                document.getElementById('g-recaptcha-error').innerHTML = '<span style="color:red;">@lang("Captcha field is required.")</span>';
                return false;
            }
            return true;
        }

        function saveRadioV{
            echo "RRRRRRR";
        }
        function verifyCaptcha() {
            document.getElementById('g-recaptcha-error').innerHTML = '';
        }
        @if($general->secure_password)
            $('input[name=password]').on('input',function(){
                var password = $(this).val();
                var width = 25;
                var capital = /[ABCDEFGHIJKLMNOPQRSTUVWXYZ]/;
                var capital = capital.test(password);
                if (!capital){
                    $('.capital').removeClass('d-none');
                }else{
                    width += 25;
                    $('.capital').addClass('d-none');
                }
                var number = /[123456790]/;
                var number = number.test(password);
                if (!number){
                    $('.number').removeClass('d-none');
                }else{
                    width += 25;
                    $('.number').addClass('d-none');
                }
                var special = /[`!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;
                var special = special.test(password);
                if (!special){
                    $('.special').removeClass('d-none');
                }else{
                    width += 25;
                    $('.special').addClass('d-none');
                }

                if (width == 25) {
                    var bg = 'red';
                    var msg = 'Too Week'
                }else if(width == 50){
                    var msg = 'Week'
                    var bg = '#D7A612';
                }else if(width == 75){
                    var msg = 'Medium'
                    var bg = '#5210BF';
                }else if(width == 100){
                    var msg = 'Strong'
                    var bg = 'green';
                }
                $('.progress-bar').attr('style',`width:${width}%;background:${bg};`);
                $('.progress-bar').text(msg);
            });
        @endif

    </script>
@endpush





<!-- @extends($activeTemplate.'layouts.frontend')
@section('content')

    
@php
    $signup = getContent('signup.content',true)->data_values;
    $elements = getContent('signup.element',false,'',1);
@endphp
    <section class="pt-100 pb-100">

    </section>

    
@endsection
@push('style')
<style type="text/css">
    .country-code .input-group-prepend .input-group-text{
        background: #fff !important;
    }
    .country-code select{
        border: none;
    }
    .country-code select:focus{
        border: none;
        outline: none;
    }
</style> -->
