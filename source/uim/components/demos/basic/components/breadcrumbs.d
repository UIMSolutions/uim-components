module uim.components.demos.components.breadcrumbs;

import uim.components;

static this() {
	demoUIMComps.pages("components/breadcrumbs", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Breadcrumbs - uim-components Demo",
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
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/components", "/demos/uim-components/components/basic"], 
    ["UI Manufaktur", "Demos", "uim-components", "Components", "Basic"], "Breadcrumbs")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Breadcrumbs"),
      H5Hr,

/* demoUIMExample("default", "Default", 
UIMBreadcrumb.list(  
  UIMBreadcrumbItem.link(["href":"#"], "Start"),
  UIMBreadcrumbItem.link(["href":"#"], "Engineering"),
  UIMBreadcrumbItem.link(["href":"#"], "Robots"),
  UIMBreadcrumbItem(["active"], ["aria-current":"page"], "R2D2")), 
`UIMBreadcrumb(
  UIMBreadcrumbList(  
    UIMBreadcrumbItem(
      H5A(["href":"#"], "Start")),
    UIMBreadcrumbItem(
      H5A(["href":"#"], "Engineering")),
    UIMBreadcrumbItem(
      H5A(["href":"#"], "Robots")),
    UIMBreadcrumbItem(["active"], ["aria-current":"page"], "R2D2")))

</code></pre><p>Weitere (kompaktere) Möglichkeit</p><pre><code>

UIMBreadcrumb.list(  
  UIMBreadcrumbItem.link(["href":"#"], "Start"),
  UIMBreadcrumbItem.link(["href":"#"], "Engineering"),
  UIMBreadcrumbItem.link(["href":"#"], "Robots"),
  UIMBreadcrumbItem(["active"], ["aria-current":"page"], "R2D2"))
`,
`<nav aria-label="Breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item">H5A(["href":"#", >Start</a></li>
    <li class="breadcrumb-item">H5A(["href":"#", >Engineering</a></li>
    <li class="breadcrumb-item">H5A(["href":"#", >Robots</a></li>
    <li class="breadcrumb-item active" aria-current="page">R2D2</li>
  </ol>
</nav>`
) */
    )
  )
).toString;
    }
  });
}