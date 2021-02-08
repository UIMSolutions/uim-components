module uim.components.demos.demos.utilities;

import uim.components;

static this() {
	demoUIMComps.pages("basic/utilities", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Utilities - uim-components Demo",
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
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Components"], "Utilities")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Utilities"),
      H5Hr,
/* 
        <div class="mb-5">
          <h3 class="text-muted">Themenbereiche</h3>
          <ul class="list-group">
            <li class="list-group-item"><a href="/demos/uim-components/basic">Components</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/contents">Contents</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/forms">Forms</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/helpers">Helpers</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/layouts">Layouts</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities">Utilities</a></li>
          </ul>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Forms</h3>
          <ul class="list-group">
            <li class="list-group-item"><a href="/demos/uim-components/utilities/borders">Borders</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/colors">Colors</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/display">Display</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/flex">Flex</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/float">Float</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/interactions">Interactions</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/overflow">Overflow</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/positionutilities">Position Utilities</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/shadows">Shadows</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/sizing">Sizing</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/text">Text</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/verticalalign">Vertical Align</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/visibility">Visibility</a></li>
          </ul>
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