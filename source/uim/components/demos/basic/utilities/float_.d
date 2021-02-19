module uim.components.demos.demos.utilities.float_;

import uim.components;

static this() {
	demoUIMComps.pages("basic/utilities/float", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Float - uim-components Demo",
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
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/components/utilities"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Components", "Utilities"], "Float")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "utilities"),    
      listCompSections("basic", "utilities", "float"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Float"),
      H5Hr,

/* 
        <div class="mb-5">
              <h3 class="text-muted">Default</h3>
              <div>
                <div class="float-start">Float left</div><br>
                <div class="float-end">Float right</div><br>
                <div class="float-none">Don't float</div><br>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Responsive</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Float left</h4>
                <div class="float-sm-start">Float left for breakpoints sm and up</div><br>
                <div class="float-md-start">Float left for breakpoints md and up</div><br>
                <div class="float-lg-start">Float left for breakpoints lg and up</div><br>
                <div class="float-xl-start">Float left for breakpoints xl and up</div><br>
                <div class="float-xxl-start">Float left for breakpoints xxl and up</div><br>
                <h4 class="h5 text-muted mt-3">Float right</h4>
                <div class="float-sm-end">Float right for breakpoints sm and up</div><br>
                <div class="float-md-end">Float right for breakpoints md and up</div><br>
                <div class="float-lg-end">Float right for breakpoints lg and up</div><br>
                <div class="float-xl-end">Float right for breakpoints xl and up</div><br>
                <div class="float-xxl-end">Float right for breakpoints xxl and up</div><br>
                <h4 class="h5 text-muted mt-3">Float none</h4>
                <div class="float-sm-none">Don't float for breakpoints sm and up</div><br>
                <div class="float-md-none">Don't float for breakpoints md and up</div><br>
                <div class="float-lg-none">Don't float for breakpoints lg and up</div><br>
                <div class="float-xl-none">Don't float for breakpoints xl and up</div><br>
                <div class="float-xxl-none">Don't float for breakpoints xxl and up</div><br>
              </div>
            </div>

          </div>
        </div>
      </div>
    </main>

      `; */
       ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}