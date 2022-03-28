@extends($activeTemplate.'layouts.master')

@section('content')
    <div class="container">
        <div class="row ">
            <div class="col-md-12">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg--sec">
                        @lang('Cambia Password')
                    </div>
                    <div class="card-body">
                        <form action="" method="post" class="register">
                            @csrf
                            <div class="form-group">
                                <label for="password">@lang('Password attuale')</label>
                                <input id="password" type="password" class="form--control" placeholder="@lang('Password attuale')" name="current_password" required autocomplete="current-password">
                            </div>
                            <div class="form-group">
                                <label for="password">@lang('Nuova Password')</label>
                                <input id="password" type="password" class="form--control" placeholder="@lang('Nuova Password')" name="password" required autocomplete="current-password">
                            </div>
                            <div class="form-group">
                                <label for="confirm_password">@lang('Conferma Password')</label>
                                <input id="password_confirmation" type="password" placeholder="@lang('Conferma Password')" class="form--control" name="password_confirmation" required autocomplete="current-password">
                            </div>
                            <div class="form-group text-end">
                                <input type="submit" class="mt-3 btn btn--base btn-md" value="@lang('Cambia Password')">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

