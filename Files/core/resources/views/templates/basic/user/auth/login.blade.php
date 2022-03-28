@extends($activeTemplate.'layouts.frontend')

@section('content')

@php
    $login = getContent('login.content',true)->data_values;
    $elements = getContent('login.element',false,'',1);
@endphp

<section class="pt-100 pb-100">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-9">
              <div class="account-wrapper">
                <div class="left bg_img" style="background-image: url({{getImage('assets/images/frontend/login/'.$login->background_image,'1080x700')}});">
                  <div>
                    <h3 class="mb-3 text-white">@lang('Accedi alla tua area riservata')</h3>
                    <p class="text-white">@lang('L’accesso alla tua area riservata di consentirà di svolgere le principali funzioni disponibili su
                      liquidami')</p>
                  <ul class="square-list mt-4 text-white">
                    <li>
                      <p>@lang('Gestione del profilo')</p>
                    </li>
                    <li>
                      <p>@lang('Creazione offerte di vendita dei crediti')</p>
                    </li>
                    <li>
                      <p>@lang('Acquistare crediti in vendita')</p>
                    </li>
                    <li>
                      <p>@lang('Caricare i documenti')</p>
                    </li>
                  </ul>
                  </div>
                </div>
                <div class="right">
                  <h3 class="title">@lang('Accedi in area riservata.')</h3>
                  <form method="POST" action="{{ route('user.login')}}"
                  onsubmit="return submitUserForm();">
                  @csrf
                    <div class="form-group">
                      <label>Nome Utente</label>
                      <input type="text" name="username" placeholder="@lang('Inserisci il tuo nome utente')" class="form--control" required value="{{old('username')}}">
                    </div>
                    <div class="form-group">
                      <label>@lang('Password')</label>
                      <input type="password" name="password" placeholder="@lang('Inserisci la tua password')" class="form--control" required>
                    </div>

                    @include($activeTemplate.'partials.custom-captcha')
                    <div class="form-group mt-4">
                         @php echo loadReCaptcha() @endphp
                    </div>
                   
                    <div class="form-group">
                      <button type="submit" class="btn btn--base btn-md w-100">@lang('Accedi')</button>
                    </div>
                  <div class="d-flex justify-content-between">
                    <p class="font-size--14px text-center">@lang('Non sei registrato?') <a class="text--base" href="{{route('user.register')}}">@lang('Crea un account')</a></p>
                    <p class="font-size--14px text-center"><a class="text--base" href="{{route('user.password.request')}}">@lang('Password dimenticata?').</a></p>
                  </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
</section>
@endsection

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
        function verifyCaptcha() {
            document.getElementById('g-recaptcha-error').innerHTML = '';
        }
    </script>
@endpush
