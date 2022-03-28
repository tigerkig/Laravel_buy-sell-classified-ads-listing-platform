@extends('templates.basic.layouts.frontend')

@section('content')
@php
    $login = getContent('login.content',true)->data_values;
@endphp
<section class="pt-100 pb-100">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-9">
          <div class="account-wrapper">
            <div class="left bg_img" style="background-image: url({{getImage('assets/images/frontend/login/'.$login->background_image,'1080x700')}});">
                <div>
                    <h3 class="mb-3 text-white">@lang('Recupera Password')</h3>
                    <div style="color: aliceblue">@lang('Inserisci i tuoi dati e resetta la tua password. Riceverai un’email con le istruzioni da seguire per impostare una nuova password')</div>
                </div>
            </div>
            <div class="right">
              <h3 class="title">@lang('Recupera la tua Password')</h3>
              <form method="POST" action="{{ route('user.password.email') }}">
                @csrf
                <div class="form-group">
                    <label>@lang('Recupera tramite:')</label>
                    <select class="form--control" name="type">
                        <option value="email">@lang('Indirizzo email')</option>
                        <option value="username">@lang('Username')</option>
                    </select>
                </div>
                <div class="form-group">
                  <label class="my_value"></label>
                  <input type="text"name="value" value="{{ old('value') }}" class="form--control" required>
                </div>

                <div class="form-group">
                  <button type="submit" class="btn btn--base btn-md w-100">@lang('Resetta la password')</button>
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
    'use strict'
    $('select[name=type]').on('change',function(){
        $('.my_value').text($('select[name=type] :selected').text());
    }).change();
</script>
@endpush
