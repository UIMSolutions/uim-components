module uim.components.demos.components.carousels;

import uim.components;

@safe: 


@safe: 
static this() {
	demoUIMComps.pages("basic/components/carousels", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Carousels - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMButton.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content(STRINGAA reqParameters = null) { 
      return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Basic", "Components"], "Carousels")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "components"),    
      listCompSections("basic", "components", "carousels"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Carousels"),
      H5Hr,

/* demoUIMExample("slidesonly", "Slides Only",  
  H5Div(
    UIMCarousel("carouselSlidesOnly", ["slide"], ["data-bs-ride":"carousel"], 
      UIMCarouselInner(
        UIMCarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])), 
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
        UIMCarouselItem(          
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))))
  ), 
  `UIMCarousel("carouselSlidesOnly", ["slide"], ["data-bs-ride":"carousel"], 
  UIMCarouselInner(
    UIMCarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])), 
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
    UIMCarouselItem(          
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))))`, 
      `<div id="carouselSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/libs/uim-bootstrap/slide1.jpg" alt="First slide" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide2.jpg" alt="Second slide" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide3.jpg" alt="Third slide" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide4.jpg" alt="Fourth slide" class="d-block w-100">
    </div>
  </div>
</div>`),

demoUIMExample("controls", "Controls",  
  H5Div(
    UIMCarousel("carouselControls", ["slide"], ["data-bs-ride":"carousel"], 
      UIMCarouselInner(
        UIMCarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])),
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
        UIMCarouselItem(          
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))),
      UIMCarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
        H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")),
      UIMCarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
        H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")))
  ), 
  `UIMCarousel("carouselControls", ["slide"], ["data-bs-ride":"carousel"], 
  UIMCarouselInner(
    UIMCarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])),
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
    UIMCarouselItem(          
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))),
  UIMCarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
    H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")),
  UIMCarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
    H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")))`, 
    `<div id="carouselControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/libs/uim-bootstrap/slide1.jpg" alt="First slide" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide2.jpg" alt="Second slide" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide3.jpg" alt="Third slide" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide1.jpg" alt="Fourth slide" class="d-block w-100">
    </div>
  </div>
  <a href="#carouselControls" class="carousel-control-prev" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </a>
  <a href="#carouselControls" class="carousel-control-next" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </a>
</div>`), 

demoUIMExample("indicators", "Indicators",  
  H5Div(
    UIMCarousel("carouselIndicators", ["slide"], ["data-bs-ride":"carousel"], 
      UIMCarouselIndicators(
        UIMCarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
        UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
        UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
        UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])
      ),
      UIMCarouselInner(
        UIMCarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])),
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
        UIMCarouselItem(          
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))))
  ), 
  `UIMCarousel("carouselIndicators", ["slide"], ["data-bs-ride":"carousel"], 
  UIMCarouselIndicators(
    UIMCarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
    UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
    UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
    UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])
  ),
  UIMCarouselInner(
    UIMCarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])),
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
    UIMCarouselItem(          
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))))`, 
`<div id="carouselIndicators" class="carousel slide" data-bs-ride="carousel">
  <ol class="carousel-indicators">
    <li data-bs-target="#carouselIndicators" data-bs-slide-to="0" class="active"></li>
    <li data-bs-target="#carouselIndicators" data-bs-slide-to="1"></li>
    <li data-bs-target="#carouselIndicators" data-bs-slide-to="2"></li>
    <li data-bs-target="#carouselIndicators" data-bs-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/libs/uim-bootstrap/slide1.jpg" alt="First slide" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide2.jpg" alt="Second slide" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide3.jpg" alt="Third slide" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="../img/1200x600-info.png" alt="Fourth slide" class="d-block w-100">
    </div>
  </div>
</div>`),

demoUIMExample("captions", "Captions",  
  H5Div(
    UIMCarousel("carouselCaptions", ["slide"], ["data-bs-ride":"carousel"], 
      UIMCarouselInner(
        UIMCarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the first slide"))),
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the second slide"))),
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the third slide"))),
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the fourth slide")))))
  ), 
  `UIMCarousel("carouselCaptions", ["slide"], ["data-bs-ride":"carousel"], 
  UIMCarouselInner(
    UIMCarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the first slide"))),
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the second slide"))),
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the third slide"))),
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the fourth slide")))))`, 
        `<div id="carouselCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/libs/uim-bootstrap/slide1.jpg" alt="First slide" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Caption</h3>
        <p>This text describes the first slide</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide2.jpg" alt="Second slide" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Caption</h3>
        <p>This text describes the second slide</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide3.jpg" alt="Third slide" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Caption</h3>
        <p>This text describes the third slide</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide4.jpg" alt="Fourth slide" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Caption</h3>
        <p>This text describes the fourth slide</p>
      </div>
    </div>
  </div>
</div>`),

demoUIMExample("every", "Everything<p>Carousel with controls, indicators and captions</p>",  
  H5Div(
    UIMCarousel("carouselCaptions", ["slide"], ["data-bs-ride":"carousel"], 
       UIMCarouselIndicators(
        UIMCarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
        UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
        UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
        UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])),
      UIMCarouselInner(
        UIMCarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the first slide"))),
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the second slide"))),
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the third slide"))),
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the fourth slide")))),
      UIMCarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
        H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")),
      UIMCarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
        H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")))
  ), 
  `UIMCarousel("carouselCaptions", ["slide"], ["data-bs-ride":"carousel"], 
  UIMCarouselIndicators(
    UIMCarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
    UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
    UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
    UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])),
  UIMCarouselInner(
    UIMCarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the first slide"))),
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the second slide"))),
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the third slide"))),
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the fourth slide")))),
  UIMCarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
    H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")),
  UIMCarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
    H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")))`, 
    `<div id="carouselAll" class="carousel slide" data-bs-ride="carousel">
  <ol class="carousel-indicators">
    <li data-bs-target="#carouselAll" data-bs-slide-to="0" class="active"></li>
    <li data-bs-target="#carouselAll" data-bs-slide-to="1"></li>
    <li data-bs-target="#carouselAll" data-bs-slide-to="2"></li>
    <li data-bs-target="#carouselAll" data-bs-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/libs/uim-bootstrap/slide1.jpg" alt="First slide" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Caption</h3>
        <p>This text describes the first slide</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide2.jpg" alt="Second slide" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Caption</h3>
        <p>This text describes the second slide</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide3.jpg" alt="Third slide" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Caption</h3>
        <p>This text describes the third slide</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide4.jpg" alt="Fourth slide" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Caption</h3>
        <p>This text describes the fourth slide</p>
      </div>
    </div>
  </div>
  <a href="#carouselAll" class="carousel-control-prev" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </a>
  <a href="#carouselAll" class="carousel-control-next" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </a>
</div>`), 

demoUIMExample("dark", "Dark<p>Carousel with dark controls, indicators and captions</p>",  
  H5Div(
    UIMCarousel("carouselDark", ["slide"], ["data-bs-ride":"carousel"], 
      UIMCarouselIndicators(
        UIMCarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
        UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
        UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
        UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])),
      UIMCarouselInner(
        UIMCarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the first slide"))),
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the second slide"))),
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the third slide"))),
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]),
          H5Div(["carousel-caption"], 
            H5H3("Caption"),
            H5P("This text describes the fourth slide")))),
      UIMCarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
        H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")),
      UIMCarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
        H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")))
  ), 
  `UIMCarousel("carouselDark", ["slide"], ["data-bs-ride":"carousel"], 
  UIMCarouselIndicators(
    UIMCarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
    UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
    UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
    UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])),
  UIMCarouselInner(
    UIMCarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the first slide"))),
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the second slide"))),
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the third slide"))),
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]),
      H5Div(["carousel-caption"], 
        H5H3("Caption"),
        H5P("This text describes the fourth slide")))),
  UIMCarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
    H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")),
  UIMCarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
    H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")))`, 
    `<div id="carouselDark" class="carousel slide carousel-dark" data-bs-ride="carousel">
  <ol class="carousel-indicators">
    <li data-bs-target="#carouselDark" data-bs-slide-to="0" class="active"></li>
    <li data-bs-target="#carouselDark" data-bs-slide-to="1"></li>
    <li data-bs-target="#carouselDark" data-bs-slide-to="2"></li>
    <li data-bs-target="#carouselDark" data-bs-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/libs/uim-bootstrap/slide1.jpg" alt="First slide" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Caption</h3>
        <p>This text describes the first slide</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide2.jpg" alt="Second slide" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Caption</h3>
        <p>This text describes the second slide</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide3.jpg" alt="Third slide" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Caption</h3>
        <p>This text describes the third slide</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide4.jpg" alt="Fourth slide" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Caption</h3>
        <p>This text describes the fourth slide</p>
      </div>
    </div>
  </div>
  <a href="#carouselDark" class="carousel-control-prev" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </a>
  <a href="#carouselDark" class="carousel-control-next" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </a>
</div>`), 

demoUIMExample("fade", "Crossfade",  
  H5Div(
    UIMCarousel("carouselFade", ["slide"], ["data-bs-ride":"carousel"], 
      UIMCarouselInner(
        UIMCarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])), 
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
        UIMCarouselItem(          
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))))
  ), 
  `UIMCarousel("carouselFade", ["slide"], ["data-bs-ride":"carousel"], 
  UIMCarouselInner(
    UIMCarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])), 
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
    UIMCarouselItem(          
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))))`, 
      `<div id="carouselFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/libs/uim-bootstrap/slide1.jpg" alt="First slide" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide2.jpg" alt="Second slide" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide3.jpg" alt="Third slide" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide4.jpg" alt="Fourth slide" class="d-block w-100">
    </div>
  </div>
</div>`),

demoUIMExample("options", "Options<p>Carousel with options defined with data attributes</p>",  
  H5Div(
    UIMCarousel("carouselOptions", ["slide"], ["data-bs-ride":"carousel", "data-bs-pause":"false", "data-bs-wrap":"false", "data-bs-interval":"2000", "data-bs-keyboard":"false"], 
      UIMCarouselIndicators(
        UIMCarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
        UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
        UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
        UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])),
      UIMCarouselInner(
        UIMCarouselItem(["active"], 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])), 
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
        UIMCarouselItem(          
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
        UIMCarouselItem( 
          H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))),
      UIMCarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
        H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")),
      UIMCarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
        H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
        H5Span(["visually-hidden"], "Previous")))
  ), 
  `UIMCarousel("carouselOptions", ["slide"], ["data-bs-ride":"carousel", "data-bs-pause":"false", "data-bs-wrap":"false", "data-bs-interval":"2000", "data-bs-keyboard":"false"], 
  UIMCarouselIndicators(
    UIMCarouselIndicator(["active"], ["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"0"]),
    UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"1"]),
    UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"2"]),
    UIMCarouselIndicator(["data-bs-target":"#carouselIndicators", "data-bs-slide-to":"3"])),
  UIMCarouselInner(
    UIMCarouselItem(["active"], 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide1.jpg", "alt":"First slide"])), 
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide2.jpg", "alt":"Second slide"])),
    UIMCarouselItem(          
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide3.jpg", "alt":"Third slide"])), 
    UIMCarouselItem( 
      H5Image(["d-block", "w-100"], ["src":"/img/libs/uim-bootstrap/slide4.jpg", "alt":"Fourth slide"]))),
  UIMCarouselControlPrev(["href":"#carouselControls", "role":"button", "data-bs-slide":"prev"], 
    H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")),
  UIMCarouselControlNext(["href":"#carouselControls", "role":"button", "data-bs-slide":"next"],
    H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]), 
    H5Span(["visually-hidden"], "Previous")))`, 
    `<div id="carouselOptions" class="carousel slide" data-bs-ride="carousel" data-bs-pause="false" data-bs-wrap="false" data-bs-interval="2000" data-bs-keyboard="false">
  <ol class="carousel-indicators">
    <li data-bs-target="#carouselOptions" data-bs-slide-to="0" class="active"></li>
    <li data-bs-target="#carouselOptions" data-bs-slide-to="1"></li>
    <li data-bs-target="#carouselOptions" data-bs-slide-to="2"></li>
    <li data-bs-target="#carouselOptions" data-bs-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/libs/uim-bootstrap/slide1.jpg" alt="First slide" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide2.jpg" alt="Second slide" class="d-block w-100">
    </div>
    <div class="carousel-item" data-bs-interval="1000">
      <img src="/img/libs/uim-bootstrap/slide3.jpg" alt="Third slide" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="/img/libs/uim-bootstrap/slide4.jpg" alt="Fourth slide" class="d-block w-100">
    </div>
  </div>
  <a href="#carouselOptions" class="carousel-control-prev" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </a>
  <a href="#carouselOptions" class="carousel-control-next" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </a>
</div>`)
 */
     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}