@foreach ($featuredAds as $item)
@php
  $slug = $item->subcategory->slug;
@endphp
 <div class="list-item list-item-featured list--style">
    <div class="list-item__thumb">
      <span class="featured--ticky">@lang('Featured')</span>
      <a href="{{route('ad.details',$item->slug)}}"><img src="{{getImage('assets/images/item_image/'.$item->prev_image,'275x200')}}" alt="image"></a>
    </div>
    <div class="list-item__wrapper">
      <div class="list-item__content">
        <a href="{{url('/ads/')."/$slug"."?location=".request()->input('location')}}" class="category text--base"><i class="las la-tag"></i> {{$item->category->name}}</a>
        <h6 class="title"><a href="{{route('ad.details',$item->slug)}}">{{__($item->startDate)}}</a></h6>
        <ul class="list-item__meta mt-1">
          <li>
            <i class="las la-clock"></i>
            <span>{{diffForHumans($item->created_at)}}</span>
          </li>
          <li>
            <i class="las la-user"></i>
            <a href="javascript:void(0)">{{$item->user->fullname}}</a>
          </li>
          <li>
            <i class="las la-map-marker"></i>
            <span>{{$item->district}}, {{$item->division}}</span>
          </li>
        </ul>
      </div>
      <div class="list-item__footer">
        <?php
          $firstDate = $item->startDate;
          $explodFirstdate = explode("-",$firstDate);
          $firstYear = $explodFirstdate[0];
          $nowdate = date("Y");
          $discountYear = $nowdate - $firstYear;
          $firstPrice = $item->price;

          // if($discountYear==0){
          //   echo '<div class="price" id = "firstVal">' . $general->cur_sym . getAmount($ad->price) . '</div>';
          // }else{
            // $discountPrice =  $firstPrice*(1-0.15*$discountYear);

            $discountPrice =  $firstPrice*0.9;
            echo '<div class="price" id = "firstVal" style = "text-decoration: line-through; color : #002046 !important; font-size : 20px">' . $general->cur_sym . getAmount($item->price) . '</div>';
            echo '<div class="price" id = "discount_price" style = "color : #002046 !important">' . $general->cur_sym . $discountPrice . '</div>';
          // }
          echo $user->username;
        ?>
        @if(!empty($user->traditionalemail) & !empty($user->pdf1_path) & !empty($user->pdf2_path) & !empty($user->pdf3_path))
          <a href="{{route('ad.details',$item->slug)}}" class="btn btn-sm btn--base mt-2" style="background-color: #002046 !important">@lang('View Details')</a>
        @else
          <a href="{{route('user.ad.list')}}" class="btn btn-sm btn--base mt-2" style="background-color: #002046 !important">@lang('View Details')</a>
        @endif
      </div>
    </div>
  </div>
@endforeach

 @push('style')
      
  <style>
    .list-item-featured{
        background-color: #002046;
      }
  </style>

  @endpush