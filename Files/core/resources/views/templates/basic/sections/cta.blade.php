  @php
      
    $content = getContent('cta.content',true)->data_values;
    $elements = getContent('cta.element',false,'',1);

  @endphp
  <!-- cta section start -->
  <section class="pt-50 pb-50 section--bg">
    <div class="container">
      <div class="row gy-4 justify-content-center">
     @foreach ($elements as $key => $el)
        <div class="col-lg-4" onmouseover="show('{{__($key)}}')" onmouseout="normalImg('{{__($key)}}')">
            <div class="feature-item text-center">
                <div class="feature-item__icon" style = "display : flex; justify-content: center;">
                  <img src="{{getImage("assets/images/frontend/cta/".$el->data_values->icon_image,'65x65')}}" alt="image" class = "firstM_{{__($key)}}">
                  <img src="{{getImage("assets/images/frontend/cta/vendicreditIcons/".$el->data_values->icon_image,'65x65')}}" alt="image" style = "display : none" class = "secondM_{{__($key)}}">

                </div>
                <div class="feature-item__content">
                <h4 class="title" style="color : #002046; font-weight : bold">{{__($el->data_values->title)}}</h4>
                <p class="mt-3"><?php echo $el->data_values->short_details;?></p>
                </div>
            </div><!-- feature-item end -->
        </div>
      @endforeach
        
      </div>
      <div class="row justify-content-center mt-5">
        <div class="col-lg-12">
          <div class="cta-wrapper" style="background-image: url(assets/images/frontend/cta/ctabanner.png);background-position: center;
          background-size: cover;">
            <div class="cta-wrapper__inner text-center">
              <h2 class="title text-white" style="font-weight: bold">{{__($content->heading)}}</h2>
              <h6 class="mt-2 text-white" style="color: #90efdb !important">{{__($content->sub_heading)}}</h6>
              <a href="{{url($content->button_link)}}" class="btn btn-info mt-4" style="background-color: #90efdb !important">{{__($content->button_text)}}</a>
            </div> 
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- cta section end -->
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