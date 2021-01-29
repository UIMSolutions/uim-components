module uim.components.demos.components.listgroups;

import uim.components;

static this() {
	demoUIMComps.pages("components/listgroups", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "List Groups - uim-components Demo",
          ]);
		} 
			
    override string content() { 

auto defaultExample = demoUIMExample("default", "Default", 
  H5Div(
    UIMList(
      UIMListItem("List group item one"),
      UIMListItem("List group item two"),
      UIMListItem("List group item three"))
  ), ``, ``);

auto activeExample = demoUIMExample("active", "Active item",      
  H5Div(
    UIMList(
      UIMListItem("List group item one"),
      UIMListItem(["active"], ["aria-current":"true"], "List group item two"),
      UIMListItem("List group item three"))
  ), ``, ``);

auto disabledExample = demoUIMExample("disabled", "Disabled item",      
  H5Div(
    UIMList(
      UIMListItem("List group item one"),
      UIMListItem(["disabled"], ["aria-disabled":"true"], "List group item two"),
      UIMListItem("List group item three"))
  ), ``, ``);

auto linksExample = demoUIMExample("links", "Links",      
  H5Div(
    UIMList(
      UIMListLink(["href":"#"], "List group item one"),
      UIMListLink(["active"], ["href":"#", "aria-disabled":"true"], "List group item two"),
      UIMListLink(["disabled"], ["href":"#", "aria-disabled":"true", "tabindex":"-1"], "List group item three"))
  ), ``, ``);

auto buttonsExample = demoUIMExample("buttons", "Buttons",      
  H5Div(
    UIMList(
      UIMButton(["list-group-item", "list-group-item-action"], "List group item one"),
      UIMButton(["list-group-item", "list-group-item-action", "active"], ["aria-current":"true"], "List group item two"),
      UIMButton(["list-group-item", "list-group-item-action", "active"], ["aria-current":"true"], "List group item three"))
  ), ``, ``);

auto flushExample = demoUIMExample("flush", "Flush",      
  H5Div(
    UIMList(["list-group-flush"],
      UIMListItem("List group item one"),
      UIMListItem("List group item two"),
      UIMListItem("List group item three"))
  ), ``, ``);

auto horizontalExample = demoUIMExample("horizontal", "Horizontal",      
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "All breakpoints"),
    UIMList(["list-group-horizontal"],
      UIMListItem("List group item one"),
      UIMListItem("List group item two"),
      UIMListItem("List group item three")),
    H5H4(["h5", "text-muted", "mt-3"], "Small and up"),
    UIMList(["list-group-horizontal-sm"],
      UIMListItem("List group item one"),
      UIMListItem("List group item two"),
      UIMListItem("List group item three")),
    H5H4(["h5", "text-muted", "mt-3"], "Medium and up"),
    UIMList(["list-group-horizontal-md"],
      UIMListItem("List group item one"),
      UIMListItem("List group item two"),
      UIMListItem("List group item three")),
    H5H4(["h5", "text-muted", "mt-3"], "Large and up"),
    UIMList(["list-group-horizontal-lg"],
      UIMListItem("List group item one"),
      UIMListItem("List group item two"),
      UIMListItem("List group item three")),
    H5H4(["h5", "text-muted", "mt-3"], "Extra Large and up"),
    UIMList(["list-group-horizontal-xl"],
      UIMListItem("List group item one"),
      UIMListItem("List group item two"),
      UIMListItem("List group item three"))
  ), ``, ``);

auto equalwidthExample = demoUIMExample("equalwidth", "Equal-width list group item",      
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "All breakpoints"),
    UIMList(["list-group-horizontal"],
      UIMListItem(["flex-fill"], "List group item one"),
      UIMListItem(["flex-fill"], "List group item two"),
      UIMListItem(["flex-fill"], "List group item three"))
  ), ``, ``);

