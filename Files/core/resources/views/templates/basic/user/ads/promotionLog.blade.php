@extends($activeTemplate.'layouts.master')
@section('content')
{{-- @if($selectUserData[0]->pdf1_path & $selectUserData[0]->pdf2_path & $selectUserData[0]->pdf3_path) --}}
@if(!empty($selectUserData[0]->traditionalemail) & !empty($selectUserData[0]->pdf1_path) & !empty($selectUserData[0]->pdf2_path) & !empty($selectUserData[0]->pdf3_path))
  <div class="row">
    <div class="col-lg-12">
      <div class="col-lg-12 d-flex justify-content-end">
        <form action="">
          <div class="input-group">
            <input class="form-control outline-0 shadow-none" value="{{$search??''}}" type="text" name="search" placeholder="@lang('Search by title')" required>
              <button type="submit" class="input-group-text bg--sec"><i class="las la-search"></i></button>
          </div>
        </form>
      </div>
      <div class="table-responsive--md">
        <table class="table custom--table">
          <thead>
            <tr>
                <th scope="col">@lang('Credit Title')</th>
                {{-- <th scope="col">@lang('Package Name')</th> --}}
                <th scope="col">@lang('Validity')</th>
                {{-- <th scope="col">@lang('Amount')</th> --}}
                <th scope="col">@lang('Status')</th>
                <th scope="col">@lang('State')</th>

            </tr>
          </thead>
          <tbody>
            @forelse($requests as $request)
                <tr>
                    <td data-label="@lang('Ad Title')">
                      <span class="text--small badge font-weight-normal badge--success">{{$request->package->name}}</span>
                        {{-- <a target="_blank" data-toggle="tooltip" title="{{$request->ad->title}}" href="{{route('ad.details',$request->ad->slug)}}">{{Str::limit($request->ad->title,40)}}</a> --}}
                    </td>

                    {{-- <td data-label="@lang('Package Name')"><span class="text--small badge font-weight-normal badge--success">{{$request->package->name}}</span></td> --}}
                    <td data-label="@lang('Validity')"><span class="badge badge-pill bg--primary">{{$request->package->validity}} @lang('days')</span></td>
                    {{-- <td data-label="@lang('Amount')"><span class="text--small badge font-weight-normal badge--success">{{getAmount($request->package->price)}} {{$general->cur_text}}</span></td> --}}


                    <td data-label="@lang('Status')">
                        @if ($request->status == 1)
                            <span class="text--small badge font-weight-normal badge--success">@lang('Accepted')</span>
                        @elseif($request->status == 0)
                        <span class="text--small badge font-weight-normal badge--warning">@lang('Pending')</span>
                        @else
                        <span class="text--small badge font-weight-normal badge--danger">@lang('Rejected')</span>
                        @endif
                    </td>

                    <td data-label="@lang('Status')">
                        @if ($request->running == 1)
                            <span class="text--small badge font-weight-normal badge--primary">@lang('Running')</span>
                        @else
                        <span class="text--small badge font-weight-normal badge--dark">@lang('Not Running')</span>
                        @endif
                    </td>

                </tr>
                @empty
                    <tr>
                        <td class="text-muted text-center" colspan="100%">{{ $empty_message }}</td>
                    </tr>
                @endforelse

          </tbody>
        </table>
      </div>
    </div>
    {{paginateLinks($requests,'partials.paginate')}}
  </div>
    @else
    <div class="row" id = "trysign">
        <div class="col-md-12">
            <div class="card border-1 shadow-sm p-4">
                <div class="card-header border-0 bg-transparent text-center">
                    <h5>@lang('Benvenuto') {{auth()->user()->firstname}}!</h5>
                    <p class="mt-3">@lang('Questa è la tua area riservata per gestire le offerte di credito.')</p>
                </div>
                <div class="card-body" style="text-align: center">
                    <h5>Per vendere o acquistare crediti è necessario completare il tuo profilo aziendale.</h5>
                </div>
            </div>
        </div>
    </div>
    @endif


@endsection
