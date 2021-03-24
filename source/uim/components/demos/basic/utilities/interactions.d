module uim.components.demos.demos.utilities.interactions;

import uim.components;

@safe: 
static this() {
	demoUIMComps.pages("basic/utilities/interactions", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Interactions - uim-components Demo",
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
    ["UI Manufaktur", "Demos", "uim-components" , "Components", "Utilities"], "Interactions")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "utilities"),    
      listCompSections("basic", "utilities", "interactions"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Interactions"),
      H5Hr,
/*

        <div class="mb-5">
              <h3 class="text-muted">Text selection</h3>
              <div>
                <h4 class="h5 text-muted mt-3">All</h4>
                <p class="user-select-all">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                <h4 class="h5 text-muted mt-3">Auto</h4>
                <p class="user-select-auto" style="user-select: none;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                <h4 class="h5 text-muted mt-3">None</h4>
                <p class="user-select-none">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Pointer events</h3>
              <div>
                <h4 class="h5 text-muted mt-3">None</h4>
                <p><a href="#" class="pe-none">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a>. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                <h4 class="h5 text-muted mt-3">Auto</h4>
                <p><a href="#" class="pe-auto" style="pointer-events: none;">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a>. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                <h4 class="h5 text-muted mt-3">None for parent, auto for second child</h4>
                <p class="pe-none"><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a>. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. <a href="#" class="pe-auto">Etiam eleifend velit leo</a>.</p>
              </div>
            </div>

          </div>
        </div>
      </div>
    </main>
      `;*/
       ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}