module uim.components.demos.components.dropdowns;

import uim.components;

@safe: 
static this() {
	demoUIMComps.pages("basic/components/dropdowns", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Dropdowns - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          dropdownsVue3("vue")~
          `vue.mount('#app');`]);
		} 
			
    override string content(STRINGAA reqParameters = null) { 

auto buttonExample = demoBs5Example("button", "Button", 
  H5Div(
    UIMDropdown(
      UIMDropdownToggle("dropdownButton", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      UIMDropdownMenu(["aria-labelledby":"dropdownButton"])
      .link(["href":"#"], "Item 1")
      .link(["href":"#"], "Item 2")
      .link(["href":"#"], "Item 3"))
        ), 
        `UIMDropdown(
  UIMDropdownToggle("dropdownButton", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  UIMDropdownMenu(["aria-labelledby":"dropdownButton"],
    UIMDropdownLink(["href":"#"], "Item 1"),
    UIMDropdownLink(["href":"#"], "Item 2"),
    UIMDropdownLink(["href":"#"], "Item 3")))

--- Compact version ---

UIMDropdown(
  UIMDropdownToggle("dropdownButton", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  UIMDropdownMenu(["aria-labelledby":"dropdownButton"])
  .link(["href":"#"], "Item 1")
  .link(["href":"#"], "Item 2")
  .link(["href":"#"], "Item 3"))

    `, 
        `<div class="dropdown">
  <button id="dropdownButton" class="btn btn-secondary dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownButton">
    <a class="dropdown-item" href="#">Item 1</a>
    <a class="dropdown-item" href="#">Item 2</a>
    <a class="dropdown-item" href="#">Item 3</a>
  </div>
</div>`);

auto linkExample = demoBs5Example("link", "Link", 
  H5Div(
    UIMDropdown(
      UIMDropdownToggleLink("dropdownLink", ["btn-secondary"], ["href":"#", "data-bs-toggle":"dropdown"], "Dropdown Link"),
      UIMDropdownMenu(["aria-labelledby":"dropdownLink"])
      .link(["href":"#"], "Item 1")
      .link(["href":"#"], "Item 2")
      .link(["href":"#"], "Item 3"))
  ), 
`UIMDropdown(
  UIMDropdownToggleLink("dropdownLink", ["btn-secondary"], ["href":"#", "data-bs-toggle":"dropdown"], "Dropdown Link"),
  UIMDropdownMenu(["aria-labelledby":"dropdownLink"],
    UIMDropdownLink(["href":"#"], "Item 1"),
    UIMDropdownLink(["href":"#"], "Item 2"),
    UIMDropdownLink(["href":"#"], "Item 3")))

--- Compact version ---

UIMDropdown(
  UIMDropdownToggleLink("dropdownLink", ["btn-secondary"], ["href":"#", "data-bs-toggle":"dropdown"], "Dropdown Link"),
  UIMDropdownMenu(["aria-labelledby":"dropdownLink"])
  .link(["href":"#"], "Item 1")
  .link(["href":"#"], "Item 2")
  .link(["href":"#"], "Item 3"))
  `, 
        `H5Div(["dropdown"]
  <a ["btn btn-secondary dropdown-toggle" href="#" id="dropdownLink" data-bs-toggle="dropdown" aria-expanded="false"]Dropdown link</a>
  H5Div(["dropdown-menu" aria-labelledby="dropdownLink"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)`);

auto splitExample = demoBs5Example("split", "Split button", 
  H5Div(
    BS5ButtonGroup(
      BS5Button(["btn-secondary"], "Dropdown split button"),
      UIMDropdownToggle("dropdownSplit", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown"], H5Span(["visually-hidden"],"Toggle dropdown")),
      UIMDropdownMenu(["aria-labelledby":"dropdownSplit"])
      .link(["href":"#"], "Item 1")
      .link(["href":"#"], "Item 2")
      .link(["href":"#"], "Item 3"))
  ), 
        `BS5ButtonGroup(
  BS5Button(["btn-secondary"], "Dropdown split button"),
  UIMDropdownToggle("dropdownSplit", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown"], H5Span(["visually-hidden"],"Toggle dropdown")),
  UIMDropdownMenu(["aria-labelledby":"dropdownSplit"],
    UIMDropdownLink(["href":"#"], "Item 1"),
    UIMDropdownLink(["href":"#"], "Item 2"),
    UIMDropdownLink(["href":"#"], "Item 3")))
    
--- Compact version ---

BS5ButtonGroup(
  BS5Button(["btn-secondary"], "Dropdown split button"),
  UIMDropdownToggle("dropdownSplit", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown"], H5Span(["visually-hidden"],"Toggle dropdown")),
  UIMDropdownMenu(["aria-labelledby":"dropdownSplit"],
    .link(["href":"#"], "Item 1")
    .link(["href":"#"], "Item 2")
    .link(["href":"#"], "Item 3"))`, 
        `H5Div(["btn-group"]
  H5Button(["type":"button" ["btn btn-secondary"]Dropdown split button")
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle dropdown-toggle-split" id="dropdownSplit" data-bs-toggle="dropdown" aria-expanded="false"]H5Span(["visually-hidden"]Toggle dropdown")")
  H5Div(["dropdown-menu" aria-labelledby="dropdownSplit"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)`);

auto sizingExample = demoBs5Example("sizing", "Sizing", 
  H5Div(
    UIMDropdown(
      UIMDropdownToggle("dropdownSmall", ["btn-secondary", "btn-sm"], ["data-bs-toggle":"dropdown"], "Small button"),
      UIMDropdownMenu(["aria-labelledby":"dropdownSmall"],
        UIMDropdownLink(["href":"#"], "Item 1"),
        UIMDropdownLink(["href":"#"], "Item 2"),
        UIMDropdownLink(["href":"#"], "Item 3"))),
    H5Br,
    UIMDropdown(
      UIMDropdownToggle("dropdownMedium", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Medium button"),
      UIMDropdownMenu(["aria-labelledby":"dropdownMedium"],
        UIMDropdownLink(["href":"#"], "Item 1"),
        UIMDropdownLink(["href":"#"], "Item 2"),
        UIMDropdownLink(["href":"#"], "Item 3"))),
    H5Br,
    UIMDropdown(
      UIMDropdownToggle("dropdownLarge", ["btn-secondary", "btn-lg"], ["data-bs-toggle":"dropdown"], "Large button"),
      UIMDropdownMenu(["aria-labelledby":"dropdownLarge"],
        UIMDropdownLink(["href":"#"], "Item 1"),
        UIMDropdownLink(["href":"#"], "Item 2"),
        UIMDropdownLink(["href":"#"], "Item 3")))
  ), 
  `UIMDropdown(
  UIMDropdownToggle("dropdownSmall", ["btn-secondary", "btn-sm"], ["data-bs-toggle":"dropdown"], "Small button"),
  UIMDropdownMenu(["aria-labelledby":"dropdownSmall"],
    UIMDropdownLink(["href":"#"], "Item 1"),
    UIMDropdownLink(["href":"#"], "Item 2"),
    UIMDropdownLink(["href":"#"], "Item 3"))),
H5Br,
UIMDropdown(
  UIMDropdownToggle("dropdownMedium", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Medium button"),
  UIMDropdownMenu(["aria-labelledby":"dropdownMedium"],
    UIMDropdownLink(["href":"#"], "Item 1"),
    UIMDropdownLink(["href":"#"], "Item 2"),
    UIMDropdownLink(["href":"#"], "Item 3"))),
H5Br,
UIMDropdown(
  UIMDropdownToggle("dropdownLarge", ["btn-secondary", "btn-lg"], ["data-bs-toggle":"dropdown"], "Large button"),
  UIMDropdownMenu(["aria-labelledby":"dropdownLarge"],
    UIMDropdownLink(["href":"#"], "Item 1"),
    UIMDropdownLink(["href":"#"], "Item 2"),
    UIMDropdownLink(["href":"#"], "Item 3")))`, 
  `H5Div(["dropdown"]
  H5Button(["type":"button" ["btn btn-secondary btn-sm dropdown-toggle" id="dropdownSmall" data-bs-toggle="dropdown" aria-expanded="false"]Small button")
  H5Div(["dropdown-menu" aria-labelledby="dropdownSmall"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)
H5Br,
H5Div(["dropdown"]
  H5Button(["type":"button" ["btn btn-secondary dropdown-toggle" id="dropdownMedium" data-bs-toggle="dropdown" aria-expanded="false"]Medium button")
  H5Div(["dropdown-menu" aria-labelledby="dropdownMedium"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)
H5Br,
H5Div(["dropdown"]
  H5Button(["type":"button" ["btn btn-secondary btn-lg dropdown-toggle" id="dropdownLarge" data-bs-toggle="dropdown" aria-expanded="false"]Large button")
  H5Div(["dropdown-menu" aria-labelledby="dropdownLarge"]
    <a href="#" ["dropdown-item"]Item 1</a>
    <a href="#" ["dropdown-item"]Item 2</a>
    <a href="#" ["dropdown-item"]Item 3</a>
  )
)`);

auto darkExample = demoBs5Example("dark", "Dark", 
  H5Div(
    UIMDropdown(
      UIMDropdownToggle("dropdownDark", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown dark"),
      UIMDropdownMenu(["aria-labelledby":"dropdownDark"])
      .link(["href":"#"], "Item 1")
      .link(["href":"#"], "Item 2")
      .link(["href":"#"], "Item 3"))
  ), ``, ``);

auto navbarExample = demoBs5Example("navbar", "Navbar component", 
  H5Div(
    BS5Navbar(["navbar-dark", "bg-dark", "navbar-expand"], 
      BS5Container, 
        BS5NavbarBrand(["href":"#"], "Navbar"),
        BS5NavbarCollapse(
          BS5NavbarNav(
            BS5NavItem(["dropdown"], 
              BS5NavLink("navbarDropdownDark", ["dropdown-toggle"], ["href":"#", "data-bs-toggle":"dropdown", "role":"button", "aria-expanded":"false"], "Dropdown dark"),
              UIMDropdownMenu(["dropdown-menu-dark"], ["aria-labelledby":"navbarDropdownDark"], 
                H5Li(UIMDropdownLink(["href":"#"], "Item 1")),
                H5Li(UIMDropdownLink(["href":"#"], "Item 2")),
                H5Li(UIMDropdownLink(["href":"#"], "Item 3")))))))
  ), 
  `BS5Navbar(["navbar-dark", "bg-dark", "navbar-expand"], 
  BS5Container, 
    BS5NavbarBrand(["href":"#"], "Navbar"),
    BS5NavbarCollapse(
      BS5NavbarNav(
        BS5NavItem(["dropdown"], 
          BS5NavLink("navbarDropdownDark", ["dropdown-toggle"], ["href":"#", "data-bs-toggle":"dropdown", "role":"button", "aria-expanded":"false"], "Dropdown dark"),
          UIMDropdownMenu(["dropdown-menu-dark"], ["aria-labelledby":"navbarDropdownDark"], 
            H5Li(UIMDropdownLink(["href":"#"], "Item 1")),
            H5Li(UIMDropdownLink(["href":"#"], "Item 2")),
            H5Li(UIMDropdownLink(["href":"#"], "Item 3")))))))`, 
  ``);

      return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Basic", "Components"], "Dropdowns")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "components"),    
      listCompSections("basic", "components", "dropdowns"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Dropdowns"),
      H5Hr,

      buttonExample, 
      linkExample, 
      splitExample, 
      sizingExample, 
      darkExample, 
      navbarExample

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}