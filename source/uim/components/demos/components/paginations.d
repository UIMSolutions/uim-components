module uim.components.demos.components.paginations;

import uim.components;

static this() {
	demoUIMComps.pages("components/paginations", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Paginations - uim-components Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/components"], 
    ["UI Manufaktur", "Demos", "uim-components", "Components"], "Paginations")),
  UIMContainer(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Paginations"),
      H5Hr,

demoUIMExample("numberstext", "Numbers and text",
  H5Div(
    UIMNav(["aria-label":"Search results pages"], 
      UIMPagination(
        UIMPageItem(UIMPageLink(["href":"#"], "Previous")),
        UIMPageItem(UIMPageLink(["href":"#"], "1")),
        UIMPageItem(UIMPageLink(["href":"#"], "2")),
        UIMPageItem(UIMPageLink(["href":"#"], "3")),
        UIMPageItem(UIMPageLink(["href":"#"], "Next"))))), ``, ``),

demoUIMExample("numbersicons", "Numbers and icons",
  H5Div(
    UIMNav(["aria-label":"Search results pages"], 
      UIMPagination(
        UIMPageItem(
          UIMPageLink(["href":"#", "aria-label":"Previous"], H5Span(["aria-hidden":"true"], "&laquo;")))),
        UIMPageItem(UIMPageLink(["href":"#"], "1")),
        UIMPageItem(UIMPageLink(["href":"#"], "2")),
        UIMPageItem(UIMPageLink(["href":"#"], "3")),
        UIMPageItem(
          UIMPageLink(["href":"#", "aria-label":"Next"], H5Span(["aria-hidden":"true"], "&raquo;"))))), ``, ``),

demoUIMExample("activedisabled", "Active and disabled items",
  H5Div(
    UIMNav(["aria-label":"Search results pages"], 
      UIMPagination(
        UIMPageItem(UIMPageLink(["href":"#"], "Previous")),
        UIMPageItem(UIMPageLink(["href":"#"], "1")),
        UIMPageItem(UIMPageLink(["href":"#"], "2")),
        UIMPageItem(UIMPageLink(["href":"#"], "3")),
        UIMPageItem(["active"], ["aria-current":"page"], 
          UIMPageLink(["href":"#"], H5Span(["visually-hidden"], "(current)"))),
        UIMPageItem(["disabled"],  
          UIMPageLink(["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Next"))))), ``, ``),

demoUIMExample("activedisabledanchors", "Active and disabled items without anchors",
  H5Div(
    H5P("<code>&lt;span&gt;</code> elements for active and disabled page links:"),
    UIMNav(["aria-label":"Search results pages"], 
      UIMPagination(
        UIMPageItem(UIMPageLink(["href":"#"], "Previous")),
        UIMPageItem(UIMPageLink(["href":"#"], "1")),
        UIMPageItem(UIMPageLink(["href":"#"], "2")),
        UIMPageItem(["active"], ["aria-current":"page"],
          H5Span(["page-link"], H5String(" 3 "), 
            H5Span(["visually-hidden"], "(current)"))),
        UIMPageItem(["disabled"],
          H5Span(["page-link"], "Next"))))), ``, ``), 

demoUIMExample("sizing", "Sizing",
  H5Div(
    UIMNav(["aria-label":"Search results pages"], 
      UIMPagination(["pagination-sm"],
        UIMPageItem(UIMPageLink(["href":"#"], "Previous")),
        UIMPageItem(UIMPageLink(["href":"#"], "1")),
        UIMPageItem(UIMPageLink(["href":"#"], "2")),
        UIMPageItem(UIMPageLink(["href":"#"], "3")),
        UIMPageItem(UIMPageLink(["href":"#"], "Next")))),
    UIMNav(["aria-label":"Search results pages"], 
      UIMPagination(
        UIMPageItem(UIMPageLink(["href":"#"], "Previous")),
        UIMPageItem(UIMPageLink(["href":"#"], "1")),
        UIMPageItem(UIMPageLink(["href":"#"], "2")),
        UIMPageItem(UIMPageLink(["href":"#"], "3")),
        UIMPageItem(UIMPageLink(["href":"#"], "Next")))),
    UIMNav(["aria-label":"Search results pages"], 
      UIMPagination(["pagination-lg"],
        UIMPageItem(UIMPageLink(["href":"#"], "Previous")),
        UIMPageItem(UIMPageLink(["href":"#"], "1")),
        UIMPageItem(UIMPageLink(["href":"#"], "2")),
        UIMPageItem(UIMPageLink(["href":"#"], "3")),
        UIMPageItem(UIMPageLink(["href":"#"], "Next"))))), ``, ``),

demoUIMExample("alignment", "Alignment",
  H5Div(
    UIMNav(["aria-label":"Search results pages"], 
      UIMPagination(["justify-content-center"],
        UIMPageItem(UIMPageLink(["href":"#"], "Previous")),
        UIMPageItem(UIMPageLink(["href":"#"], "1")),
        UIMPageItem(UIMPageLink(["href":"#"], "2")),
        UIMPageItem(UIMPageLink(["href":"#"], "3")),
        UIMPageItem(UIMPageLink(["href":"#"], "Next")))),
    UIMNav(["aria-label":"Search results pages"], 
      UIMPagination(["justify-content-end"],
        UIMPageItem(UIMPageLink(["href":"#"], "Previous")),
        UIMPageItem(UIMPageLink(["href":"#"], "1")),
        UIMPageItem(UIMPageLink(["href":"#"], "2")),
        UIMPageItem(UIMPageLink(["href":"#"], "3")),
        UIMPageItem(UIMPageLink(["href":"#"], "Next"))))), ``, ``)

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}