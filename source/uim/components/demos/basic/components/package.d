module uim.components.demos.components;

import uim.components;

static this() {
	demoUIMComps.pages("basic/components", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "uim-components Demo",
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
    ["UI Manufaktur", "Demos", "uim-components" , "Components"], "Basic")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Toasts"),
      H5Hr,

/* 
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">uim-components Demo</h2>
        <hr>

        <div class="mb-5">
          H5H3(["text-muted"], "Themenbereiche")
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
          H5H3(["text-muted"], "Components")
          <ul class="list-group">
            <li class="list-group-item"><a href="/demos/uim-components/components/accordions">Accordions</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/alerts">Alerts</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/badges">Badges</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/breadcrumbs">Breadcrumbs</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/buttongroups">Button Groups</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/buttons">Buttons</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/cards">Cards</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/carousels">Carousels</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/closebuttons">Close Buttons</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/collapses">Collapses</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/dropdowns">Dropdowns</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/listgroups">List Groups</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/modals">Modals</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/navbars">Navbars</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/navs">Navs</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/paginations">Paginations</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/popovers">Popovers</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/progresses">Progresses</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/scrollspies">Scrollspies</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/spinners">Spinners</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/toasts">Toasts</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/tooltips">Tooltips</a></li>
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