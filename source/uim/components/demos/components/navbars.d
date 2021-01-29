module uim.components.demos.components.navbars;

import uim.components;

static this() {
	demoUIMComps.pages("components/navbars", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Navbars - uim-components Demo",
          ]);
		} 
			
    override string content() { 
/* auto linkExample = demoUIMExample("link", "With Link",
  UIMNavbar(["navbar-light", "bg-light"], 
    UIMContainer(
      UIMNavbarBrand(["href":"#"], "Navbar"))
  ), ``, ``);

auto headingExample = demoUIMExample("heading", "With Heading",
  UIMNavbar(["navbar-light", "bg-light"], 
    UIMContainer(
      UIMNavbarBrand(["h1", "mb-0"], ["href":"#"], "Navbar"))), ``, ``);

auto imageExample = demoUIMExample("image", "With Image",
  UIMNavbar(["navbar-light", "bg-light"], 
    UIMContainer(
      UIMNavbarBrand(["href":"#"], 
        H5Img(["src":"../img/50x50.png", "alt":""])))), ``, ``);

auto imageTextExample = demoUIMExample("image", "With Image and Text",
  UIMNavbar(["navbar-light", "bg-light"], 
    UIMContainer(
      UIMNavbarBrand(["href":"#"], 
        H5Img(["src":"../img/50x50.png", "alt":""]), 
        H5Span(["align-middle"], "Navbar")))), ``, ``);

auto ulistTextExample = demoUIMExample("ulist", "With Unordered list",
  UIMNavbar(["navbar-light", "bg-light", "navbar-expand"], 
    UIMContainer(
      UIMNavbarBrand(["href":"#"]),
      UIMNavbarCollapse(
        UIMNavbarNav(
          UIMNavItem(
            UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
          UIMNavItem(
            UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
          UIMNavItem(
            UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
          UIMNavItem(
            UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link")))))), ``, ``);

auto formsExample = demoUIMExample("forms", "With Forms",
  UIMNavbar(["navbar-light", "bg-light"], 
    UIMContainer(
      UIMNavbarBrand(["href":"#"], "Navbar"),
      H5Form(
        UIMInputGroup(
          UIMInputSearch(["placeholder":"Search text here", "aria-label":"Search input"],
            H5Button(["btn", "btn-secondary"], ["type":"submit"], "Search")))))), ``, ``);

auto textExample = demoUIMExample("text", "Text",
  UIMNavbar(["navbar-light", "bg-light"], 
    UIMContainer(
      H5Div(["navbar-text"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit."))), ``, ``);

auto colorsExample = demoUIMExample("colors", "Colors",
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Dark navbar"),
    UIMNavbar(["navbar-dark", "bg-primary"], 
      UIMContainer(
        UIMNavbarBrand(["href":"#"], "Primary"))), 
    UIMNavbar(["navbar-dark", "bg-secondary"], 
      UIMContainer(
        UIMNavbarBrand(["href":"#"], "Secondary"))),
    UIMNavbar(["navbar-dark", "bg-success"], 
      UIMContainer(
        UIMNavbarBrand(["href":"#"], "Success"))),
    UIMNavbar(["navbar-dark", "bg-danger"], 
      UIMContainer(
        UIMNavbarBrand(["href":"#"], "Danger"))),
    UIMNavbar(["navbar-dark", "bg-warning"], 
      UIMContainer(
        UIMNavbarBrand(["href":"#"], "Warning"))),
    UIMNavbar(["navbar-dark", "bg-info"], 
      UIMContainer(
        UIMNavbarBrand(["href":"#"], "Info"))),
    UIMNavbar(["navbar-dark", "bg-dark"], 
      UIMContainer(
        UIMNavbarBrand(["href":"#"], "Dark"))),
    H5H4(["h5", "text-muted", "mt-3"], "Light navbar"),
    UIMNavbar(["navbar-light", "bg-light"], 
      UIMContainer(
        UIMNavbarBrand(["href":"#"], "Light"))),
    UIMNavbar(["navbar-light", "bg-white"], 
      UIMContainer(
        UIMNavbarBrand(["href":"#"], "White"))),
    UIMNavbar(["navbar-light", "bg-transparent"], 
      UIMContainer(
        UIMNavbarBrand(["href":"#"], "Transparent")))), ``, ``);

auto togglerExample = demoUIMExample("toggler", "Toggler",
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Left-aligned toggler"),
    UIMNavbar(["navbar-light", "bg-light navbar-expand-lg"], 
      UIMContainer(
        UIMButton(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarResponsiveLeft", "aria-controls":"navbarResponsiveLeft", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
          H5Span(["navbar-toggler-icon"])),
        UIMNavbarBrand(["href":"#"], "Navbar"),
        UIMNavbarCollapse("navbarResponsiveLeft", 
          UIMNavbar(
            UIMNavItem(
            UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
          UIMNavItem(
            UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
          UIMNavItem(
            UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
          UIMNavItem(
            UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link")))))),
    H5H4(["h5", "text-muted", "mt-3"], "Right-aligned toggler"),
    UIMNavbar(["navbar-light", "bg-light navbar-expand-lg"],
      UIMContainer(
        UIMNavbarBrand(["href":"#"], "Navbar"),
        UIMButton(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarResponsiveRight", 
        "aria-controls":"navbarResponsiveRight", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
          H5Span(["navbar-toggler-icon"])), 
        UIMNavbarCollapse("navbarResponsiveRight", 
          UIMNavbar(
            UIMNavItem(
              UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
            UIMNavItem(
              UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
            UIMNavItem(
              UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
            UIMNavItem(
              UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link")))
              )))), ``, ``);

auto responsiveExample = demoUIMExample("responsive", "Responsive",
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Small"),
    UIMNavbar(["navbar-light", "bg-light navbar-expand-sm"], 
        UIMContainer(
          UIMNavbarBrand(["href":"#"], "Navbar"),
          UIMButton(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarResponsiveSmall", 
          "aria-controls":"navbarResponsiveSmall", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
            H5Span(["navbar-toggler-icon"])),
          UIMNavbarCollapse("navbarResponsiveSmall", 
            UIMNavbar(
              UIMNavItem(
                UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
              UIMNavItem(
                UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
              UIMNavItem(
                UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
              UIMNavItem(
                UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link")))))),

    H5H4(["h5", "text-muted", "mt-3"], "Medium"),
    UIMNavbar(["navbar-light", "bg-light navbar-expand-md"], 
        UIMContainer(
          UIMNavbarBrand(["href":"#"], "Navbar"),
          UIMButton(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarResponsiveMedium", 
          "aria-controls":"navbarResponsiveMedium", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
            H5Span(["navbar-toggler-icon"])),
          UIMNavbarCollapse("navbarResponsiveMedium", 
            UIMNavbar(
              UIMNavItem(
                UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
              UIMNavItem(
                UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
              UIMNavItem(
                UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
              UIMNavItem(
                UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link")))))),

    H5H4(["h5", "text-muted", "mt-3"], "Large"),
    UIMNavbar(["navbar-light", "bg-light navbar-expand-lg"], 
        UIMContainer(
          UIMNavbarBrand(["href":"#"], "Navbar"),
          UIMButton(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarResponsiveLarge", 
          "aria-controls":"navbarResponsiveLarge", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
            H5Span(["navbar-toggler-icon"])),
          UIMNavbarCollapse("navbarResponsiveLarge", 
            UIMNavbar(
              UIMNavItem(
                UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
              UIMNavItem(
                UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
              UIMNavItem(
                UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
              UIMNavItem(
                UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link")))))),

     H5H4(["h5", "text-muted", "mt-3"], "Extra Large"),
    UIMNavbar(["navbar-light", "bg-light navbar-expand-xl"], 
        UIMContainer(
          UIMNavbarBrand(["href":"#"], "Navbar"),
          UIMButton(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarResponsiveExtraLarge", 
          "aria-controls":"navbarResponsiveExtraLarge", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
            H5Span(["navbar-toggler-icon"])),
          UIMNavbarCollapse("navbarResponsiveExtraLarge", 
            UIMNavbar(
              UIMNavItem(
                UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
              UIMNavItem(
                UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
              UIMNavItem(
                UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
              UIMNavItem(
                UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link")))))),

    H5H4(["h5", "text-muted", "mt-3"], "Extra extra large"),
    UIMNavbar(["navbar-light", "bg-light navbar-expand-xxl"], 
        UIMContainer(
          UIMNavbarBrand(["href":"#"], "Navbar"),
          UIMButton(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarResponsiveExtraExtraLarge", 
          "aria-controls":"navbarResponsiveExtraExtraLarge", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
            H5Span(["navbar-toggler-icon"])),
          UIMNavbarCollapse("navbarResponsiveExtraExtraLarge", 
            UIMNavbar(
              UIMNavItem(
                UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
              UIMNavItem(
                UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
              UIMNavItem(
                UIMNavLink(["href":"#", "aria-current":"page"], "Link")),
              UIMNavItem(
                UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Link"))))))
  ), ``, ``);

auto externalExample = demoUIMExample("external", "External content",
  H5Div(
    UIMCollapse("navbarExternalContent", 
      H5Div(["p-4"], 
        H5H5("Collapsed content"),
        H5P(["mb-0"], "Toggleable via the navbar toggler.")
      )),
    UIMNavbar(["navbar-light", "bg-light"], 
      UIMContainer(
        UIMButton(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarExternalContent", 
        "aria-controls":"navbarExternalContent", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
          H5Span(["navbar-toggler-icon"]))))
  ), ``, ``);

auto advancedExample = demoUIMExample("advanced", "Advanced example",
  H5Div(
    UIMNavbar(["navbar-light", "bg-light navbar-expand-lg"], 
      UIMContainer(
        UIMNavbarBrand(["href":"#"], "Navbar"),
        UIMButton(["navbar-toggler"], ["data-bs-toggle":"collapse", "data-bs-target":"#navbarAdvanced", 
        "aria-controls":"navbarAdvanced", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
          H5Span(["navbar-toggler-icon"])), 
        UIMNavbarCollapse("navbarAdvanced", 
          UIMNavbarNav(["mb-2", "mb-lg-0", "me-auto"],
            UIMNavItem(
              UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")), 
            UIMNavItem(["dropdown"], 
              UIMNavLink("navbarAdvancedDropdown", ["dropdown-toggle"], ["href":"#", "data-bs-toggle":"dropdown",
               "role":"button", "aria-expanded":"false"], "Dropdown"),
              UIMDropdownMenu(["aria-labelledby":"navbarAdvancedDropdown"], 
                H5Li(
                  UIMDropdownItem(["href":"#"], "First item")),
                H5Li(
                  UIMDropdownItem(["href":"#"], "Second item")), 
                H5Li(
                  UIMDropdownItem(["href":"#"], "Third item"))
                  )),
            UIMNavItem(
              UIMNavLink(["href":"#"], "Link")),
            UIMNavItem(
              UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))),
          H5Form(
            UIMInputGroup(
              UIMInputSearch(["placeholder":"Search text here", "aria-label":"Search input"]),
              H5Button(["btn btn-secondary"], ["type":"submit"], "Search")))
        )))), ``, ``); */

      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/components"], 
    ["UI Manufaktur", "Demos", "uim-components", "Components"], "Navbars")),
  UIMContainer(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Navbars"),
      H5Hr,
/* 
      linkExample,
      headingExample,
      imageExample,
      imageTextExample,
      ulistTextExample,
      // linksExample,
      formsExample,
      textExample,
      colorsExample,
      togglerExample,
      responsiveExample,
      advancedExample */

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}