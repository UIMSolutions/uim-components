module uim.components.demos.components.toasts;

import uim.components;

@safe: 
static this() {
	demoUIMComps.pages("basic/components/toasts", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Toasts - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMButton.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content(STRINGAA reqParameters = null) { 

auto defaultExample = demoUIMExample("default", "Default",
  H5Div(
    H5Div(["mb-5"], ["data-js":"var toastElements = document.querySelectorAll(&apos;.toast&apos;);&#10;for (var i = 0; i < toastElements.length; i++) {&#10;&#9;new bootstrap.Toast(toastElements[i]).show();&#10;}"],
      H5H3(["text-muted"], "Default"),
      H5P("Delay = 5000 ms, auto-hide = true, animation = true"),
      H5Div(
        H5Div(["toast"], ["role":"alert", "aria-live":"assertive", "aria-atomic":"true"], 
          H5Div(["toast-header"],
            H5Strong(["me-auto"], "Toast header"),
            H5Small("9 minutes ago")),
          H5Div(["toast-body"], "Toast body text goes here."))))
  ), ``, ``);

auto delayExample = demoUIMExample("delay", "Delay",
  H5Div(
    H5Div(["mb-5"], ["data-js":"var toastElements = document.querySelectorAll(&apos;.toast&apos;);&#10;for (var i = 0; i < toastElements.length; i++) {&#10;&#9;new bootstrap.Toast(toastElements[i]).show();&#10;}"],
      H5H3(["text-muted"], "Delay"),
      H5P("Delay = 3000 ms, auto-hide = true, animation = true"),
      H5Div(
        H5Div(["toast"], ["role":"alert", "aria-live":"assertive", "aria-atomic":"true", "data-bs-delay":"3000"],
          H5Div(["toast-header"], 
            H5Strong(["me-auto"], "Toast header"),
            H5Small("9 minutes ago")),
          H5Div(["toast-body"], "Toast body text goes here."))))
  ), ``, ``);

auto autohideExample = demoUIMExample("autohide", "Autohide",
  H5Div(
    H5Div(["mb-5"], ["data-js":"var toastElements = document.querySelectorAll(&apos;.toast&apos;);&#10;for (var i = 0; i < toastElements.length; i++) {&#10;&#9;new bootstrap.Toast(toastElements[i]).show();&#10;}"], 
      H5H3(["text-muted"], "Autohide"),
      H5P("Delay = 5000 ms, auto-hide = false, animation = true"),
      H5Div(
        H5Div(["toast"], ["role":"alert", "aria-live":"assertive", "aria-atomic":"true", "data-bs-autohide":"false"],
          H5Div(["toast-header"], 
            H5Strong(["me-auto"], "Toast header"),
            H5Small("9 minutes ago")),
            H5Button(["btn-close", "ms-2 mb-1"], ["type":"button", "data-bs-dismiss":"toast", "aria-label":"Close"])),
          H5Div(["toast-body"], "Toast body text goes here.")))
  ), ``, ``);

auto animationExample = demoUIMExample("animation", "Animation",
  H5Div(
    H5Div(["mb-5"], ["data-js":"var toastElements = document.querySelectorAll(&apos;.toast&apos;);&#10;for (var i = 0; i < toastElements.length; i++) {&#10;&#9;new bootstrap.Toast(toastElements[i]).show();&#10;}"], 
      H5H3(["text-muted"], "Animation"),
      H5P("Delay = 5000 ms, auto-hide = false, animation = false"),
      H5Div(
        H5Div(["toast"], ["role":"alert", "aria-live":"assertive", "aria-atomic":"true", "data-bs-autohide":"false", "data-bs-animation":"false"],
          H5Div(["toast-header"], 
            H5Strong(["me-auto"], "Toast header"),
            H5Small("9 minutes ago")),
            H5Button(["btn-close", "ms-2 mb-1"], ["type":"button", "data-bs-dismiss":"toast", "aria-label":"Close"])),
          H5Div(["toast-body"], "Toast body text goes here.")))
  ), ``, ``);

auto translucentExample = demoUIMExample("translucent", "Translucent",
  H5Div(
    H5Div(["mb-5"], ["data-js":"var toastElements = document.querySelectorAll(&apos;.toast&apos;);&#10;for (var i = 0; i < toastElements.length; i++) {&#10;&#9;new bootstrap.Toast(toastElements[i]).show();&#10;}"],
      H5H3(["text-muted"], "Translucent"),
      H5Div(
        H5Div(["bg-dark", "p-3"], 
          H5Div(["toast"], ["role":"alert", "aria-live":"assertive", "aria-atomic":"true", "data-bs-autohide":"false"], 
            H5Div(["toast-header"], 
              H5Strong(["me-auto"], "Toast header"),
              H5Small("9 minutes ago")),
              H5Button(["btn-close", "ms-2 mb-1"], ["type":"button", "data-bs-dismiss":"toast", "aria-label":"Close"])),
            H5Div(["toast-body"], "Toast body text goes here."))))
  ), ``, ``);

auto multipleExample = demoUIMExample("multiple", "Multiple",
  H5Div(
    H5Div(["mb-5"], ["data-js":"var toastElements = document.querySelectorAll(&apos;.toast&apos;);&#10;for (var i = 0; i < toastElements.length; i++) {&#10;&#9;new bootstrap.Toast(toastElements[i]).show();&#10;}"], 
      H5H3(["text-muted"], "Multiple"),
      H5Div(
        H5Div(["toast"], ["role":"alert", "aria-live":"assertive", "aria-atomic":"true", "data-bs-autohide":"false"],
          H5Div(["toast-header"], 
            H5Strong(["me-auto"], "Toast header"),
            H5Small("9 minutes ago")),
                H5Button(["btn-close", "ms-2 mb-1"], ["type":"button", "data-bs-dismiss":"toast", "aria-label":"Close"]))),
          H5Div(["toast-body"], "Toast body text goes here."),
        H5Div(["toast"], ["role":"alert", "aria-live":"assertive", "aria-atomic":"true", "data-bs-autohide":"false"],
          H5Div(["toast-header"], 
            H5Strong(["me-auto"], "Toast header"),
            H5Small("9 minutes ago")),
            H5Button(["btn-close", "ms-2 mb-1"], ["type":"button", "data-bs-dismiss":"toast", "aria-label":"Close"]))),
          H5Div(["toast-body"], "Toast body text goes here.")
  ), ``, ``);

/* auto multipleExample = demoUIMExample("multiple", "Multiple",
  H5Div(
    H5H3(["text-muted"], "Alignment and placement")
    <h4 class="h5 text-muted mt-3"><a href="position-utilities.html">Position</a> utilities</h4>
    <iframe src="toasts/placement-position.html" style="width: 100%; height: 456px;"></iframe>

    <h4 class="h5 text-muted mt-3"><a href="flex.html">Flex</a> utilities</h4>
    <iframe src="toasts/placement-flex.html" style="width: 100%; height: 551px;"></iframe>
  ), ``, ``); */

      return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Basic", "Components"], "Toasts")),

  BS5Container(["mt-3"]).row(
     H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "components"),    
      listCompSections("basic", "components", "toasts"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Toasts"),
      H5Hr,

      defaultExample,
      delayExample,
      autohideExample,
      animationExample,
      translucentExample,
      multipleExample

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}