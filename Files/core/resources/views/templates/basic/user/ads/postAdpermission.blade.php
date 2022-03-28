@extends($activeTemplate.'layouts.master')
@section('content')

{{-- @if($selectUserData[0]->pdf1_path & $selectUserData[0]->pdf2_path & $selectUserData[0]->pdf3_path) --}}
@if(!empty($selectUserData[0]->traditionalemail) & !empty($selectUserData[0]->pdf1_path) & !empty($selectUserData[0]->pdf2_path) & !empty($selectUserData[0]->pdf3_path))
    <div class="row" id = "">
        <div class="col-md-12">
            <div class="card border-1 shadow-sm p-4">
                <div class="card-header border-0 bg-transparent text-center">
                    <h5>@lang('Benvenuto') {{auth()->user()->firstname}}! @lang('Inizia il processo di pubblicazione.')</h5>
                    <p class="mt-3">@lang('Questa è la tua area riservata per gestire le offerte di credito.')</p>
                </div>
                <div class="card-body">
                    <ul class="list-group">
                        <li class="list-group-item d-flex justify-content-between"><a class="text--base" href="{{route('user.post.ad.category','sell')}}">@lang('Bonus Facciate')</a> <i class="las la-angle-right mt-1"></i></li>
                        <li class="list-group-item d-flex justify-content-between"><a class="text--base" href="{{route('user.post.ad.category','rent')}}">@lang('Bonus Ristrutturazione')</a> <i class="las la-angle-right mt-1"></i></li>
                        <li class="list-group-item d-flex justify-content-between"><a class="text--base" href="{{route('user.post.ad.category','rent')}}">@lang('Sisma Bonus')</a> <i class="las la-angle-right mt-1"></i></li>
                        <li class="list-group-item d-flex justify-content-between"><a class="text--base" href="{{route('user.post.ad.category','rent')}}">@lang('Superbonus 110%')</a> <i class="las la-angle-right mt-1"></i></li>
                        <li class="list-group-item d-flex justify-content-between"><a class="text--base" href="{{route('user.post.ad.category','rent')}}">@lang('EcoBonus')</a> <i class="las la-angle-right mt-1"></i></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    @else
    <div class="row" id = "trysign">
        <div class="col-md-12">
            <div class="card border-1 shadow-sm p-4">
                <div class="card-header border-0 bg-transparent text-center">
                    <h5>@lang('Welcome') {{auth()->user()->firstname}}! @lang('Let\'s post an Credit.')</h5>
                    <p class="mt-3">@lang('Questa è la tua area riservata per gestire le offerte di credito.')</p>
                </div>
                <div class="card-body">
                    <h5>Per vendere o acquistare crediti è necessario completare il tuo profilo aziendale.</h5>
                </div>
            </div>
        </div>
    </div>
    @endif
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

@stop
