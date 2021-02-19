module uim.components.demos.components.accordions;

import uim.components;

static this() {
	demoUIMComps.pages("basic/components/accordions", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Accordions - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMAccordion.toVue3("vue")~";"~
          UIMAccordionItem.toVue3("vue")~";"~
          UIMAccordionHeader.toVue3("vue")~";"~
          UIMAccordionButton.toVue3("vue")~";"~
          UIMAccordionCollapse.toVue3("vue")~";"~
          UIMAccordionButton.toVue3("vue")~";"~
          UIMAccordionButton.toVue3("vue")~";"~
          `vue.mount('#app');`]);
		} 
			
    override string content() {
/* 
auto defaultExample = demoUIMExample("default", "Default",
  H5Div(
    UIMAccordion("accordionDefault",  
      UIMAccordionItem(
        UIMAccordionHeader("headingDefaultOne", 
          UIMAccordionButton(["data-bs-toggle":"collapse", "data-bs-target":"#collapseDefaultOne", "aria-expanded":"true", "aria-controls":"collapseDefaultOne"], "Accordion Item #1")),
          UIMAccordionCollapse("collapseDefaultOne", ["collapse", "show"], ["aria-labelledby":"headingDefaultOne", "data-bs-parent":"#accordionDefault"], 
            UIMAccordionBody(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
            ))),
          UIMAccordionItem(
            UIMAccordionHeader("headingDefaultTwo",  
              UIMAccordionButton(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseDefaultTwo", "aria-expanded":"false", "aria-controls":"collapseDefaultTwo"], "Accordion Item #2")),
            UIMAccordionCollapse("collapseDefaultTwo", ["collapse"], ["aria-labelledby":"headingDefaultTwo", "data-bs-parent":"#accordionDefault"], 
              UIMAccordionBody(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."))),
          UIMAccordionItem(
            UIMAccordionHeader("headingDefaultThree",
              UIMAccordionButton(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseDefaultThree", "aria-expanded":"false", "aria-controls":"collapseDefaultThree"], "Accordion Item #3")),
            UIMAccordionCollapse("collapseDefaultThree", ["collapse"], ["aria-labelledby":"headingDefaultThree", "data-bs-parent":"#accordionDefault"], 
              UIMAccordionBody(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
              ))))
      ), `UIMAccordion("accordionDefault",  
      UIMAccordionItem(
        UIMAccordionHeader("headingDefaultOne", 
          UIMAccordionButton(["data-bs-toggle":"collapse", "data-bs-target":"#collapseDefaultOne", "aria-expanded":"true", "aria-controls":"collapseDefaultOne"], "Accordion Item #1")),
          UIMAccordionCollapse("collapseDefaultOne", ["collapse", "show"], ["aria-labelledby":"headingDefaultOne", "data-bs-parent":"#accordionDefault"], 
            UIMAccordionBody(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
            ))),
          UIMAccordionItem(
            UIMAccordionHeader("headingDefaultTwo",  
              UIMAccordionButton(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseDefaultTwo", "aria-expanded":"false", "aria-controls":"collapseDefaultTwo"], "Accordion Item #2")),
            UIMAccordionCollapse("collapseDefaultTwo", ["collapse"], ["aria-labelledby":"headingDefaultTwo", "data-bs-parent":"#accordionDefault"], 
              UIMAccordionBody(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."))),
          UIMAccordionItem(
            UIMAccordionHeader("headingDefaultThree",
              UIMAccordionButton(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseDefaultThree", "aria-expanded":"false", "aria-controls":"collapseDefaultThree"], "Accordion Item #3")),
            UIMAccordionCollapse("collapseDefaultThree", ["collapse"], ["aria-labelledby":"headingDefaultThree", "data-bs-parent":"#accordionDefault"], 
              UIMAccordionBody(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
              ))))`, 
              `<div class="accordion" id="accordionDefault">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingDefaultOne">
      <button type="button" class="accordion-button" data-bs-toggle="collapse" data-bs-target="#collapseDefaultOne" aria-expanded="true" aria-controls="collapseDefaultOne">
        Accordion Item #1
      </button>
    </h2>
    <div id="collapseDefaultOne" class="accordion-collapse collapse show" aria-labelledby="headingDefaultOne" data-bs-parent="#accordionDefault">
      <div class="accordion-body">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingDefaultTwo">
      <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseDefaultTwo" aria-expanded="false" aria-controls="collapseDefaultTwo">
        Accordion Item #2
      </button>
    </h2>
    <div id="collapseDefaultTwo" class="accordion-collapse collapse" aria-labelledby="headingDefaultTwo" data-bs-parent="#accordionDefault">
      <div class="accordion-body">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingDefaultThree">
      <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseDefaultThree" aria-expanded="false" aria-controls="collapseDefaultThree">
        Accordion Item #3
      </button>
    </h2>
    <div id="collapseDefaultThree" class="accordion-collapse collapse" aria-labelledby="headingDefaultThree" data-bs-parent="#accordionDefault">
      <div class="accordion-body">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
      </div>
    </div>
  </div>
</div>`);

auto flushExample = demoUIMExample("flush", "Flush",
  H5Div(
    UIMAccordion("accordionFlush", ["accordion-flush"], 
      UIMAccordionItem(
        UIMAccordionHeader("headingFlushOne",
          UIMAccordionButton(["data-bs-toggle":"collapse", "data-bs-target":"#collapseFlushOne", "aria-expanded":"true", "aria-controls":"collapseFlushOne"], "Accordion Item #1")),
        UIMAccordionCollapse("collapseFlushOne", ["collapse", "show"], ["aria-labelledby":"headingFlushOne", "data-bs-parent":"#accordionFlush"], 
          UIMAccordionBody(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
          ))),
      UIMAccordionItem(
        UIMAccordionHeader("headingFlushTwo", 
          UIMAccordionButton(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseFlushTwo", "aria-expanded":"false", "aria-controls":"collapseFlushTwo"], "Accordion Item #2")),
        UIMAccordionCollapse("collapseFlushTwo", ["collapse"], ["aria-labelledby":"headingFlushTwo", "data-bs-parent":"#accordionFlush"], 
          UIMAccordionBody(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
          ))),
      UIMAccordionItem(
        UIMAccordionHeader("headingFlushThree",
          UIMAccordionButton(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseFlushThree", "aria-expanded":"false", "aria-controls":"collapseFlushThree"], "Accordion Item #3")),
        UIMAccordionCollapse("collapseFlushThree", ["collapse"], ["aria-labelledby":"headingFlushThree", "data-bs-parent":"#accordionFlush"], 
          UIMAccordionBody(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
          ))))
    ), `UIMAccordion("accordionFlush", ["accordion-flush"], 
      UIMAccordionItem(
        UIMAccordionHeader("headingFlushOne",
          UIMAccordionButton(["data-bs-toggle":"collapse", "data-bs-target":"#collapseFlushOne", "aria-expanded":"true", "aria-controls":"collapseFlushOne"], "Accordion Item #1")),
        UIMAccordionCollapse("collapseFlushOne", ["collapse", "show"], ["aria-labelledby":"headingFlushOne", "data-bs-parent":"#accordionFlush"], 
          UIMAccordionBody(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
          ))),
      UIMAccordionItem(
        UIMAccordionHeader("headingFlushTwo", 
          UIMAccordionButton(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseFlushTwo", "aria-expanded":"false", "aria-controls":"collapseFlushTwo"], "Accordion Item #2")),
        UIMAccordionCollapse("collapseFlushTwo", ["collapse"], ["aria-labelledby":"headingFlushTwo", "data-bs-parent":"#accordionFlush"], 
          UIMAccordionBody(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
          ))),
      UIMAccordionItem(
        UIMAccordionHeader("headingFlushThree",
          UIMAccordionButton(["collapsed"], ["data-bs-toggle":"collapse", "data-bs-target":"#collapseFlushThree", "aria-expanded":"false", "aria-controls":"collapseFlushThree"], "Accordion Item #3")),
        UIMAccordionCollapse("collapseFlushThree", ["collapse"], ["aria-labelledby":"headingFlushThree", "data-bs-parent":"#accordionFlush"], 
          UIMAccordionBody(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."
          ))))`, `<div class="accordion accordion-flush" id="accordionFlush">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingFlushOne">
      <button type="button" class="accordion-button" data-bs-toggle="collapse" data-bs-target="#collapseFlushOne" aria-expanded="true" aria-controls="collapseFlushOne">
        Accordion Item #1
      </button>
    </h2>
    <div id="collapseFlushOne" class="accordion-collapse collapse show" aria-labelledby="headingFlushOne" data-bs-parent="#accordionFlush">
      <div class="accordion-body">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingFlushTwo">
      <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseFlushTwo" aria-expanded="false" aria-controls="collapseFlushTwo">
        Accordion Item #2
      </button>
    </h2>
    <div id="collapseFlushTwo" class="accordion-collapse collapse" aria-labelledby="headingFlushTwo" data-bs-parent="#accordionFlush">
      <div class="accordion-body">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingFlushThree">
      <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseFlushThree" aria-expanded="false" aria-controls="collapseFlushThree">
        Accordion Item #3
      </button>
    </h2>
    <div id="collapseFlushThree" class="accordion-collapse collapse" aria-labelledby="headingFlushThree" data-bs-parent="#accordionFlush">
      <div class="accordion-body">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.
      </div>
    </div>
  </div>
</div>`);
 */

      return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Basic", "Components"], "Accordions")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "components"),    
      listCompSections("basic", "components", "accordions"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
    dateInfo(created, changed),
    H5H2(["display-4"], "Accordions"),
    H5Hr,


  /*     defaultExample,
      flushExample */

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}