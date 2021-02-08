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
					"pageTitle": "Buttons - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMButton.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content() { 

auto defaultExample = demoUIMExample("default", "Default", 
  H5Div(
    UIMButton(["color":"primary"], "Primary"), 
    UIMButton(["color":"secondary"], "Secondary"),
    UIMButton(["color":"success"], "Success"),
    UIMButton(["color":"danger"], "Danger"),
    UIMButton(["color":"warning"], "Warning"),
    UIMButton(["color":"info"], "Info"),
    UIMButton(["color":"light"], "Light"),
    UIMButton(["color":"dark"], "Dark")
  ), 
`<uim-button color="primary">Primary</uim-button>
<uim-button color="secondary">Secondary</uim-button>
<uim-button color="success">Success</uim-button>
<uim-button color="danger">Danger</uim-button>
<uim-button color="warning">Warning</uim-button>
<uim-button color="info">Info</uim-button>
<uim-button color="light">Light</uim-button>
<uim-button color="dark">Dark</uim-button>`, 
`<button class="btn btn-primary" aria-pressed="false" type="button">Primary</button>
<button class="btn btn-secondary" aria-pressed="false" type="button">Secondary</button>
<button class="btn btn-success" aria-pressed="false" type="button">Success</button>
<button class="btn btn-danger" aria-pressed="false" type="button">Danger</button>
<button class="btn btn-warning" aria-pressed="false" type="button">Warning</button>
<button class="btn btn-info" aria-pressed="false" type="button">Info</button>
<button class="btn btn-light" aria-pressed="false" type="button">Light</button>
<button class="btn btn-dark" aria-pressed="false" type="button">Dark</button>`);

auto linksExample = demoUIMExample("links", "Links", 
  H5Div(
    UIMButton(["color":"link"], "Link")
  ), 
  `<uim-button color="link">Link</uim-button>`, 
  `<div><button class="btn btn-link" aria-pressed="false" type="button">Link</button></div>`);
    
auto classesExample = demoUIMExample("classes", `Button class<p>Default button styles applied to <code>&lt;a&gt;</code> and <code>&lt;input&gt;</code> elements")`, 
  H5Div(
    UIMButtonLink(["btn-primary"], ["href":"#", "role":"button"], "Link"), 
    H5Input(["btn", "btn-success"], ["type":"button", "value":"Input"]),
    H5Input(["btn", "btn-danger"], ["type":"submit", "value":"Submit"]),
    H5Input(["btn", "btn-warning"], ["type":"reset", "value":"Reset"])
    ), ``, ``);

auto outlinesExample = demoUIMExample("outlines", "Outline styles", 
  H5Div(
    UIMButton(["outline":"primary"], "Primary"), 
    UIMButton(["outline":"secondary"], "Secondary"), 
    UIMButton(["outline":"success"], "Success"), 
    UIMButton(["outline":"danger"], "Danger"), 
    UIMButton(["outline":"warning"], "Warning"), 
    UIMButton(["outline":"info"], "Info"), 
    UIMButton(["outline":"light"], "Light"), 
    UIMButton(["outline":"dark"], "Dark")), 
    ``, ``);

auto sizingExample = demoUIMExample("sizing", "Unterschiedliche Größen", 
  H5Div(
    UIMButton(["size":"sm", "color":"secondary"], "Small"), 
    UIMButton(["color":"secondary"], "Default"), 
    UIMButton(["size":"lg", "color":"secondary"], "Large")
    ), 
    `<uim-button color="secondary" size="sm">Small</uim-button>
<uim-button color="secondary">Default</uim-button>
<uim-button color="secondary" size="lg">Large</uim-button>`, 
    `<button class="btn btn-secondary btn-sm" aria-pressed="false" type="button">Small</button>
<button class="btn btn-secondary" aria-pressed="false" type="button">Default</button>
<button class="btn btn-secondary btn-lg" aria-pressed="false" type="button">Large</button>`);

auto blockExample = demoUIMExample("block", "Block", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Full width using sizing utility"), 
    UIMButton(["w-100"], ["color":"secondary"], "Block button"), 
    H5H4(["h5", "text-muted", "mt-3"], "Full width using display utility"),
    H5Div(["d-grid"], 
      UIMButton(["color":"secondary"], "Block button")),
    H5H4(["h5", "text-muted", "mt-3"], "Column width"), 
    H5Div(["d-grid", "col-6", "mx-auto"], 
      UIMButton(["color":"secondary"], "Block button")),
    H5H4(["h5", "text-muted", "mt-3"], "Multiple block buttons"), 
    H5Div(["d-grid", "gap-2"], 
      UIMButton(["color":"secondary"], "Block button"),
      UIMButton(["color":"secondary"], "Block button")),
    H5H4(["h5", "text-muted", "mt-3"], "Responsive"), 
    H5Div(["d-grid", "gap-2", "d-lg-block"], 
      UIMButton(["color":"secondary"], "Block button"),
      UIMButton(["color":"secondary"], "Block button"))
  ), ``, ``); 

auto blockExample2 = demoUIMExample("block", "Block", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Active"), 
    UIMButton(["color":"primary"], "Not active"),
    UIMButton(["active"], ["color":"primary"], "Active"),
    H5H4(["h5", "text-muted", "mt-3"], "Disabled"),
    UIMButton(["color":"primary", "disabled":"disabled"], "Disabled button"),
    H5A(["btn", "btn-secondary", "disabled"], ["href":"#", "tabindex":"-1", "role":"button", "aria-disabled":"true"], "Disabled link")
  ), ``, ``);

auto pluginExample = demoUIMExample("plugin", "Button Plugin", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Toggle buttons"),
    UIMButton(["color":"primary", "data-bs-toggle":"button", "autocomplete":"off"], "Not active"),
    UIMButton(["active"], ["color":"primary", "data-bs-toggle":"button", "autocomplete":"off", "aria-pressed":"true"], "Active"),
    UIMButton(["color":"primary", "data-bs-toggle":"button", "autocomplete":"off","disabled":"disabled"], "Disabled"),
    H5H4(["h5", "text-muted", "mt-3"], "Toggle links"),
    H5A(["btn", "btn-primary"], ["href":"#", "role":"button", "data-bs-toggle":"button"], "Not active"),
    H5A(["btn", "btn-primary", "active"], ["href":"#", "role":"button", "data-bs-toggle":"button", "aria-pressed":"true"], "Active"),
    H5A(["btn", "btn-primary", "disabled"], ["href":"#", "role":"button", "data-bs-toggle":"button"], "Disabled")
    ), 
    `UIMButton(["color":"primary"], ["data-bs-toggle":"button", "autocomplete":"off"], "Not active"),
    UIMButton(["color":"primary", "active"], ["data-bs-toggle":"button", "autocomplete":"off", "aria-pressed":"true"], "Active"),
    UIMButton(["color":"primary"], ["data-bs-toggle":"button", "autocomplete":"off","disabled":"disabled"], "Disabled"),
    H5A(["btn", "btn-primary"], ["href":"#", "role":"button", "data-bs-toggle":"button"], "Not active"),
    H5A(["btn", "btn-primary", "active"], ["href":"#", "role":"button", "data-bs-toggle":"button", "aria-pressed":"true"], "Active"),
    H5A(["btn", "btn-primary", "disabled"], ["href":"#", "role":"button", "data-bs-toggle":"button"], "Disabled")`, ``);

      return 
H5Main("app", [""],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/components", "/demos/uim-components/components/basic"], 
    ["UI Manufaktur", "Demos", "uim-components", "Components", "Basic"], "Buttons")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
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