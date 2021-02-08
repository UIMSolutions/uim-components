module uim.components.demos.demos.helpers.coloredlinks;

import uim.components;

static this() {
	demoUIMComps.pages("helpers/coloredlinks", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Colored Links - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMButton.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content() { 
      return 
H5Main("app", [""],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-components", "/demos/uim-components/helpers"], 
    ["UI Manufaktur", "Demos", "uim-components", "Helpers"], "Colored Links")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Colored Links"),
      H5Hr,

      demoUIMExample("links", "Colored Links",
        H5Div(
          H5A(["link-primary"], ["href":"#"], "Primary link"), H5Br,
          H5A(["link-secondary"], ["href":"#"], "Secondary link"), H5Br,
          H5A(["link-success"], ["href":"#"], "Success link"), H5Br,
          H5A(["link-danger"], ["href":"#"], "Danger link"), H5Br,
          H5A(["link-warning"], ["href":"#"], "Warning link"), H5Br,
          H5A(["link-info"], ["href":"#"], "Info link"), H5Br,
          H5A(["link-light"], ["href":"#"], "Light link"), H5Br,
          H5A(["link-dark"], ["href":"#"], "Dark link"), H5Br
          ), ``, ``)
      ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 
