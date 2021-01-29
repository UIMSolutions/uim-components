module uim.components.demos.components.navs;

import uim.components;

static this() {
	demoUIMComps.pages("components/navs", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Navs - uim-components Demo",
          ]);
		} 
			
    override string content() { 

/* auto unorderedExample = demoUIMExample("unordered", "Unordered list",
  H5Div(
    UIMNav(
      UIMNavItem(
        UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")))
      ), ``, ``);

auto linksExample = demoUIMExample("links", "Links",
  H5Div(
    UIMNav(["nav"],
      UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active"),
      UIMNavLink(["href":"#"],"Link"),
      UIMNavLink(["href":"#"], "Link"),
      UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))
      ), ``, ``);

auto barExample = demoUIMExample("bar", "Navs as navigation bar",
  H5Div(
    H5Nav(
      UIMNav(
        UIMNavItem(
          UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
        UIMNavItem(
          UIMNavLink(["href":"#"], "Link")),
        UIMNavItem(
          UIMNavLink(["href":"#"], "Link")),
        UIMNavItem(
          UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))))
      ), ``, ``);

auto horizontalExample = demoUIMExample("horizontal", "Horizontal alignment",
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Centered"),
    UIMNav(["justify-content-center"], 
      UIMNavItem(
        UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))),
    H5H4(["h5", "text-muted", "mt-3"], "Right-aligned"),
    UIMNav(["justify-content-end"], 
      UIMNavItem(
        UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")))
      ), ``, ``);
          
auto verticalExample = demoUIMExample("vertical", "Vertical",
  H5Div(
    UIMNav(["flex-column"], 
      UIMNavItem(
        UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")))
        ), ``, ``);

auto tabsExample = demoUIMExample("tabs", "Tabs",
  H5Div(
    UIMNav(["nav-tabs"], 
      UIMNavItem(
        UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")))
        ), ``, ``);

auto pillsExample = demoUIMExample("pills", "Pills",
  H5Div(
    UIMNav(["nav-pills"], 
      UIMNavItem(
        UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")))
        ), ``, ``);

auto fillExample = demoUIMExample("fill", "Fill",
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Unordered list"),
    UIMNav(["nav-tabs", "nav-fill"], 
      UIMNavItem(
        UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))), H5Br,
    H5Nav(["nav", "nav-tabs", "nav-fill"], 
      UIMNavLink(["nav-item", "active"], ["href":"#", "aria-current":"page"], "Active"),
      UIMNavLink(["nav-item"], ["href":"#"], "Link"),
      UIMNavLink(["nav-item"], ["href":"#"], "Link"),
      UIMNavLink(["nav-item", "disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))
      ), ``, ``);

auto justifyExample = demoUIMExample("justify", "Justify",
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Unordered list"),
    UIMNav(["nav-pills", "nav-justified"], 
      UIMNavItem(
        UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))), H5Br,
    H5Nav(["nav", "nav-pills", "nav-justified"], 
      UIMNavLink(["nav-item", "active"], ["href":"#", "aria-current":"page"], "Active"),
      UIMNavLink(["nav-item"], ["href":"#"], "Link"),
      UIMNavLink(["nav-item"], ["href":"#"], "Link"),
      UIMNavLink(["nav-item", "disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))
      ), ``, ``);


auto responsiveExample = demoUIMExample("responsive", "Responsive",
  H5Div(
    UIMNav(["flex-column", "flex-md-row"], 
      UIMNavItem(
        UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")))
        ), ``, ``);

auto dropdownExample = demoUIMExample("dropdown", "Dropdown",
  H5Div(
    UIMNav(
      UIMNavItem(
        UIMNavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      UIMNavItem(["dropdown"],
        UIMNavLink(["dropdown-toggle"], ["href":"#", "data-bs-toggle":"dropdown", "role":"button", "aria-expanded":"false"], "Dropdown"),
          UIMDropdownMenu(
            UIMDropdownItem(["href":"#"],  "First item"),
            UIMDropdownItem(["href":"#"],  "Second item"),
            UIMDropdownItem(["href":"#"],  "Third item")
          )),
      UIMNavItem(
        UIMNavLink(["href":"#"], "Link")),
      UIMNavItem(
        UIMNavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")))
        ), ``, ``);

auto tabpanelExample = demoUIMExample("tabpanel", "Tab panel from list",
  H5Div(
    UIMNav(["nav-tabs"], ["role":"tablist"], 
      UIMNavItem(["role":"presentation"],
        UIMNavLink("tabList-1", ["active"], ["href":"#tabList-pane-1", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabList-pane-1", "aria-selected":"true"], "Panel 1")),
      UIMNavItem(["role":"presentation"],
        UIMNavLink("tabList-2", ["href":"#tabList-pane-2", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabList-pane-2", "aria-selected":"false"], "Panel 2")),
      UIMNavItem(["role":"presentation"], 
        UIMNavLink("tabList-3", ["href":"#tabList-pane-3", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabList-pane-3", "aria-selected":"false"], "Panel 3"))),
    H5Div(["tab-content"], 
      H5Div("tabList-pane-1", ["tab-pane", "active"], ["role":"tabpanel", "aria-labelledby":"tabList-1"],
        H5P("Panel 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
      H5Div("tabList-pane-2", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tabList-2"],
        H5P("Panel 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
      H5Div("tabList-pane-3", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tabList-3"],
        H5P("Panel 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")))
        ), ``, ``);

auto tablinksExample = demoUIMExample("tablinks", "Tab panel from links",
  H5Div(
    H5Nav(
      H5Div(["nav", "nav-tabs"], ["role":"tablist"], 
        UIMNavLink("tabLinks-1", ["nav-item active"], ["href":"#tabLinks-pane-1", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabLinks-pane-1", "aria-selected":"true"], "Panel 1"),
        UIMNavLink("tabLinks-2", ["nav-item"], ["href":"#tabLinks-pane-2", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabLinks-pane-2", "aria-selected":"false"], "Panel 2"),
        UIMNavLink("tabLinks-3", ["nav-item"], ["href":"#tabLinks-pane-3", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabLinks-pane-3", "aria-selected":"false"], "Panel 3"))),
    H5Div(["tab-content"], 
      H5Div("tabLinks-pane-1", ["tab-pane", "active"], ["role":"tabpanel", "aria-labelledby":"tabLinks-1"],
        H5P("Panel 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
      H5Div("tabLinks-pane-2", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tabLinks-2"],
        H5P("Panel 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
      H5Div("tabLinks-pane-3", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tabLinks-3"],
        H5P("Panel 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")))
      ), ``, ``);

auto verticalpanelExample = demoUIMExample("verticalpanel", "Vertical tab panel",
  H5Div(
    UIMRow(
      H5Div(["col-3"], 
        UIMNav(["flex-column", "nav-pills"], ["role":"tablist"], 
          UIMNavItem(["role":"presentation"], 
            UIMNavLink("tabVertical-1", ["active"], ["href":"#tabVertical-pane-1", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabVertical-pane-1", "aria-selected":"true"], "Panel 1")),
          UIMNavItem(["role":"presentation"], 
            UIMNavLink("tabVertical-2", ["href":"#tabVertical-pane-2", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabVertical-pane-2", "aria-selected":"false"], "Panel 2")),
          UIMNavItem(["role":"presentation"], 
            UIMNavLink("tabVertical-3", ["href":"#tabVertical-pane-3", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabVertical-pane-3", "aria-selected":"false"], "Panel 3")))),
      H5Div(["col-9"], 
        H5Div(["tab-content"],
          H5Div("tabVertical-pane-1", ["tab-pane", "active"], ["role":"tabpanel", "aria-labelledby":"tabVertical-1"], 
            H5P("Panel 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
            Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. 
            Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. 
            Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
          H5Div("tabVertical-pane-2", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tabVertical-2"], 
            H5P("Panel 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
          H5Div("tabVertical-pane-3", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tabVertical-3"], 
            H5P("Panel 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")))))
        ), ``, ``);

auto fadeExample = demoUIMExample("fade", "Tab panel with fade effect",
  H5Div(
    UIMNav(["nav-tabs"], ["role":"tablist"], 
      UIMNavItem(["role":"presentation"], 
        UIMNavLink("tabFade-1", ["active"], ["href":"#tabFade-pane-1", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabFade-pane-1", "aria-selected":"true"], "Panel 1")),
      UIMNavItem(["role":"presentation"], 
        UIMNavLink("tabFade-2", ["href":"#tabFade-pane-2", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabFade-pane-2", "aria-selected":"false"], "Panel 2")),
      UIMNavItem(["role":"presentation"], 
        UIMNavLink("tabFade-3", ["href":"#tabFade-pane-3", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabFade-pane-3", "aria-selected":"false"], "Panel 3"))),
    H5Div(["tab-content"], 
      H5Div("tabFade-pane-1", ["tab-pane", "fade", "show", "active"], ["role":"tabpanel", "aria-labelledby":"tabFade-1"], 
        H5P("Panel 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
      H5Div("tabFade-pane-2", ["tab-pane", "fade"], ["role":"tabpanel", "aria-labelledby":"tabFade-2"], 
        H5P("Panel 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
      H5Div("tabFade-pane-3", ["tab-pane", "fade"], ["role":"tabpanel", "aria-labelledby":"tabFade-3"], 
        H5P("Panel 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")))
        ), ``, ``);
 */
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/components"], 
    ["UI Manufaktur", "Demos", "uim-components", "Components"], "Navs")),
  UIMContainer(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Navs"),
      H5Hr,

/*       unorderedExample,
      linksExample,
      barExample,
      horizontalExample,
      verticalExample,
      tabsExample,
      pillsExample,
      fillExample,
      justifyExample,
      responsiveExample,
      dropdownExample,
      tabpanelExample,
      tablinksExample,
      verticalpanelExample,
      fadeExample */

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}