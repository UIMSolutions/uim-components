module uim.components.demos.demos.utilities.shadows;

import uim.components;

@safe: 
static this() {
	demoUIMComps.pages("basic/utilities/shadows", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Shadows - uim-components Demo",
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
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/components/utilities"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Components", "Utilities"], "Shadows")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "utilities"),    
      listCompSections("basic", "utilities", "shadows"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Shadows"),
      H5Hr,

/* 
        <div class="mb-5">
              <div>
                <div class="card p-3 mb-5 shadow-none" style="box-shadow: 0 0.5rem 1rem rgba(0,0,0,.2);">No shadow</div>
                <div class="card p-3 mb-5 shadow-sm">Small shadow</div>
                <div class="card p-3 mb-5 shadow">Regular shadow</div>
                <div class="card p-3 mb-5 shadow-lg">Large shadow</div>
              </div>
            </div>

      `; */
       ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}