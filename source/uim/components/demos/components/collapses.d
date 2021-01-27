module uim.components.demos.components.collapses;

import uim.components;

static this() {
	demoUIMComps.pages("components/collapses", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Collapses - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

/* uto linkExample = demoUIMExample("link", "Link<p>Show and hide other content with link using the 'href' attribute</p>", 
  H5Div(
    UIMButtonLink(["btn-primary"], ["href":"#hrefCollapse", "data-bs-toggle":"collapse", "aria-expanded":"false", "aria-controls":"hrefCollapse"], "Link with href"),
    UIMCollapse("hrefCollapse",
      UIMAlert(["alert-success"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
      Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc."))
      ), 
`UIMButtonLink(["btn-primary"], ["href":"#hrefCollapse", "data-bs-toggle":"collapse", "aria-expanded":"false", "aria-controls":"hrefCollapse"], "Link with href"),
  UIMCollapse("hrefCollapse",
    UIMAlert(["alert-success"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
    Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc."))`, 
      ``);

auto buttonExample = demoUIMExample("button", "Button<p>Show and hide other content with button using the 'data-bs-target' attribute</p>", 
  H5Div(
    UIMButton(["btn-primary"], ["data-bs-toggle":"collapse", "data-bs-target":"#dataTargetCollapse", "aria-expanded":"false", "aria-controls":"dataTargetCollapse"], "Button with data-bs-target"),
    UIMCollapse("dataTargetCollapse",
      UIMAlert(["alert-success"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
        Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc."))), ``, ``);

auto multipleExample = demoUIMExample("multiple", "Multiple targets", 
  H5Div(
    UIMButtonLink(["btn-primary"], ["href":"#hrefCollapse", "data-bs-toggle":"collapse", "data-bs-target":".multiple-collapse", "aria-expanded":"false", "aria-controls":"multipleCollapse1 multipleCollapse2"], "Button with data-bs-target"),
    UIMCollapse("multipleCollapse1", ["multiple-collapse"], 
      UIMAlert(["alert-success"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
        Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.")),
    UIMCollapse("multipleCollapse2", ["multiple-collapse"], 
      UIMAlert(["alert-success"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
        Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc."))
  ), 
  `UIMButtonLink(["btn-primary"], ["href":"#hrefCollapse", "data-bs-toggle":"collapse", "data-bs-target":".multiple-collapse", "aria-expanded":"false", "aria-controls":"multipleCollapse1 multipleCollapse2"], "Button with data-bs-target"),
  UIMCollapse("multipleCollapse1", ["multiple-collapse"], 
    UIMAlert(["alert-success"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
      Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.")),
  UIMCollapse("multipleCollapse2", ["multiple-collapse"], 
    UIMAlert(["alert-success"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
      Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc."))`, 
  `<button type="button" class="btn btn-primary" data-bs-toggle="collapse" data-bs-target=".multiple-collapse" aria-expanded="false" aria-controls="multipleCollapse1 multipleCollapse2">Button with data-bs-target</button>
<div class="collapse multiple-collapse" id="multipleCollapse1">
  <div class="alert alert-success">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.</div>
</div>
<div class="collapse multiple-collapse" id="multipleCollapse2">
  <div class="alert alert-success">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.</div>
</div>`); */

      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/components"], 
    ["UI Manufaktur", "Demos", "uim-components", "Components"], "Collapses")),
  UIMContainer(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Collapses"),
      H5Hr

 /*      linkExample, 
      buttonExample,
      multipleExample */
    
    ))).toString; }
  });
}