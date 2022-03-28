@extends($activeTemplate.'layouts.master')
@section('content')

@if(!empty($selectUserData[0]->traditionalemail) & !empty($selectUserData[0]->pdf1_path) & !empty($selectUserData[0]->pdf2_path) & !empty($selectUserData[0]->pdf3_path))

    {{-- @if($selectUserData[0]->pdf1_path & $selectUserData[0]->pdf2_path & $selectUserData[0]->pdf3_path) --}}
    <div class="row">
      <div class="col-md-12">
          <div class="card border-1 shadow-sm p-4">
              <div class="card-header border-0 bg-transparent text-center">
                  <h5>@lang('Scegli una delle seguenti categorie.')</h5>
              </div>
              <div class="card-body">
                  <ul class="select-menu-list">
                      @forelse ($categories  as $key => $cat)
                      <li style="cursor: pointer;" class = "selectCategory" onclick="clicksubcat({{ $key }})">
                      {{-- <li class="has-drop-menu"> --}}
                        {{-- <a href="{{route('user.post.ad.location',[$type,$cat->name])}}"> --}}
                        <a>
                          <img src="{{getImage('assets/images/category/'.$cat->image)}}" alt="image" class="select-menu-img">
                          <span>{{__($cat->name)}}</span>
                        </a>
                        <ul class="drop-menu">
                          @foreach ($cat->subcategories->where('type',$flag) as $subcat)

                          <li hidden>
                            <a id="subcat_{{ $key }}" href="{{route('user.post.ad.location',[$type,$cat->name,$subcat->slug])}}">
                              <i class="las la-caret-right"></i>
                              <span>{{__($subcat->name)}}</span>
                            </a>
                          </li>
                          @endforeach

                        </ul>
                      </li>
                      @empty
                      <li class="text-center">@lang('No categories available')</li>
                      @endforelse
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
                    <h5>@lang('Benvenuto') {{auth()->user()->firstname}}!</h5>
                    <p class="mt-3">@lang('Questa è la tua area riservata per gestire le offerte di credito.')</p>
                </div>
                <div class="card-body" style="display: flex; text-align : center">
                    <h5>Per vendere o acquistare crediti è necessario completare il tuo profilo aziendale.</h5>
                </div>
            </div>
        </div>
    </div>
    @endif
@stop

@push('script-lib')
    <script src="{{asset($activeTemplateTrue.'js/axios.js')}}"></script>
    <script>
      function clicksubcat(key){
        console.log(key);
        document.getElementById("subcat_"+key).click();
      }
    </script>
@endpush
