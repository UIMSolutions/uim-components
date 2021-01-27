module uim.components.demos.components.tooltips;

import uim.components;

static this() {
	demoUIMComps.pages("components/tooltips", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Tooltips - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
auto linkExample = demoUIMExample("link", "Link",
  H5Div(
    H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", 
    "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"],
      H5H3(["text-muted"], "Link"),
      H5Div(
        H5A(["href":"#", "data-bs-toggle":"tooltip", "title":"Tooltip on top"], "Tooltip for link")),
        H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;", 
        "data-bs-toggle":"&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"],
          H5H3(["text-muted"], "Button"),
          H5Div(
            UIMButton(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Tooltip on top"], "Tooltip for button"))))
            ), ``, ``);

auto customExample = demoUIMExample("custom", "Custom HTML",
  H5Div(
    H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", 
    "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"], 
      H5H3(["text-muted"], "Custom HTML"),
      H5Div(
        UIMButton(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"<strong>Tooltip</strong> <small>with</small> <span class='badge bg-primary'>custom</span> <em>HTML</em>", "data-bs-html":"true"], "Tooltip with custom HTML")))
        ), ``, ``);

auto positionExample = demoUIMExample("position", "Position",
  H5Div(
    H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", 
    "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"], 
      H5H3(["text-muted"], "Position"),
      H5Div(
        UIMButton(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Tooltip on top", "data-bs-placement":"top"], "Tooltip on top"),
        UIMButton(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Tooltip on right", "data-bs-placement":"right"], "Tooltip on right"),
        UIMButton(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Tooltip on bottom", "data-bs-placement":"bottom"], "Tooltip on bottom"),
        UIMButton(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Tooltip on left", "data-bs-placement":"left"], "Tooltip on left"))),
        ), ``, ``);

auto animationExample = demoUIMExample("animation", "Animation",
  H5Div(
    H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", 
    "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"], 
      H5H3(["text-muted"], "Animation"),
      H5Div(
        UIMButton(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Tooltip without animation", "data-bs-animation":"false"], "Tooltip without animation")))
        ), ``, ``);

auto hidingExample = demoUIMExample("hiding", "Hiding",
  H5Div(
    H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", 
    "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"], 
      H5H3(["text-muted"], "Delay"),
      H5P("Tooltip with delay in ms for showing and hiding"),
      H5Div(
        UIMButton(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Tooltip with delay", "data-bs-delay":"500"], "Tooltip with delay")))
        ), ``, ``);

auto triggerExample = demoUIMExample("trigger", "Trigger type",
  H5Div(
    H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", 
    "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"], 
      H5H3(["text-muted"], "Trigger type"),
      H5P("Tooltip triggered by click only"),
      H5Div(
        UIMButton(["btn-secondary"], ["data-bs-toggle":"tooltip", "title":"Triggered by click", "data-bs-trigger":"click"], "Trigger by click")))
        ), ``, ``);

auto disabledExample = demoUIMExample("disabled", "Disabled elements",
  H5Div(
    H5Div(["mb-5"], ["data-css":"a, button {&#10;&#9;margin-top: 50px;&#10;}", 
    "data-js":"var tooltipTriggerElements = document.querySelectorAll(&apos;[data-bs-toggle=&quot;tooltip&quot;]&apos;);&#10;for (var i = 0; i < tooltipTriggerElements.length; i++) {&#10;&#9;new bootstrap.Tooltip(tooltipTriggerElements[i])&#10;}"],
      H5H3(["text-muted"], "Disabled elements"),
      H5Div(
        H5Span(["d-inline-block"], ["tabindex":"0", "data-bs-toggle":"tooltip", "title":"Tooltip for disabled element"], 
          UIMButton(["btn-secondary"], ["disabled":"disabled", "style":"pointer-events: none;"], "Tooltip for disabled element"))))
          ), ``, ``);

      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/components"], 
    ["UI Manufaktur", "Demos", "uim-components", "Components"], "Tooltips")),

  UIMContainer(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Tooltips"),
      H5Hr,

      linkExample, 
      customExample, 
      positionExample, 
      animationExample, 
      hidingExample, 
      triggerExample, 
      disabledExample

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}