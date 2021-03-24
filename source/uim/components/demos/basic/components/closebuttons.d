module uim.components.demos.components.closebuttons;

import uim.components;

@safe:
@safe: 
static this() {
	demoUIMComps.pages("basic/components/closebuttons", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Close Buttons - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMButton.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content(STRINGAA reqParameters = null) { 

auto defaultExample = demoUIMExample("default", "Default", 
  H5Div(
    UIMAlert(["alert-success"], 
      H5Button(["btn-close"], ["type":"button", "aria-label":"Close"]))
  ), 
`UIMAlert(["alert-success"], 
  H5Button(["btn-close"], ["type":"button", "aria-label":"Close"]))`, 
`<div class="alert alert-success" role="alert">
  <button type="button" class="btn-close" aria-label="Close"></button>
</div>`);

auto disabledExample = demoUIMExample("disabled", "Disabled", 
  H5Div(
    UIMAlert(["alert-success"], 
      H5Button(["btn-close"], ["type":"button", "aria-label":"Close", "disabled":"disabled"]))
      ), 
`UIMAlert(["alert-success"], 
  H5Button(["btn-close"], ["type":"button", "aria-label":"Close", "disabled":"disabled"]))`, 
            `<div class="alert alert-success" role="alert">
  <button type="button" class="btn-close" aria-label="Close" disabled=""></button>
</div>`);

auto darkExample = demoUIMExample("dark", "Disabled", 
  H5Div(
    UIMAlert(["bg-dark"], 
      H5Button(["btn-close", "btn-close-white"], ["type":"button", "aria-label":"Close", "disabled":"disabled"]), 
      H5Button(["btn-close", "btn-close-white"], ["type":"button", "aria-label":"Close", "disabled":"disabled"]))
      ), 
      `UIMAlert(["bg-dark"], 
  H5Button(["btn-close", "btn-close-white"], ["type":"button", "aria-label":"Close", "disabled":"disabled"]), 
  H5Button(["btn-close", "btn-close-white"], ["type":"button", "aria-label":"Close", "disabled":"disabled"]))`, 
      `<div class="alert bg-dark" role="alert">
  <button type="button" class="btn-close btn-close-white" aria-label="Close"></button>
  <button type="button" class="btn-close btn-close-white" aria-label="Close" disabled=""></button>
</div>`);

      return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Basic", "Components"], "Close Buttons")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "components"),    
      listCompSections("basic", "components", "closebuttons"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Close Buttons"),
      H5Hr,

      defaultExample,
      disabledExample,
      darkExample
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}