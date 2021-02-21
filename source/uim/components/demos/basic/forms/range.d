module uim.components.demos.demos.forms.range;

import uim.components;

static this() {
	demoUIMComps.pages("forms/range", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Range - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          formsVue3("vue")~
          `vue.mount('#app');`]);
		} 
			
    override string content() { 
      return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/forms"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Basic", "Forms"], "Range")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "forms"),    
      listCompSections("basic", "forms", "range"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Range"),
      H5Hr,

      ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
        /*   <div class="mb-5">
              <h3 class="text-muted">Default</h3>
              <div>
                <label for="inputRange" class="form-label">Range input label</label>
                <input type="range" class="form-range" id="inputRange">
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Min and max</h3>
              <div>
                <label for="inputRangeMinMax" class="form-label">Range input label</label>
                <input type="range" class="form-range" id="inputRangeMinMax" min="0" max="10">
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Steps</h3>
              <div>
                <label for="inputRangeSteps" class="form-label">Range input label</label>
                <input type="range" class="form-range" id="inputRangeSteps" min="0" max="10" step="0.5">
              </div>
            </div>
 */
 
