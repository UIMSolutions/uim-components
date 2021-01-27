module uim.components.demos.components.buttons;

import uim.components;

static this() {
	demoUIMComps.pages("components/buttons", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Buttons - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto defaultExample = demoUIMExample("default", "Default", 
  H5Div(
    UIMButton(["btn-primary"], "Primary"), 
    UIMButton(["btn-secondary"], "Secondary"),
    UIMButton(["btn-success"], "Success"),
    UIMButton(["btn-danger"], "Danger"),
    UIMButton(["btn-warning"], "Warning"),
    UIMButton(["btn-info"], "Info"),
    UIMButton(["btn-light"], "Light"),
    UIMButton(["btn-dark"], "Dark")
    ), 
    `UIMButton(["btn-primary"], "Primary"), 
    UIMButton(["btn-secondary"], "Secondary"),
    UIMButton(["btn-success"], "Success"),
    UIMButton(["btn-danger"], "Danger"),
    UIMButton(["btn-warning"], "Warning"),
    UIMButton(["btn-info"], "Info"),
    UIMButton(["btn-light"], "Light"),
    UIMButton(["btn-dark"], "Dark")`, ``);

auto linksExample = demoUIMExample("links", "Links", 
  H5Div(
    UIMButton(["btn-link"], "Link")
    ), 
    `UIMButton(["btn-link"], "Link")`, ``);
    
auto classesExample = demoUIMExample("classes", "Button class<p>Default button styles applied to <code>&lt;a&gt;</code> and <code>&lt;input&gt;</code> elements</p>", 
  H5Div(
    UIMButtonLink(["btn-primary"], ["href":"#", "role":"button"], "Link"), 
    H5Input(["btn", "btn-success"], ["type":"button", "value":"Input"]),
    H5Input(["btn", "btn-danger"], ["type":"submit", "value":"Submit"]),
    H5Input(["btn", "btn-warning"], ["type":"reset", "value":"Reset"])
    ), 
    `UIMButtonLink(["btn-primary"], ["href":"#", "role":"button"], "Link"), 
    H5Input(["btn", "btn-success"], ["type":"button", "value":"Input"]),
    H5Input(["btn", "btn-danger"], ["type":"submit", "value":"Submit"]),
    H5Input(["btn", "btn-warning"], ["type":"reset", "value":"Reset"])`, ``);

auto outlinesExample = demoUIMExample("outlines", "Outline styles", 
  H5Div(
    UIMButton(["btn-outline-primary"], "Primary"), 
    UIMButton(["btn-outline-secondary"], "Secondary"), 
    UIMButton(["btn-outline-success"], "Success"), 
    UIMButton(["btn-outline-danger"], "Danger"), 
    UIMButton(["btn-outline-warning"], "Warning"), 
    UIMButton(["btn-outline-info"], "Info"), 
    UIMButton(["btn-outline-light"], "Light"), 
    UIMButton(["btn-outline-dark"], "Dark")), 
    `UIMButton(["btn-outline-primary"], "Primary"), 
    UIMButton(["btn-outline-secondary"], "Secondary"), 
    UIMButton(["btn-outline-success"], "Success"), 
    UIMButton(["btn-outline-danger"], "Danger"), 
    UIMButton(["btn-outline-warning"], "Warning"), 
    UIMButton(["btn-outline-info"], "Info"), 
    UIMButton(["btn-outline-light"], "Light"), 
    UIMButton(["btn-outline-dark"], "Dark")`, ``);

auto sizingExample = demoUIMExample("sizing", "Unterschiedliche Größen", 
  H5Div(
    UIMButton(["btn-secondary", "btn-sm"], "Small"), 
    UIMButton(["btn-secondary"], "Default"), 
    UIMButton(["btn-secondary", "btn-lg"], "Large")
    ), 
    `UIMButton(["btn-secondary", "btn-sm"], "Small"), 
    UIMButton(["btn-secondary"], "Default"), 
    UIMButton(["btn-secondary", "btn-lg"], "Large")`, ``);

auto blockExample = demoUIMExample("block", "Block", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Full width using sizing utility"), 
    UIMButton(["btn-secondary", "w-100"], "Block button"), 
    H5H4(["h5", "text-muted", "mt-3"], "Full width using display utility"),
    H5Div(["d-grid"], 
      UIMButton(["btn-secondary"], "Block button")),
    H5H4(["h5", "text-muted", "mt-3"], "Column width"), 
    H5Div(["d-grid", "col-6", "mx-auto"], 
      UIMButton(["btn-secondary"], "Block button")),
    H5H4(["h5", "text-muted", "mt-3"], "Multiple block buttons"), 
    H5Div(["d-grid", "gap-2"], 
      UIMButton(["btn-secondary"], "Block button"),
      UIMButton(["btn-secondary"], "Block button")),
    H5H4(["h5", "text-muted", "mt-3"], "Responsive"), 
    H5Div(["d-grid", "gap-2", "d-lg-block"], 
      UIMButton(["btn-secondary"], "Block button"),
      UIMButton(["btn-secondary"], "Block button"))
  ), 
  `H5H4(["h5", "text-muted", "mt-3"], "Full width using sizing utility"), 
    UIMButton(["btn-secondary", "w-100"], "Block button"), 
    H5H4(["h5", "text-muted", "mt-3"], "Full width using display utility"),
    H5Div(["d-grid"], 
      UIMButton(["btn-secondary"], "Block button")),
    H5H4(["h5", "text-muted", "mt-3"], "Column width"), 
    H5Div(["d-grid", "col-6", "mx-auto"], 
      UIMButton(["btn-secondary"], "Block button")),
    H5H4(["h5", "text-muted", "mt-3"], "Multiple block buttons"), 
    H5Div(["d-grid", "gap-2"], 
      UIMButton(["btn-secondary"], "Block button"),
      UIMButton(["btn-secondary"], "Block button")),
    H5H4(["h5", "text-muted", "mt-3"], "Responsive"), 
    H5Div(["d-grid", "gap-2", "d-lg-block"], 
      UIMButton(["btn-secondary"], "Block button"),
      UIMButton(["btn-secondary"], "Block button"))`, ``); 

auto blockExample2 = demoUIMExample("block", "Block", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Active"), 
    UIMButton(["btn-primary"], "Not active"),
    UIMButton(["btn-primary", "active"], "Active"),
    H5H4(["h5", "text-muted", "mt-3"], "Disabled"),
    UIMButton(["btn-primary"], ["disabled":"disabled"], "Disabled button"),
    H5A(["btn", "btn-secondary", "disabled"], ["href":"#", "tabindex":"-1", "role":"button", "aria-disabled":"true"], "Disabled link")
    ), 
    `UIMButton(["btn-primary"], "Not active"),
    UIMButton(["btn-primary", "active"], "Active"),
    UIMButton(["btn-primary"], ["disabled":"disabled"], "Disabled button"),
    H5A(["btn", "btn-secondary", "disabled"], ["href":"#", "tabindex":"-1", "role":"button", "aria-disabled":"true"], "Disabled link")`, ``);

