module uim.components.demos.helpers.clearfix;

import uim.components;

static this() {
	demoUIMComps.pages("basic/helpers/clearfix", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Clearfix - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMButton.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content() { 
      return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/uim-components/demos", "/demos/uim-components/helpers"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Helpers"], "Clearfix")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "helpers"),    
      listCompSections("basic", "helpers", "clearfix"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Clearfix"),
      H5Hr,

      demoUIMExample("clearfix", "Using Clearfix",
        H5Div(
          H5Div(["bg-light", "clearfix"], 
            BS5Button(["btn-primary", "float-start"], "Button floated left"),
            BS5Button(["btn-primary", "float-end"], "Button floated right"))), ``, ``)

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 