auto colorsExample = demoUIMExample("colors", "Contextual color classes",      
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "All breakpoints"),
    UIMList(["list-group-horizontal"],
      UIMListItem(["flex-fill"], "List group item one"),
      UIMListItem(["flex-fill"], "List group item two"),
      UIMListItem(["flex-fill"], "List group item three")),
    H5H4(["h5", "text-muted", "mt-3"], "Normal list group"),
    UIMList(
      UIMListItem("Default list group item"),
      UIMListItem(["list-group-item-primary"], "Primary"),
      UIMListItem(["list-group-item-secondary"], "Secondary"),
      UIMListItem(["list-group-item-success"], "Succcess"),
      UIMListItem(["list-group-item-danger"], "Danger"),
      UIMListItem(["list-group-item-warning"], "Warning"),
      UIMListItem(["list-group-item-info"], "Info"),
      UIMListItem(["list-group-item-light"], "Light"),
      UIMListItem(["list-group-item-dark"], "Dark")),
    H5H4(["h5", "text-muted", "mt-3"], "List group with links"),
    UIMList(
      UIMListLink("Default list group item"),
      UIMListLink(["list-group-item-primary"], "Primary"),
      UIMListLink(["list-group-item-secondary"], "Secondary"),
      UIMListLink(["list-group-item-success"], "Succcess"),
      UIMListLink(["list-group-item-danger"], "Danger"),
      UIMListLink(["list-group-item-warning"], "Warning"),
      UIMListLink(["list-group-item-info"], "Info"),
      UIMListLink(["list-group-item-light"], "Light"),
      UIMListLink(["list-group-item-dark"], "Dark"))
  ), ``, ``);
                
auto badgesExample = demoUIMExample("badges", "Badges",      
  H5Div(
    UIMList(
      UIMListItem(["d-flex", "justify-content-between", "align-items-center"], 
        H5String("List group item one"), UIMBadge(["rounded-pill", "bg-primary"], "#")),
      UIMListItem(["d-flex", "justify-content-between", "align-items-center"], 
        H5String("List group item one"), UIMBadge(["rounded-pill", "bg-primary"], "##")),
      UIMListItem(["d-flex", "justify-content-between", "align-items-center"], 
        H5String("List group item one"), UIMBadge(["rounded-pill", "bg-primary"], "###")))
  ), ``, ``);

auto customExample = demoUIMExample("custom", "Custom content",      
  H5Div(
    UIMList(
      UIMListLink(["active"], ["href":"#", "aria-current":"true"], 
        H5H4("Active item"),
        H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        H5Small("Etiam eleifend velit leo.")),
      UIMListLink(["href":"#"], 
        H5H4("Normal item"),
        H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        H5Small("Etiam eleifend velit leo.")),
      UIMListLink(["disabled"], ["href":"#"], 
        H5H4("Disabled item"),
        H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        H5Small("Etiam eleifend velit leo.")))
  ), ``, ``);

auto tabsExample = demoUIMExample("tabs", "Tab panels",      
  H5Div(
    UIMRow(
      H5Div(["col-4"], 
        H5Div(["list-group"], ["role":"tablist"], 
          UIMListLink("tab-1", ["active"], ["href":"#tab-pane-1", "data-toggle":"list", "role":"tab", "aria-controls":"tab-pane-1"], "Tab pane 1"),
          UIMListLink("tab-2", ["href":"#tab-pane-2", "data-toggle":"list", "role":"tab", "aria-controls":"tab-pane-2"], "Tab pane 2"),
          UIMListLink("tab-3", ["href":"#tab-pane-3", "data-toggle":"list", "role":"tab", "aria-controls":"tab-pane-3"], "Tab pane 3"))),
      H5Div(["col-"], 
        H5Div(["tab-content"],
          H5Div("tab-pane-1", ["tab-pane", "fade", "show", "active"], ["role":"tabpanel", "aria-labelledby":"tab-1"], "Tab pane 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
          H5Div("tab-pane-2", ["tab-pane", "fade", "show"], ["role":"tabpanel", "aria-labelledby":"tab-2"], "Tab pane 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
          H5Div("tab-pane-3", ["tab-pane", "fade", "show"], ["role":"tabpanel", "aria-labelledby":"tab-3"], "Tab pane 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
        )))
  ), ``, ``);

      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/components"], 
      ["UI Manufaktur", "Demos", "uim-components", "Components"], "List Groups")),
  UIMContainer(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "List Groups"),
      H5Hr,

      defaultExample, 
      activeExample,      
      disabledExample,      
      linksExample,      
      buttonsExample,      
      flushExample,      
      horizontalExample,      
      equalwidthExample,      
      colorsExample,      
      badgesExample,      
      customExample,      
      tabsExample

  ))).toString;

    }
  });
}