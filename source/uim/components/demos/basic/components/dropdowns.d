module uim.components.demos.components.dropdowns;

import uim.components;

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
          UIMDropdown.toVue3("vue")~";"~
          // UIMDropdownToggle.toVue3("vue")~";"~
          UIMDropdownMenu.toVue3("vue")~";"~
          UIMDropdownLink.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content() { 

/* auto buttonExample = demoUIMExample("button", "Button", 
  H5Div(
    UIMDropdown(
      UIMDropdownToggle("dropdownButton", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      UIMDropdownMenu(["aria-labelledby":"dropdownButton"],
        UIMDropdownLink(["href":"#"], "First item"),
        UIMDropdownLink(["href":"#"], "Second item"),
        UIMDropdownLink(["href":"#"], "Third item")))
        ), 
        `UIMDropdown(
  UIMDropdownToggle("dropdownButton", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  UIMDropdownMenu(["aria-labelledby":"dropdownButton"],
    UIMDropdownLink(["href":"#"], "First item"),
    UIMDropdownLink(["href":"#"], "Second item"),
    UIMDropdownLink(["href":"#"], "Third item")))`, 
        `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownButton" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownButton">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto linkExample = demoUIMExample("link", "Link", 
  H5Div(
    UIMDropdown(
      UIMDropdownToggleLink("dropdownLink", ["btn-secondary"], ["href":"#", "data-bs-toggle":"dropdown"], "Dropdown Link"),
      UIMDropdownMenu(["aria-labelledby":"dropdownLink"],
        UIMDropdownLink(["href":"#"], "First item"),
        UIMDropdownLink(["href":"#"], "Second item"),
        UIMDropdownLink(["href":"#"], "Third item")))
        ), 
        `UIMDropdown(
  UIMDropdownToggleLink("dropdownLink", ["btn-secondary"], ["href":"#", "data-bs-toggle":"dropdown"], "Dropdown Link"),
  UIMDropdownMenu(["aria-labelledby":"dropdownLink"],
    UIMDropdownLink(["href":"#"], "First item"),
    UIMDropdownLink(["href":"#"], "Second item"),
    UIMDropdownLink(["href":"#"], "Third item")))`, 
        `<div class="dropdown">
  <a class="btn btn-secondary dropdown-toggle" href="#" id="dropdownLink" data-bs-toggle="dropdown" aria-expanded="false">Dropdown link</a>
  <div class="dropdown-menu" aria-labelledby="dropdownLink">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto splitExample = demoUIMExample("split", "Split button", 
  H5Div(
    UIMButtonGroup(
      UIMButton(["btn-secondary"], "Dropdown split button"),
      UIMDropdownToggle("dropdownSplit", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown"], H5Span(["visually-hidden"],"Toggle dropdown")),
      UIMDropdownMenu(["aria-labelledby":"dropdownSplit"],
        UIMDropdownLink(["href":"#"], "First item"),
        UIMDropdownLink(["href":"#"], "Second item"),
        UIMDropdownLink(["href":"#"], "Third item")))
        ), 
        `UIMButtonGroup(
  UIMButton(["btn-secondary"], "Dropdown split button"),
  UIMDropdownToggle("dropdownSplit", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown"], H5Span(["visually-hidden"],"Toggle dropdown")),
  UIMDropdownMenu(["aria-labelledby":"dropdownSplit"],
    UIMDropdownLink(["href":"#"], "First item"),
    UIMDropdownLink(["href":"#"], "Second item"),
    UIMDropdownLink(["href":"#"], "Third item")))`, 
        `<div class="btn-group">
  <button type="button" class="btn btn-secondary">Dropdown split button</button>
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" id="dropdownSplit" data-bs-toggle="dropdown" aria-expanded="false"><span class="visually-hidden">Toggle dropdown</span></button>
  <div class="dropdown-menu" aria-labelledby="dropdownSplit">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`); */

/* auto sizingExample = demoUIMExample("sizing", "Sizing", 
  H5Div(
    UIMDropdown(
      UIMDropdownToggle("dropdownSmall", ["btn-secondary", "btn-sm"], ["data-bs-toggle":"dropdown"], "Small button"),
      UIMDropdownMenu(["aria-labelledby":"dropdownSmall"],
        UIMDropdownLink(["href":"#"], "First item"),
        UIMDropdownLink(["href":"#"], "Second item"),
        UIMDropdownLink(["href":"#"], "Third item"))),
    H5Br,
    UIMDropdown(
      UIMDropdownToggle("dropdownMedium", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Medium button"),
      UIMDropdownMenu(["aria-labelledby":"dropdownMedium"],
        UIMDropdownLink(["href":"#"], "First item"),
        UIMDropdownLink(["href":"#"], "Second item"),
        UIMDropdownLink(["href":"#"], "Third item"))),
    H5Br,
    UIMDropdown(
      UIMDropdownToggle("dropdownLarge", ["btn-secondary", "btn-lg"], ["data-bs-toggle":"dropdown"], "Large button"),
      UIMDropdownMenu(["aria-labelledby":"dropdownLarge"],
        UIMDropdownLink(["href":"#"], "First item"),
        UIMDropdownLink(["href":"#"], "Second item"),
        UIMDropdownLink(["href":"#"], "Third item")))
  ), 
  `UIMDropdown(
  UIMDropdownToggle("dropdownSmall", ["btn-secondary", "btn-sm"], ["data-bs-toggle":"dropdown"], "Small button"),
  UIMDropdownMenu(["aria-labelledby":"dropdownSmall"],
    UIMDropdownLink(["href":"#"], "First item"),
    UIMDropdownLink(["href":"#"], "Second item"),
    UIMDropdownLink(["href":"#"], "Third item"))),
H5Br,
UIMDropdown(
  UIMDropdownToggle("dropdownMedium", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Medium button"),
  UIMDropdownMenu(["aria-labelledby":"dropdownMedium"],
    UIMDropdownLink(["href":"#"], "First item"),
    UIMDropdownLink(["href":"#"], "Second item"),
    UIMDropdownLink(["href":"#"], "Third item"))),
H5Br,
UIMDropdown(
  UIMDropdownToggle("dropdownLarge", ["btn-secondary", "btn-lg"], ["data-bs-toggle":"dropdown"], "Large button"),
  UIMDropdownMenu(["aria-labelledby":"dropdownLarge"],
    UIMDropdownLink(["href":"#"], "First item"),
    UIMDropdownLink(["href":"#"], "Second item"),
    UIMDropdownLink(["href":"#"], "Third item")))`, 
  `<div class="dropdown">
  <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" id="dropdownSmall" data-bs-toggle="dropdown" aria-expanded="false">Small button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownSmall">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>
<br>
<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownMedium" data-bs-toggle="dropdown" aria-expanded="false">Medium button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownMedium">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>
<br>
<div class="dropdown">
  <button type="button" class="btn btn-secondary btn-lg dropdown-toggle" id="dropdownLarge" data-bs-toggle="dropdown" aria-expanded="false">Large button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownLarge">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto darkExample = demoUIMExample("dark", "Dark", 
  H5Div(
    UIMDropdown(
      UIMDropdownToggle("dropdownDark", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown dark"),
      UIMDropdownMenu(["aria-labelledby":"dropdownDark"],
        UIMDropdownLink(["href":"#"], "First item"),
        UIMDropdownLink(["href":"#"], "Second item"),
        UIMDropdownLink(["href":"#"], "Third item")))
  ), 
  `UIMDropdown(
  UIMDropdownToggle("dropdownDark", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown dark"),
  UIMDropdownMenu(["aria-labelledby":"dropdownDark"],
    UIMDropdownLink(["href":"#"], "First item"),
    UIMDropdownLink(["href":"#"], "Second item"),
    UIMDropdownLink(["href":"#"], "Third item")))`, 
  `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownDark" data-bs-toggle="dropdown" aria-expanded="false">Dropdown dark</button>
  <div class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownDark">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>
<h4 class="h5 text-muted mt-3">In navbar component</h4>
<nav class="navbar navbar-dark bg-dark navbar-expand">
  <div class="container">
    <a href="#" class="navbar-brand">Navbar</a>
    <div class="collapse navbar-collapse">
      <ul class="navbar-nav">
        <li class="nav-item dropdown">
          <a href="#" class="nav-link dropdown-toggle" id="navbarDropdownDark" data-bs-toggle="dropdown" role="button" aria-expanded="false">Dropdown dark</a>
          <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDropdownDark">
            <li>
              <a href="#" class="dropdown-item">First item</a>
            </li>
            <li>
              <a href="#" class="dropdown-item">Second item</a>
            </li>
            <li>
              <a href="#" class="dropdown-item">Third item</a>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>`);

auto navbarExample = demoUIMExample("navbar", "Navbar component", 
  H5Div(
    UIMNavbar(["navbar-dark", "bg-dark", "navbar-expand"], 
      BS5Container, 
        UIMNavbarBrand(["href":"#"], "Navbar"),
        UIMNavbarCollapse(
          UIMNavbarNav(
            UIMNavItem(["dropdown"], 
              UIMNavLink("navbarDropdownDark", ["dropdown-toggle"], ["href":"#", "data-bs-toggle":"dropdown", "role":"button", "aria-expanded":"false"], "Dropdown dark"),
              UIMDropdownMenu(["dropdown-menu-dark"], ["aria-labelledby":"navbarDropdownDark"], 
                H5Li(UIMDropdownLink(["href":"#"], "First item")),
                H5Li(UIMDropdownLink(["href":"#"], "Second item")),
                H5Li(UIMDropdownLink(["href":"#"], "Third item")))))))
  ), 
  `UIMNavbar(["navbar-dark", "bg-dark", "navbar-expand"], 
  BS5Container, 
    UIMNavbarBrand(["href":"#"], "Navbar"),
    UIMNavbarCollapse(
      UIMNavbarNav(
        UIMNavItem(["dropdown"], 
          UIMNavLink("navbarDropdownDark", ["dropdown-toggle"], ["href":"#", "data-bs-toggle":"dropdown", "role":"button", "aria-expanded":"false"], "Dropdown dark"),
          UIMDropdownMenu(["dropdown-menu-dark"], ["aria-labelledby":"navbarDropdownDark"], 
            H5Li(UIMDropdownLink(["href":"#"], "First item")),
            H5Li(UIMDropdownLink(["href":"#"], "Second item")),
            H5Li(UIMDropdownLink(["href":"#"], "Third item")))))))`, 
  ``);

auto directionExample = demoUIMExample("direction", "Direction", 
  H5Div(
    UIMButtonGroup(["dropup"],
      UIMDropdownToggle("dropup", ["btn-secondary"], "Dropup"),
      UIMDropdownMenu(["aria-labelledby":"dropup"],
        UIMDropdownLink(["href":"#"], "First item"),
        UIMDropdownLink(["href":"#"], "Second item"),
        UIMDropdownLink(["href":"#"], "Third item"))),
    H5Br,
    H5Br,
    UIMButtonGroup(["dropstart"],
      UIMDropdownToggle("dropstart", ["btn-secondary"], "Dropstart"),
      UIMDropdownMenu(["aria-labelledby":"dropstart"],
        UIMDropdownLink(["href":"#"], "First item"),
        UIMDropdownLink(["href":"#"], "Second item"),
        UIMDropdownLink(["href":"#"], "Third item"))),
    H5Br,
    H5Br,
    UIMButtonGroup(["dropend"],
      UIMDropdownToggle("dropend", ["btn-secondary"], "Dropend"),
      UIMDropdownMenu(["aria-labelledby":"dropend"],
        UIMDropdownLink(["href":"#"], "First item"),
        UIMDropdownLink(["href":"#"], "Second item"),
        UIMDropdownLink(["href":"#"], "Third item")))
  ), 
  `UIMButtonGroup(["dropup"],
  UIMDropdownToggle("dropup", ["btn-secondary"], "Dropup"),
  UIMDropdownMenu(["aria-labelledby":"dropup"],
    UIMDropdownLink(["href":"#"], "First item"),
    UIMDropdownLink(["href":"#"], "Second item"),
    UIMDropdownLink(["href":"#"], "Third item"))),
H5Br,
H5Br,
UIMButtonGroup(["dropstart"],
  UIMDropdownToggle("dropstart", ["btn-secondary"], "Dropstart"),
  UIMDropdownMenu(["aria-labelledby":"dropstart"],
    UIMDropdownLink(["href":"#"], "First item"),
    UIMDropdownLink(["href":"#"], "Second item"),
    UIMDropdownLink(["href":"#"], "Third item"))),
H5Br,
H5Br,
UIMButtonGroup(["dropend"],
  UIMDropdownToggle("dropend", ["btn-secondary"], "Dropend"),
  UIMDropdownMenu(["aria-labelledby":"dropend"],
    UIMDropdownLink(["href":"#"], "First item"),
    UIMDropdownLink(["href":"#"], "Second item"),
    UIMDropdownLink(["href":"#"], "Third item")))`, 
  `<div class="btn-group dropup">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropup" data-bs-toggle="dropdown" aria-expanded="false">Dropup</button>
  <div class="dropdown-menu" aria-labelledby="dropup">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>
<br><br>
<div class="btn-group dropend">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropend" data-bs-toggle="dropdown" aria-expanded="false">Dropright</button>
  <div class="dropdown-menu" aria-labelledby="dropend">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>
<br><br>
<div class="btn-group dropstart">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropstart" data-bs-toggle="dropdown" aria-expanded="false">Dropleft</button>
  <div class="dropdown-menu" aria-labelledby="dropstart">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto alignmentExample = demoUIMExample("alignment", "Alignment", 
  H5Div(
    UIMButtonGroup(
     UIMDropdownToggle("dropdownEndAligned", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown right-aligned"),
        UIMDropdownMenu(["dropdown-menu-end"], ["aria-labelledby":"dropdownEndAligned"],
          UIMDropdownLink(["href":"#"], "First item"),
          UIMDropdownLink(["href":"#"], "Second item"),
          UIMDropdownLink(["href":"#"], "Third item")))
  ), 
  `UIMButtonGroup(
     UIMDropdownToggle("dropdownEndAligned", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown right-aligned"),
        UIMDropdownMenu(["dropdown-menu-end"], ["aria-labelledby":"dropdownEndAligned"],
          UIMDropdownLink(["href":"#"], "First item"),
          UIMDropdownLink(["href":"#"], "Second item"),
          UIMDropdownLink(["href":"#"], "Third item")))`, 
  `<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownEndAligned" data-bs-toggle="dropdown" aria-expanded="false">Dropdown right-aligned</button>
  <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownEndAligned">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto responsiveExample = demoUIMExample("responsive", "Responsive", 
  H5Div(
    UIMButtonGroup(
      UIMDropdownToggle("dropdownResponsive", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown responsive alignment"),
        UIMDropdownMenu(["dropdown-menu-lg-end"], ["aria-labelledby":"dropdownResponsive"],
          UIMDropdownLink(["href":"#"], "First item"),
          UIMDropdownLink(["href":"#"], "Second item"),
          UIMDropdownLink(["href":"#"], "Third item"))),
    H5Br,
    H5Br,
    UIMButtonGroup(
      UIMDropdownToggle("dropdownResponsive", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown responsive alignment"),
        UIMDropdownMenu(["dropdown-menu-end", "dropdown-menu-lg-start"], ["aria-labelledby":"dropdownResponsive"],
          UIMDropdownLink(["href":"#"], "First item"),
          UIMDropdownLink(["href":"#"], "Second item"),
          UIMDropdownLink(["href":"#"], "Third item")))
  ), 
  `UIMButtonGroup(
    UIMDropdownToggle("dropdownResponsive", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown responsive alignment"),
      UIMDropdownMenu(["dropdown-menu-lg-end"], ["aria-labelledby":"dropdownResponsive"],
        UIMDropdownLink(["href":"#"], "First item"),
        UIMDropdownLink(["href":"#"], "Second item"),
        UIMDropdownLink(["href":"#"], "Third item"))),
  H5Br,
  H5Br,
  UIMButtonGroup(
    UIMDropdownToggle("dropdownResponsive", ["btn-secondary"], ["data-bs-display":"static"], "Dropdown responsive alignment"),
      UIMDropdownMenu(["dropdown-menu-end", "dropdown-menu-lg-start"], ["aria-labelledby":"dropdownResponsive"],
        UIMDropdownLink(["href":"#"], "First item"),
        UIMDropdownLink(["href":"#"], "Second item"),
        UIMDropdownLink(["href":"#"], "Third item")))`, 
  `<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownEndAligned" data-bs-toggle="dropdown" aria-expanded="false">Dropdown right-aligned</button>
  <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownEndAligned">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);
    
auto buttonsExample = demoUIMExample("buttons", "Button items", 
  H5Div(
    UIMDropdown(
      UIMDropdownToggle("dropdownButtonItems", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      UIMDropdownMenu(["aria-labelledby":"dropdownButtonItems"],
        UIMButton(["dropdown-item"], "First item"),
        UIMButton(["dropdown-item"], "Second item"),
        UIMButton(["dropdown-item"], "Third item")))
  ), 
  `UIMDropdown(
  UIMDropdownToggle("dropdownButtonItems", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  UIMDropdownMenu(["aria-labelledby":"dropdownButtonItems"],
    UIMButton(["dropdown-item"], "First item"),
    UIMButton(["dropdown-item"], "Second item"),
    UIMButton(["dropdown-item"], "Third item")))`, 
  `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownButtonItems" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownButtonItems">
    <button type="button" class="dropdown-item">First button</button>
    <button type="button" class="dropdown-item">Second button</button>
    <button type="button" class="dropdown-item">Third button</button>
  </div>
</div>`);

auto activeExample = demoUIMExample("active", "Active item", 
  H5Div(
    UIMDropdown(
      UIMDropdownToggle("dropdownActive", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      UIMDropdownMenu(["aria-labelledby":"dropdownActive"],
        UIMDropdownLink(["dropdown-item", "active"], ["href":"#"], "First item"),
        UIMDropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
        UIMDropdownLink(["dropdown-item"], ["href":"#"], "Third item")))
  ), 
  `UIMDropdown(
  UIMDropdownToggle("dropdownActive", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  UIMDropdownMenu(["aria-labelledby":"dropdownActive"],
    UIMDropdownLink(["dropdown-item", "active"], ["href":"#"], "First item"),
    UIMDropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
    UIMDropdownLink(["dropdown-item"], ["href":"#"], "Third item")))`, 
  `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownActive" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownActive">
    <a href="#" class="dropdown-item active">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto disabledExample = demoUIMExample("disabled", "Disabled item", 
  H5Div(
    UIMDropdown(
      UIMDropdownToggle("dropdownDisabled", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      UIMDropdownMenu(["aria-labelledby":"dropdownDisabled"],
        UIMDropdownLink(["dropdown-item", "disabled"], ["href":"#"], "First item"),
        UIMDropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
        UIMDropdownLink(["dropdown-item"], ["href":"#"], "Third item")))
  ), 
  `UIMDropdown(
  UIMDropdownToggle("dropdownDisabled", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  UIMDropdownMenu(["aria-labelledby":"dropdownDisabled"],
    UIMDropdownLink(["dropdown-item", "disabled"], ["href":"#"], "First item"),
    UIMDropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
    UIMDropdownLink(["dropdown-item"], ["href":"#"], "Third item")))`, 
  `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownDisabled" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownDisabled">
    <a href="#" class="dropdown-item disabled">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto headerExample = demoUIMExample("header", "Header", 
  H5Div(
    UIMDropdown(
      UIMDropdownToggle("dropdownHeader", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      UIMDropdownMenu(["aria-labelledby":"dropdownHeader"],
        UIMDropdownHeader("Dropdown header"),
        UIMDropdownLink(["dropdown-item"], ["href":"#"], "First item"),
        UIMDropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
        UIMDropdownLink(["dropdown-item"], ["href":"#"], "Third item")))
  ), `UIMDropdown(
  UIMDropdownToggle("dropdownHeader", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  UIMDropdownMenu(["aria-labelledby":"dropdownHeader"],
    UIMDropdownHeader("Dropdown header"),
    UIMDropdownLink(["dropdown-item"], ["href":"#"], "First item"),
    UIMDropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
    UIMDropdownLink(["dropdown-item"], ["href":"#"], "Third item")))`, 
    `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownHeader" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownHeader">
    <h6 class="dropdown-header">Dropdown header</h6>
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto dividerExample = demoUIMExample("divider", "Divider", 
  H5Div(
    UIMDropdown(
      UIMDropdownToggle("dropdownDivider", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      UIMDropdownMenu(["aria-labelledby":"dropdownDivider"],
        UIMDropdownLink(["dropdown-item"], ["href":"#"], "First item"),
        UIMDropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
        UIMDropdownDivider,
        UIMDropdownLink(["dropdown-item"], ["href":"#"], "Third item")))
  ), 
  `UIMDropdown(
  UIMDropdownToggle("dropdownDivider", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  UIMDropdownMenu(["aria-labelledby":"dropdownDivider"],
    UIMDropdownLink(["dropdown-item"], ["href":"#"], "First item"),
    UIMDropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
    UIMDropdownDivider,
    UIMDropdownLink(["dropdown-item"], ["href":"#"], "Third item")))`, 
  `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownDivider" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownDivider">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <div class="dropdown-divider"></div>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto textExample = demoUIMExample("text", "Text item", 
  H5Div(
    UIMDropdown(
      UIMDropdownToggle("dropdownText", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
      UIMDropdownMenu(["aria-labelledby":"dropdownText"],
        H5Span(["dropdown-item-text"], "Dropdown text item"),
        UIMDropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
        UIMDropdownDivider,
        UIMDropdownLink(["dropdown-item"], ["href":"#"], "Third item")))
  ), 
  `UIMDropdown(
  UIMDropdownToggle("dropdownText", ["btn-secondary"], ["data-bs-toggle":"dropdown"], "Dropdown button"),
  UIMDropdownMenu(["aria-labelledby":"dropdownText"],
    H5Span(["dropdown-item-text"], "Dropdown text item"),
    UIMDropdownLink(["dropdown-item"], ["href":"#"], "Second item"),
    UIMDropdownDivider,
    UIMDropdownLink(["dropdown-item"], ["href":"#"], "Third item")))`, 
  `<div class="dropdown">
  <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownText" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
  <div class="dropdown-menu" aria-labelledby="dropdownText">
    <span class="dropdown-item-text">Dropdown text item</span>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);

auto referenceExample = demoUIMExample("reference", "Reference", 
  H5Div(
    UIMButtonGroup(
      UIMButton(["btn-secondary"], "Dropdown split button"),
      UIMDropdownToggle("dropdownReference", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown", "data-bs-reference":"parent"], H5Span(["visually-hidden"],"Toggle dropdown")),
      UIMDropdownMenu(["aria-labelledby":"dropdownReference"],
        UIMDropdownLink(["href":"#"], "First item"),
        UIMDropdownLink(["href":"#"], "Second item"),
        UIMDropdownLink(["href":"#"], "Third item")))
  ), 
  `UIMButtonGroup(
  UIMButton(["btn-secondary"], "Dropdown split button"),
  UIMDropdownToggle("dropdownReference", ["btn-secondary", "dropdown-toggle-split"], ["data-bs-toggle":"dropdown", "data-bs-reference":"parent"], H5Span(["visually-hidden"],"Toggle dropdown")),
  UIMDropdownMenu(["aria-labelledby":"dropdownReference"],
    UIMDropdownLink(["href":"#"], "First item"),
    UIMDropdownLink(["href":"#"], "Second item"),
    UIMDropdownLink(["href":"#"], "Third item")))`, 
  `<div class="btn-group">
  <button type="button" class="btn btn-secondary">Dropdown split button</button>
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" id="dropdownReference" data-bs-toggle="dropdown" aria-expanded="false" data-bs-reference="parent"><span class="visually-hidden">Toggle dropdown</span></button>
  <div class="dropdown-menu" aria-labelledby="dropdownReference">
    <a href="#" class="dropdown-item">First item</a>
    <a href="#" class="dropdown-item">Second item</a>
    <a href="#" class="dropdown-item">Third item</a>
  </div>
</div>`);
 */
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

/*       buttonExample, 
      linkExample, 
      splitExample, 
      sizingExample, 
      darkExample, 
      navbarExample, 
      directionExample, 
      alignmentExample, 
      responsiveExample,
      buttonsExample, 
      activeExample, 
      disabledExample, 
      headerExample, 
      dividerExample, 
      textExample, 
      referenceExample  */

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}