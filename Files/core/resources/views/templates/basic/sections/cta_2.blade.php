  @php
      
    $content = getContent('cta.content',true)->data_values;
    $elements = getContent('cta.element',false,'',1);

  @endphp
  <!-- cta section start -->
  <section class="pt-50 pb-50 section--bg">
    <div class="container">
      <div class="row gy-4 justify-content-center">
        <div class="col-lg-4" onmouseover="showRegistrati()" onmouseout="normalImgRegistrati()">
            <div class="feature-item text-center">
                <div class="feature-item__icon" style="display: flex; justify-content:center">
                  <img class="registrati_em" src="assets/images/frontend/cta/vendicreditIcons/Registrati_outline.png" style = "width : 65px; height : 65px" alt="image">
                  <img class="registrati_fi" style="display: none;" src="assets/images/frontend/cta/vendicreditIcons/Registrati_filled.png" style = "width : 65px; height : 65px" alt="image">
                </div>
                <div class="feature-item__content">
                <h4 class="title" style="color: #002046; font-weight: bold"> 1. Registrati</h4>
                </div>
            </div><!-- feature-item end -->
        </div>
        <div class="col-lg-4" onmouseover="showCrea()" onmouseout="normalImgCrea()">
            <div class="feature-item text-center">
                <div class="feature-item__icon" style="display: flex; justify-content:center">
                  <img class="Crea_em" src="assets/images/frontend/cta/vendicreditIcons/Crea_un_annuncio_outline.png" style = "width : 65px; height : 65px" alt="image">
                  <img class="Crea_fi" style="display: none;" src="assets/images/frontend/cta/vendicreditIcons/Crea_un_annuncio_filled.png" style = "width : 65px; height : 65px" alt="image">
                </div>
                <div class="feature-item__content">
                <h4 class="title" style="color: #002046; font-weight: bold">2. Crea un annuncio</h4>
                </div>
            </div><!-- feature-item end -->
        </div>   
        <div class="col-lg-4" onmouseover="showVendi()" onmouseout="normalImgVendi()">
            <div class="feature-item text-center">
                <div class="feature-item__icon" style="display: flex; justify-content:center">
                  <img class="Vendi_em" src="assets/images/frontend/cta/vendicreditIcons/Vendi_il_tuo_credito_outline.png" style = "width : 65px; height : 65px" alt="image">
                  <img class="Vendi_fi" style="display: none;" src="assets/images/frontend/cta/vendicreditIcons/Vendi_il_tuo_credito_filled.png" style = "width : 65px; height : 65px" alt="image">
                </div>
                <div class="feature-item__content">
                <h4 class="title" style="color: #002046; font-weight: bold">3. Vendi il tuo credito</h4>
                </div>
            </div><!-- feature-item end -->
        </div>     
        
      </div>
      <div class="row mt-5">
        <div class="col-lg-12">
          <div class="vendi_inizia" style="">
            <div class="" style="text-align: center">
              <h2 class="title text-white">Inizia a vendere</h2>
              <h6 class="mt-2 text-white">Accedi e crea la tua prima offerta</h6>
              <a href="{{url($content->button_link)}}" class="btn mt-4" style="font-weight : bold;background-color: #90efdb">Vendi Crediti</a>
            </div> 
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- cta section end -->

  <script>
        function showRegistrati() {
          console.log("RRRRRRR");
          $(".registrati_em").css("display", "none");
          $(".registrati_fi").css("display", "block");
        }
        function normalImgRegistrati() {
          $(".registrati_em").css("display", "block");
          $(".registrati_fi").css("display", "none");
        }

        function showCrea() {
          $(".Crea_em").css("display", "none");
          $(".Crea_fi").css("display", "block");
        }
        function normalImgCrea() {
          $(".Crea_em").css("display", "block");
          $(".Crea_fi").css("display", "none");
        }

        function showVendi() {
          $(".Vendi_em").css("display", "none");
          $(".Vendi_fi").css("display", "block");
        }
        function normalImgVendi() {
          $(".Vendi_em").css("display", "block");
          $(".Vendi_fi").css("display", "none");
        }
      </script>