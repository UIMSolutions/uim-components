module uim.components.demos.demos.helpers.visuallyhidden;

import uim.components;

static this() {
	demoUIMComps.pages("helpers/visuallyhidden", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Visually Hidden - uim-components Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-components", "/demos/uim-components/helpers"], 
    ["UI Manufaktur", "Demos", "uim-components", "Helpers"], "Visually Hidden")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Visually Hidden"),
      H5Hr,

      demoUIMExample("default", "Default",
        H5Div(
          H5H4(["visually-hidden"], "Title for screen readers")
        ), ``, ``),

      demoUIMExample("focusable", "Focusable",
        H5Div(
          H5A(["visually-hidden-focusable"], ["href":"#main"], "Skip to main content")
        ), ``, ``)

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 
      