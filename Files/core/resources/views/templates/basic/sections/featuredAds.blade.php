   @php
       $content = getContent('featuredAds.content',true)->data_values;
       $featured = \App\Models\AdList::where('status',1)->where('featured',1)->where('expired_date','>',\Carbon\Carbon::now()->toDateString())->inRandomOrder()->get();
   @endphp
   <!-- feature section start -->

   <section class="pt-50 pb-25">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="section-header">
            <h3 class="section-titlee" style="color: #002046; font-weight : bold !important">{{__($content->heading)}}</h3>
          </div>
        </div>
      </div><!-- row end -->
      <div class="feature-ad-slider">
        <?php $__currentLoopData = $featured; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
            $slug = $item->subcategory->slug;
          ?>
        <div class="single-slide">
          <div class="list-item feature-ad">
            <div class="list-item__thumb">
              <a href="<?php echo e(route('ad.details',$item->slug)); ?>"><img src="<?php echo e(getImage('assets/images/item_image/'.$item->prev_image,'292x230')); ?>" alt="image"></a>
            </div>
            <div class="list-item__wrapper">
              <div class="list-item__content">
                <a href="<?php echo e(url('/items/')."/$slug"."?location=".request()->input('location')); ?>" class="category text--base"><i class="las la-tag"></i>
                    <?php
                        // echo e(__($item->subcategory->name));
                        $firstDate = $item->startDate;
                        $explodFirstdate = explode("-",$firstDate);
                        $firstYear = $explodFirstdate[0];
                        echo $firstYear;
                    ?>
                </a>
                <h5 class="title"><a data-toggle="tooltip" title="<?php echo e($item->title); ?>" href="<?php echo e(route('ad.details',$item->slug)); ?>">
                        {{-- <?php echo e(shortDescription($item->title,35));?> --}}
                        {{$item->subcategory->category->name}}
                    </a>
                </h5>
              </div>
              <div class="list-item__footer mt-2">
                <?php
                    $firstDate = $item->startDate;
                    $explodFirstdate = explode("-",$firstDate);
                    $firstYear = $explodFirstdate[0];
                    $nowdate = date("Y");
                    $discountYear = $nowdate - $firstYear;
                    $firstPrice = $item->price;

                    // if($discountYear==0){
                    // echo '<div class="price" id = "firstVal">' . $general->cur_sym . getAmount($item->price) . '</div>';
                    // }else{
                    // $discountPrice =  $firstPrice*(1-0.15*$discountYear);

                    $discountPrice =  $firstPrice*0.9;

                    echo '<div class="price" id = "firstVal" style = "text-decoration: line-through; font-size : 20px; color : #002046 !important">' . $general->cur_sym . getAmount($item->price) . '</div>';
                    echo '<div class="price" id = "discount_price" style = "color : #002046 !important">' . $general->cur_sym . $discountPrice . '</div>';
                    // }
                ?>
                {{-- <div class="price"><?php echo e($general->cur_sym); ?><?php echo e(getAmount($item->price)); ?></div>
                <div class="price"><?php echo e($general->cur_sym); ?><?php echo e(getAmount($item->price)); ?></div> --}}
              </div>
            </div>
          </div><!-- list-item end -->
        </div><!-- single-slide end -->

        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

      </div>
    </div>
   </section>


      <!-- feature section end -->
