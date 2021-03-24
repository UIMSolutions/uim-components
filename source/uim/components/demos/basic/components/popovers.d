module uim.components.demos.components.popovers;

import uim.components;

@safe: 
static this() {
	demoUIMComps.pages("basic/components/popovers", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Popovers - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMButton.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content(STRINGAA reqParameters = null) { 
auto linkExample = demoUIMExample("link", "Link",
H5Div(
  H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 200px;&#10;}", "data-js":"var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}"], 
    H5H3(["text-muted"], "Link")),
    H5A(["href":"#", "data-bs-toggle":"popover", "data-bs-content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."], "Popover for link")
    ), ``, ``);

auto buttonExample = demoUIMExample("button", "Button",
H5Div(
  H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 200px;&#10;}", "data-js":"var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}"], 
    H5H3(["text-muted"], "Button"),
    H5Div(
      UIMButton(["btn-secondary"], ["data-bs-toggle":"popover", "data-bs-content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."],
      "Popover for button")))
      ), ``, ``);

auto link2Example = demoUIMExample("link2", "Link 2nd",
H5Div(
  H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 200px;&#10;}", "data-js":"var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}"], 
    H5H3(["text-muted"], "Link 2nd")),
    H5A(["href":"#", "data-bs-toggle":"popover", "data-bs-content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."], "Popover for link")
    ), ``, ``);

auto titleExample = demoUIMExample("title", "Title",
H5Div(
  H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 200px;&#10;}", 
    "data-js":"var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}"], 
    H5H3(["text-muted"], "Title"),
    H5Div(
      UIMButton(["btn-secondary"], ["data-bs-toggle":"popover", "title":"Popover title", 
      "data-bs-content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."], "Popover with title")))
      ), 
`H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 200px;&#10;}", 
  "data-js":"var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}"], 
  H5H3(["text-muted"], "Title"),
  H5Div(
    UIMButton(["btn-secondary"], ["data-bs-toggle":"popover", "title":"Popover title", 
    "data-bs-content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."], "Popover with title")))`, 
``); 

auto customExample = demoUIMExample("custom", "Custom HTML",
H5Div(
  H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 200px;&#10;}", "data-js":"var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}"],
    H5H3(["text-muted"], "Custom HTML"),
    H5Div(
      UIMButton(["btn-secondary"], ["data-bs-toggle":"popover", "data-bs-html":"true", 
      "title":"<span class='badge bg-primary'>Popover title</span>", "data-bs-content":"<strong>Popover</strong> <small>with</small> <em>custom HTML</em>"], "Popover with custom HTML")))
      ), ``, ``);

auto positionExample = demoUIMExample("position", "Position",
H5Div(
  H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 200px;&#10;}", 
  "data-js":"var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}"],
    H5H3(["text-muted"], "Position"),
    H5Div(
      UIMButton(["btn-secondary"], ["data-bs-toggle":"popover", "data-bs-placement":"top", "title":"Popover title", 
      "data-bs-content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."], "Popover on top"),
      UIMButton(["btn-secondary"], ["data-bs-toggle":"popover", "data-bs-placement":"right", "title":"Popover title", 
      "data-bs-content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."], "Popover on right"),
      UIMButton(["btn-secondary"], ["data-bs-toggle":"popover", "data-bs-placement":"bottom", "title":"Popover title", 
      "data-bs-content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."], "Popover on bottom"),
      UIMButton(["btn-secondary"], ["data-bs-toggle":"popover", "data-bs-placement":"left", "title":"Popover title", 
      "data-bs-content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."], "Popover on left")))
      ), ``, ``);

auto animationExample = demoUIMExample("animation", "Animation",
H5Div(
  H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 200px;&#10;}", 
  "data-js":"var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}"], 
    H5H3(["text-muted"], "Animation"),
    H5Div(
      UIMButton(["btn-secondary"], ["data-bs-toggle":"popover", "data-bs-animation":"false", "title":"Popover title", 
      "data-bs-content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."], "Popover without animation")))
      ), ``, ``);

auto hidingExample = demoUIMExample("hiding", "Showing and Hiding",
H5Div(
  H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 200px;&#10;}", 
  "data-js":"var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}"],
    H5H3(["text-muted"], "Delay"),
    H5P("Popover with delay in ms for showing and hiding"),
    H5Div(
      UIMButton(["btn-secondary"], ["data-bs-toggle":"popover", "data-bs-delay":"500", "title":"Popover title", 
      "data-bs-content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."], "Popover with delay")))
      ), ``, ``);

auto triggerExample = demoUIMExample("trigger", "Trigger",
H5Div(
  H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 200px;&#10;}", 
  "data-js":"var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}"], 
    H5H3(["text-muted"], "Trigger type"),
    H5P("Popover triggered by click and hover"),
    H5Div(
      UIMButton(["btn-secondary"], ["data-bs-toggle":"popover", "data-bs-trigger":"click hover", "title":"Popover title", 
      "data-bs-content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."], "Trigger by click and hover")))
      ), ``, ``);

auto dismissibleExample = demoUIMExample("dismissible", "Dismissible",
H5Div(
  H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 200px;&#10;}", 
  "data-js":"var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}"],
    H5H3(["text-muted"], "Dismissible"),
    H5P("Dismiss on next click outside of element"),
    H5Div(
      H5A(["btn", "btn-secondary"], ["href":"#!", "tabindex":"0", "role":"button", "data-bs-toggle":"popover", 
      "data-bs-trigger":"focus", "title":"Popover title", 
      "data-bs-content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."], "Dismiss on next click")))
      ), ``, ``);

auto disabledExample = demoUIMExample("disabled", "Disabled elements",
H5Div(
  H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 200px;&#10;}", 
  "data-js":"var popoverTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;popover&quot;]&apos;);&#10;for (var i = 0; i < popoverTriggerElements.length; i++) {&#10;&#9;new bootstrap.Popover(popoverTriggerElements[i])&#10;}"],
    H5H3(["text-muted"], "Disabled elements"),
    H5Div(
      H5Span(["d-inline-block"], ["data-bs-toggle":"popover", "title":"Popover title", 
      "data-bs-content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."],
        UIMButton(["btn-secondary"], ["disabled style":"pointer-events: none;"], "Popover for disabled element"))))
    ), ``, ``);

      return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Basic", "Components"], "Popovers")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "components"),    
      listCompSections("basic", "components", "popovers"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Popovers"),
      H5Hr,

      linkExample,
      buttonExample,
      link2Example,
      titleExample,
      customExample,
      positionExample,
      animationExample,
      hidingExample,
      triggerExample,
      dismissibleExample,
      disabledExample

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}