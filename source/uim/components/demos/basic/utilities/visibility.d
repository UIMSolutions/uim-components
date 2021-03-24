module uim.components.demos.demos.utilities.visibility;

import uim.components;

@safe: 
static this() {
	demoUIMComps.pages("basic/utilities/visibility", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Visibility - uim-components Demo",
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
    ["UI Manufaktur", "Demos", "uim-components" , "Components", "Utilities"], "Visibility")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "utilities"),    
      listCompSections("basic", "utilities", "visibility"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Visibility"),
      H5Hr,

/*         <div class="mb-5">
              <div>
                <div class="card p-3 mb-3 visible" style="visibility: hidden;">Visible card</div>
                <div class="card p-3 invisible">Invisible card</div>
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