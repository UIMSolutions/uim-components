module uim.components.demos.demos.helpers.texttruncation;

import uim.components;

static this() {
	demoUIMComps.pages("basic/helpers/texttruncation", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Text Truncation - uim-components Demo",
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
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/helpers"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Helpers", "Forms"], "Text Truncation")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "helpers"),    
      listCompSections("basic", "helpers", "texttruncation"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Text Truncation"),
      H5Hr

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
/*
        <div class="mb-5">
          <div>
            <h4 class="h5 text-muted mt-3">Block</h4>
            <p class="text-truncate">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui.</p>
            <h4 class="h5 text-muted mt-3">Inline-block</h4>
            <span class="text-truncate d-inline-block w-100">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien mi, eleifend at arcu ac, ullamcorper ultricies tortor. Aliquam sit amet pellentesque dui.</span>
          </div>
        </div>

*/