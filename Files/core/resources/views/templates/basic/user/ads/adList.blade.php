@extends($activeTemplate.'layouts.master')
@section('content')
{{-- @if($selectUserData[0]->pdf1_path & $selectUserData[0]->pdf2_path & $selectUserData[0]->pdf3_path) --}}
@if(!empty($selectUserData[0]->traditionalemail) & !empty($selectUserData[0]->pdf1_path) & !empty($selectUserData[0]->pdf2_path) & !empty($selectUserData[0]->pdf3_path))
  <div class="row">
    <div class="col-lg-12 d-flex justify-content-end">
        <form action="">
          <div class="input-group">
            <input class="form-control outline-0 shadow-none" value="{{$search??''}}" type="text" name="search" placeholder="@lang('Cerca per titolo')" required>
              <button type="submit" class="input-group-text bg--sec"><i class="las la-search"></i></button>
          </div>
        </form>
    </div>
      <div class="col-lg-12">
        <div class="table-responsive--md">
          <table class="table custom--table">
            <thead>
              <tr>
                <th>@lang('Offerta ID')</th>
                <th>@lang('Offerta numero')</th>
                <th>@lang('Pubblicata il')</th>
                <th>@lang('Stato')</th>
                <th>@lang('Promuovi')</th>
                <th>@lang('Azioni')</th>
              </tr>
            </thead>
            <tbody>
              @forelse ($ads as $ad)
              <tr>
                  <td>
                    <a href="{{route('user.ad.edit',$ad->id)}}" class="icon-btn btn--primary">{{shortDescription($ad->id,30)}}</a>
                  </td>
                  <td data-label="@lang('Crediti title')">
                    <div class="table-item">
                      <div class="thumb">
                        <img src="{{getImage('assets/images/item_image/'.$ad->prev_image,'200x200')}}" alt="image">
                      </div>
                      <div class="content">
                  
                        <h6 class="title"><a data-toggle="tooltip" title="Crediti Value" target="_blank" href="{{route('ad.details',$ad->slug)}}">{{shortDescription($ad->price,30)}}€</a></h6>
                      </div>
                    </div>
                  </td>
                  <td data-label="@lang('Date')">{{showDateTime($ad->created_at,'d M Y')}}</td>
                  <td data-label="@lang('Status')">
                      @if ($ad->status == 1)
                      <span class="badge badge--success">@lang('Active')</span>
                      @else
                      <span class="badge badge--warning">@lang('Inactive')</span>
                      @endif
                  </td>

                  <td data-label="@lang('Promote')">
                    @if ($ad->featured == 1)
                        @lang('Promoted')
                    @elseif($ad->promoted())
                        @lang('Richiesta inviata')
                    @else
                      <a href="{{route('user.promote.ad.packages',$ad->slug)}}" data-toggle="tooltip" title ="@lang('Promote this ad')" class="icon-btn btn--success"><i class="las la-bullhorn"></i></a>
                    @endif
                  </td>
                  <td data-label="Action">
                    <a href="{{route('user.ad.edit',$ad->id)}}" class="icon-btn btn--primary"><i class="las la-edit"></i></a>
                    <a href="javascript:void(0)" data-route="{{route('user.ad.remove',$ad->id)}}" class="icon-btn btn--danger delete"><i class="las la-trash-alt"></i></a>
                  </td>
                </tr>
                @empty
                <tr><td colspan="12" class="text-center">@lang('No Crediti')</td></tr>
              @endforelse

            </tbody>
          </table>
        </div>
      </div>
      {{paginateLinks($ads,'partials.paginate')}}
    </div>
      @else
      <div class="row" id = "trysign">
          <div class="col-md-12">
              <div class="card border-1 shadow-sm p-4">
                  <div class="card-header border-0 bg-transparent text-center">
                      <h5>@lang('Benvenuto') {{auth()->user()->firstname}}!</h5>
                      <p class="mt-3">@lang('Questa è la tua area riservata per gestire le offerte di credito.')</p>
                  </div>
                  <div class="card-body" style="display:flex; text-align: center !important">
                      <h5>Per vendere o acquistare crediti è necessario completare il tuo profilo aziendale.</h5>
                  </div>
              </div>
          </div>
      </div>
    @endif

@endsection