auto pluginExample = demoUIMExample("plugin", "Button Plugin", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Toggle buttons"),
    UIMButton(["btn-primary"], ["data-bs-toggle":"button", "autocomplete":"off"], "Not active"),
    UIMButton(["btn-primary", "active"], ["data-bs-toggle":"button", "autocomplete":"off", "aria-pressed":"true"], "Active"),
    UIMButton(["btn-primary"], ["data-bs-toggle":"button", "autocomplete":"off","disabled":"disabled"], "Disabled"),
    H5H4(["h5", "text-muted", "mt-3"], "Toggle links"),
    H5A(["btn", "btn-primary"], ["href":"#", "role":"button", "data-bs-toggle":"button"], "Not active"),
    H5A(["btn", "btn-primary", "active"], ["href":"#", "role":"button", "data-bs-toggle":"button", "aria-pressed":"true"], "Active"),
    H5A(["btn", "btn-primary", "disabled"], ["href":"#", "role":"button", "data-bs-toggle":"button"], "Disabled")
    ), 
    `UIMButton(["btn-primary"], ["data-bs-toggle":"button", "autocomplete":"off"], "Not active"),
    UIMButton(["btn-primary", "active"], ["data-bs-toggle":"button", "autocomplete":"off", "aria-pressed":"true"], "Active"),
    UIMButton(["btn-primary"], ["data-bs-toggle":"button", "autocomplete":"off","disabled":"disabled"], "Disabled"),
    H5A(["btn", "btn-primary"], ["href":"#", "role":"button", "data-bs-toggle":"button"], "Not active"),
    H5A(["btn", "btn-primary", "active"], ["href":"#", "role":"button", "data-bs-toggle":"button", "aria-pressed":"true"], "Active"),
    H5A(["btn", "btn-primary", "disabled"], ["href":"#", "role":"button", "data-bs-toggle":"button"], "Disabled")`, ``);

      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/components"], 
    ["UI Manufaktur", "Demos", "uim-components", "Components"], "Buttons")),
  UIMContainer(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Buttons"),
      H5Hr,

      defaultExample, 
      linksExample, 
      classesExample, 
      outlinesExample, 
      sizingExample, 
      blockExample,
      blockExample2,
      pluginExample

    ))).toString;

    }
  });
}