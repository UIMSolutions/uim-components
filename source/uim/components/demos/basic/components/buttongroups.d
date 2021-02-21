module uim.components.demos.components.buttongroups;

import uim.components;

static this() {
	demoUIMComps.pages("basic/components/buttongroups", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Buttongroups - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          buttonsVue3("vue")~
          `vue.mount('#app');`]);
		} 
			
    override string content() { 
return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Basic", "Components"], "Button Groups")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "components"),    
      listCompSections("basic", "components", "buttongroups"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Buttons Groups"),
      H5Hr,

demoUIMExample("default", "Default",  
  H5Div(
    UIMButtonGroup(["aria-label":"Default button group"], 
      UIMButton(["btn-secondary"], "Home"), 
      UIMButton(["btn-secondary"], "Profile"),
      UIMButton(["btn-secondary"], "Settings"))
      ), 
      `UIMButtonGroup(["aria-label":"Default button group"], 
      UIMButton(["btn-secondary"], "Home"), 
      UIMButton(["btn-secondary"], "Profile"),
      UIMButton(["btn-secondary"], "Settings"))`, ``),

demoUIMExample("states", "States",  
  H5Div(
    UIMButtonGroup(["aria-label":"Default button group"], 
      UIMButton(["btn-secondary", "active"], "Home"), 
      UIMButton(["btn-secondary"], "Profile"),
      UIMButton(["btn-secondary"], "Settings"))
      ), 
      `UIMButtonGroup(["aria-label":"Default button group"], 
      UIMButton(["btn-secondary", "active"], "Home"), 
      UIMButton(["btn-secondary"], "Profile"),
      UIMButton(["btn-secondary"], "Settings"))`, ``),

demoUIMExample("outlined", "Outlined",  
  H5Div(
    UIMButtonGroup(["aria-label":"Default button group"], 
      UIMButton(["btn-outline-secondary"], "Home"), 
      UIMButton(["btn-outline-secondary"], "Profile"),
      UIMButton(["btn-outline-secondary"], "Settings"))
      ), 
      `UIMButtonGroup(["aria-label":"Default button group"], 
      UIMButton(["btn-outline-secondary"], "Home"), 
      UIMButton(["btn-outline-secondary"], "Profile"),
      UIMButton(["btn-outline-secondary"], "Settings"))`, ``),


demoUIMExample("links", "Links",  
  H5Div(
    UIMButtonGroup(["aria-label":"Default button group"], 
      UIMButtonLink(["btn-secondary"], ["href":"#"], "Home"), 
      UIMButtonLink(["btn-secondary"], ["href":"#"], "Profile"),
      UIMButtonLink(["btn-secondary"], ["href":"#"], "Settings"))), 
      `UIMButtonGroup(["aria-label":"Default button group"], 
      UIMButtonLink(["btn-secondary"], ["href":"#"], "Home"), 
      UIMButtonLink(["btn-secondary"], ["href":"#"], "Profile"),
      UIMButtonLink(["btn-secondary"], ["href":"#"], "Settings"))`, ``),

demoUIMExample("toolbar", "Toolbar",  
  H5Div(
    UIMButtonToolbar(["aria-label":"Toolbar button group"], 
      UIMButtonGroup(["aria-label":"First group"], 
        UIMButton(["btn-secondary"], "1"), 
        UIMButton(["btn-secondary"], "2"),
        UIMButton(["btn-secondary"], "3")),
      UIMButtonGroup(["aria-label":"Second group"], 
        UIMButton(["btn-secondary"], "4"), 
        UIMButton(["btn-secondary"], "5"),
        UIMButton(["btn-secondary"], "6")),
      UIMButtonGroup(["aria-label":"Third group"], 
        UIMButton(["btn-secondary"], "7"), 
        UIMButton(["btn-secondary"], "8"),
        UIMButton(["btn-secondary"], "9")))), 
        `UIMButtonToolbar(["aria-label":"Toolbar button group"], 
      UIMButtonGroup(["aria-label":"First group"], 
        UIMButton(["btn-secondary"], "1"), 
        UIMButton(["btn-secondary"], "2"),
        UIMButton(["btn-secondary"], "3")),
      UIMButtonGroup(["aria-label":"Second group"], 
        UIMButton(["btn-secondary"], "4"), 
        UIMButton(["btn-secondary"], "5"),
        UIMButton(["btn-secondary"], "6")),
      UIMButtonGroup(["aria-label":"Third group"], 
        UIMButton(["btn-secondary"], "7"), 
        UIMButton(["btn-secondary"], "8"),
        UIMButton(["btn-secondary"], "9")))`, ``),

demoUIMExample("sizing", "Sizing",  
  H5Div(
    UIMButtonGroup(["btn-group-sm"], ["aria-label":"Small button group"], 
      UIMButton(["btn-secondary"], "Home"), 
      UIMButton(["btn-secondary"], "Profile"),
      UIMButton(["btn-secondary"], "Settings")),
    UIMButtonGroup(["aria-label":"Default button group"], 
      UIMButton(["btn-secondary"], "Home"), 
      UIMButton(["btn-secondary"], "Profile"),
      UIMButton(["btn-secondary"], "Settings")),
    UIMButtonGroup(["btn-group-lg"], ["aria-label":"Large button group"], 
      UIMButton(["btn-secondary"], "Home"), 
      UIMButton(["btn-secondary"], "Profile"),
      UIMButton(["btn-secondary"], "Settings"))
      ), 
      `UIMButtonGroup(["btn-group-sm"], ["aria-label":"Small button group"], 
      UIMButton(["btn-secondary"], "Home"), 
      UIMButton(["btn-secondary"], "Profile"),
      UIMButton(["btn-secondary"], "Settings")),
    UIMButtonGroup(["aria-label":"Default button group"], 
      UIMButton(["btn-secondary"], "Home"), 
      UIMButton(["btn-secondary"], "Profile"),
      UIMButton(["btn-secondary"], "Settings")),
    UIMButtonGroup(["btn-group-lg"], ["aria-label":"Large button group"], 
      UIMButton(["btn-secondary"], "Home"), 
      UIMButton(["btn-secondary"], "Profile"),
      UIMButton(["btn-secondary"], "Settings"))`, ``),

demoUIMExample("nesting", "Nesting",  
  H5Div(
    UIMButtonGroup(["aria-label":"Button group with nested dropdown"], 
      UIMButton(["btn-secondary"], "Home"), 
      UIMButton(["btn-secondary"], "Profile"),
      UIMButtonGroup( 
        UIMButton("btnGroupNesting", ["btn-secondary", "dropdown-toggle"], ["data-bs-toggle":"dropdown", "aria-expanded":"false"], "Settings"),
        H5Div(["dropdown-menu"], ["aria-labelledby":"btnGroupNesting"], 
          H5A(["dropdown-item"], ["href":"#"], "Dropdown link"),
          H5A(["dropdown-item"], ["href":"#"], "Dropdown link"))))
  ), 
  `UIMButtonGroup(["aria-label":"Button group with nested dropdown"], 
      UIMButton(["btn-secondary"], "Home"), 
      UIMButton(["btn-secondary"], "Profile"),
      UIMButtonGroup( 
        UIMButton("btnGroupNesting", ["btn-secondary", "dropdown-toggle"], ["data-bs-toggle":"dropdown", "aria-expanded":"false"], "Settings"),
        H5Div(["dropdown-menu"], ["aria-labelledby":"btnGroupNesting"], 
          H5A(["dropdown-item"], ["href":"#"], "Dropdown link"),
          H5A(["dropdown-item"], ["href":"#"], "Dropdown link"))))`, ``),

demoUIMExample("vertical", "Vertical",  
  H5Div(
    H5Div(["btn-group-vertical"], ["role":"group", "aria-label":"Vertical button group"],
      UIMButton(["btn-secondary"], "Home"), 
      UIMButton(["btn-secondary"], "Profile"),
      UIMButton(["btn-secondary"], "Settings"))
      ), 
      `H5Div(["btn-group-vertical"], ["role":"group", "aria-label":"Vertical button group"],
      UIMButton(["btn-secondary"], "Home"), 
      UIMButton(["btn-secondary"], "Profile"),
      UIMButton(["btn-secondary"], "Settings"))`, ``)
    
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}