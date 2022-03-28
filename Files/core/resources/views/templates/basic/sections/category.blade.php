@php
    $content = getContent('category.content',true)->data_values;
    $categories = \App\Models\Category::where('status',1)->inRandomOrder()->take(8)->get();
@endphp

    <!-- category section start -->
    <section class="pb-50 section--bg">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="category-wrapper">
                <div class="row justify-content-center">
                  <div class="col-xl-9 col-lg-6">
                    {{-- <h2 class="section-title text-center">{{__($content->heading)}}</h2> --}}
                    <h3 class="section-title text-center" style="font-weight: bold !important; color : #002046" >Quali crediti puoi vendere?</h3>
                    <h3 style="text-align: center; color : #002046">Su Liquidami accettiamo tutti i crediti maturati dai bonus edilizi</h3>
                    
                  </div>
                </div><!-- row end -->
                <div class="row mt-4 gy-4 gx-3 justify-content-center">
                  @foreach ($categories as $key => $cat)
                    <div class="col-lg-2 col-md-3 col-sm-4 col-6" onmouseover="show('{{__($key)}}')" onmouseout="normalImg('{{__($key)}}')">
                      <div class="category-item has--link">
                        <a data-toggle="tooltip" title="{{__($cat->name)}}" href="{{route("ads")}}{{queryBuild('category',$cat->slug)}}" class="item--link"></a>
                        <div class="category-item__thumb">
                          <img src="{{getImage('assets/images/category/'.$cat->image,'512x512')}}" alt="image" class = "firstM_{{__($key)}}" >
                          <img src="{{getImage('assets/images/category/categoryImage/'.$cat->image,'512x512')}}" alt="image" class = "secondM_{{__($key)}}"  style = "display : none">
                        </div>
                        <div class="category-item__content">
                          <h6 class="title">{{__($cat->name)}}</h6>
                        </div>
                      </div><!-- category-item end -->
                    </div>
                  @endforeach
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- category section end -->
      <script>
        function show(id) {
          $(".firstM_"+id).css("display", "none");
          $(".secondM_"+id).css("display", "block");
        }
        function normalImg(ci) {
          $(".firstM_"+ci).css("display", "block");
          $(".secondM_"+ci).css("display", "none");
        }

      </script>