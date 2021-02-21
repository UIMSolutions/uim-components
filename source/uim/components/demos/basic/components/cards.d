module uim.components.demos.components.cards;

import uim.components;

static this() {
	demoUIMComps.pages("basic/components/cards", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Cards - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          cardsVue3("vue")~
          `vue.mount('#app');`]);
		} 
			
    override string content() { 
auto textExample = demoUIMExample("text", "Text",  
  H5Div(
    UIMCard(["w-50"], 
      UIMCardBody(
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
      ))
  ), 
  `UIMCard(["w-50"], 
      UIMCardBody(
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
      ))`, ``);

auto titleExample = demoUIMExample("title", "Title",  
  H5Div(
    UIMCard(["w-50"], 
      UIMCardBody(
        UIMCardTitle("Card title")))
  ), 
  `UIMCard(["w-50"], 
  UIMCardBody(
    UIMCardTitle("Card title")))
`, ``, ``);

auto subtitleExample = demoUIMExample("subtitle", "Subtitle",
  H5Div(
    UIMCard(["w-50"], 
      UIMCardBody(
        UIMCardSubtitle("Card subtitle")))
  ), 
  `UIMCard(["w-50"], 
  UIMCardBody(
    UIMCardSubtitle("Card subtitle")))
`, ``);

auto buttonExample = demoUIMExample("button", "Button",
  H5Div(
    UIMCard(["w-50"], 
      UIMCardBody(
        UIMButtonLink(["btn-primary"], "Button")))
  ), 
  `UIMCard(["w-50"], 
  UIMCardBody(
    UIMButtonLink(["btn-primary"], "Button")))`, ``, ``);

auto linksExample = demoUIMExample("links", "Links",
  H5Div(
    UIMCardBody(
      UIMCardLink(["href":"#"], "Card link"),
      UIMCardLink(["href":"#"], "Card link"),
      UIMCardLink(["href":"#"], "Card link"))
  ), 
  `UIMCardBody(
  UIMCardLink(["href":"#"], "Card link"),
  UIMCardLink(["href":"#"], "Card link"),
  UIMCardLink(["href":"#"], "Card link"))`, ``, ``);

auto lgExample = demoUIMExample("listgroup", "List Group",
  H5Div(
    UIMCard(["w-50"], 
      UIMList(["list-group-flush"],
        UIMListItem("List group item"),
        UIMListItem("List group item"),
        UIMListItem("List group item")))        
  ), 
  `UIMCard(["w-50"], 
  UIMList(["list-group-flush"],
    UIMListItem("List group item"),
    UIMListItem("List group item"),
    UIMListItem("List group item")`, ``);

auto headerExample = demoUIMExample("header", "Header",
  H5Div(
    UIMCard(["w-50"], 
      UIMCardHeader("Card header"))
  ), 
  `UIMCard(["w-50"], 
  UIMCardHeader("Card header"))
`, ``);

auto footerExample = demoUIMExample("footer", "Footer",
  H5Div(
    UIMCard(["w-50"], 
      UIMCardFooter("Created DD-MM-YYYY"))
    ), 
    `UIMCard(["w-50"], 
      UIMCardFooter("Created DD-MM-YYYY"))`, ``);


           /* 

`,


demoUIMExample("images", "Bilder", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Top"), 
    UIMCard(["w-50"], 
      UIMCardImage(["src":"../img/400x200.png", "alt":"Card image in the top"]),
      UIMCardBody(
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
      )),
    H5H4(["h5", "text-muted", "mt-3"], "Bottom"), 
    UIMCard(["w-50"], 
      UIMCardBody(
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")),
      UIMCardImage(["card-img-bottom"], ["src":"../img/400x200.png", "alt":"Card image in the bottom"])
    ),
    H5H4(["h5", "text-muted", "mt-3"], "Overlay"), 
    UIMCard(["w-50"], 
      UIMCardImage(["src":"../img/400x200.png", "alt":"Card image as an overlay"],
        UIMCardOverlay(
          UIMCardTitle("Card title"), 
          UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
        )))),``, ``),

demoUIMExample("tabs", "Tab navigation",
  H5Div(
    UIMCard(["w-50"], 
      UIMCardHeader(
        UIMNav(["nav-tabs", "card-header-tabs"],
          UIMNavItem(
            UIMNavLink(["active"], ["href":"#"], "Active")),
          UIMNavItem(
            UIMNavLink(["href":"#"], "Link")),
          UIMNavItem(
            UIMNavLink(["disabled"], ["href":"#"], "Disabled")))),
      UIMCardBody(
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
      ))), ``, ``),

demoUIMExample("pills", "Pill Navigation",
  H5Div(
    UIMCard(["w-50"], 
      UIMCardHeader(
        UIMNav(["nav-pills", "card-header-pills"],
          UIMNavItem(
            UIMNavLink(["active"], ["href":"#"], "Active")),
          UIMNavItem(
            UIMNavLink(["href":"#"], "Link")),
          UIMNavItem(
            UIMNavLink(["disabled"], ["href":"#"], "Disabled")))),
      UIMCardBody(
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
      ))), ``, ``),

demoUIMExample("every", "Everything",
  H5Div(
    UIMCard(["w-50"], 
      UIMCardHeader(
        UIMNav(["nav-pills", "card-header-pills"],
          UIMNavItem(
            UIMNavLink(["active"], ["href":"#"], "Active")),
          UIMNavItem(
            UIMNavLink(["href":"#"], "Link")),
          UIMNavItem(
            UIMNavLink(["disabled"], ["href":"#"], "Disabled")))),
      UIMCardImage(["src":"../img/400x200.png", "alt":"Card image"]),
      UIMCardBody(
        UIMCardTitle("Card title"), 
        UIMCardSubtitle("Card subtitle"),
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMCardLink(["href":"#"], "Card link"),
        UIMCardLink(["href":"#"], "Card link"),
        UIMCardLink(["href":"#"], "Card link"),
        UIMList(["list-group-flush"],
          UIMListItem("List group item"),
          UIMListItem("List group item"),
          UIMListItem("List group item"))),
      UIMCardFooter("Created DD-MM-YYYY"))), ``, ``),

demoUIMExample("background", "Hintergrundfarben",
  H5Div(
    UIMCard(["text-white bg-primary w-50 mb-4"],
      UIMCardBody(
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-primary"], "Button"))),
    UIMCard(["text-white bg-secondary w-50 mb-4"],
      UIMCardBody(
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-primary"], "Button"))),
    UIMCard(["text-white bg-success w-50 mb-4"],
      UIMCardBody(
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-primary"], "Button"))),
    UIMCard(["text-white bg-danger w-50 mb-4"],
      UIMCardBody(
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-primary"], "Button"))),
    UIMCard(["text-white bg-warning w-50 mb-4"],
      UIMCardBody(
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-primary"], "Button"))),
    UIMCard(["text-white bg-info w-50 mb-4"],
      UIMCardBody(
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-primary"], "Button"))),
    UIMCard(["bg-light w-50 mb-4"],
      UIMCardBody(
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-primary"], "Button"))),
    UIMCard(["text-white bg-dark w-50"],
      UIMCardBody(
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-primary"], "Button")))), ``, ``),

demoUIMExample("bordertext", "Rahmen- und Textfarben",
  H5Div(
    UIMCard(["border-primary w-50 mb-4"],
      UIMCardBody(["text-primary"],
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-primary"], "Button"))),
    UIMCard(["border-secondary w-50 mb-4"],
      UIMCardBody(["text-secondary"],
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-secondary"], "Button"))),
    UIMCard(["border-success w-50 mb-4"],
      UIMCardBody(["text-success"],
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-success"], "Button"))),
    UIMCard(["border-danger w-50 mb-4"],
      UIMCardBody(["text-danger"],
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-danger"], "Button"))),
    UIMCard(["border-warning w-50 mb-4"],
      UIMCardBody(["text-warning"],
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-warning"], "Button"))),
    UIMCard(["border-info w-50 mb-4"],
      UIMCardBody(["text-info"],
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-info"], "Button"))),
    UIMCard(["border-light w-50 mb-4"],
      UIMCardBody(["bg-dark text-light"],
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-light"], "Button"))),
    UIMCard(["border-dark w-50"],
      UIMCardBody(["text-dark"],
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-dark"], "Button")))), ``, ``),

demoUIMExample("bordertext", "Header- und Footerfarben",
  H5Div(
    UIMCard(["border-info w-50"],
      UIMCardHeader(["border-info", "bg-transparent"], "Card header"),
      UIMCardBody(
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo."),
        UIMButtonLink(["btn-info"], "Button")),
      UIMCardFooter(["border-info", "bg-transparent"], "Created DD-MM-YYYY"))), ``, ``)~

demoUIMExample("groups", "Kartengruppen",
  H5Div(
    UIMCardGroup(["mb-4"],
      UIMCard(
        UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
        UIMCardBody(
          UIMCardTitle("Card title"), 
          UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat."))),
      UIMCard(
        UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
        UIMCardBody(
          UIMCardTitle("Card title"), 
          UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. 
          Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. 
          Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero."))),
      UIMCard(
        UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
        UIMCardBody(
          UIMCardTitle("Card title"), 
          UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.")))),
    UIMCardGroup(["mb-4"],
      UIMCard(
        UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
        UIMCardBody(
          UIMCardTitle("Card title"), 
          UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat.")),
        UIMCardFooter("Created DD-MM-YYYY")), 
      UIMCard(
        UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
        UIMCardBody(
          UIMCardTitle("Card title"), 
          UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc. Donec blandit accumsan augue eu bibendum. Suspendisse pretium facilisis sapien, ac dignissim leo. Phasellus fermentum nulla eget quam congue sagittis. Donec volutpat vel sapien sit amet lobortis. Aenean non vulputate nunc, eu luctus libero.")),
        UIMCardFooter("Created DD-MM-YYYY")),
    UIMCard(
      UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
      UIMCardBody(
        UIMCardTitle("Card title"), 
        UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mattis posuere consequat. Nulla fermentum sodales augue, vitae ornare eros ornare quis. Donec lectus est, congue eu risus quis, tempus sagittis nunc.")),
      UIMCardFooter("Created DD-MM-YYYY")))), ``, ``),

demoUIMExample("grid", "Grids Cards",
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Default"), 
    UIMRow(["row-cols-1", "row-cols-md-2", "row-cols-xl-3", "row-cols-xxl-4", "g-4 mb-4"],
      UIMCol(
        UIMCard(
          UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
          UIMCardBody(
            UIMCardTitle("Card title"), 
            UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
            Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
            Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. 
            Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. 
            Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. 
            Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")))),
      UIMCol(
        UIMCard(
          UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
          UIMCardBody(
            UIMCardTitle("Card title"), 
            UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
            Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in.")))),
      UIMCol(
        UIMCard(
          UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
          UIMCardBody(
            UIMCardTitle("Card title"), 
            UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit.")))),
      UIMCol(
        UIMCard(
          UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
          UIMCardBody(
            UIMCardTitle("Card title"), 
            UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")))))), ``, ``),

demoUIMExample("equal", "Gleichohe Karten",
  UIMRow(["row-cols-1 row-cols-md-2 row-cols-xl-3 row-cols-xxl-4 g-4 mb-4"],
    UIMCol(
      UIMCard(["h-100"],
        UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
        UIMCardBody(
          UIMCardTitle("Card title"), 
          UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. 
          Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")))), 
    UIMCol(
      UIMCard(["h-100"],
        UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
        UIMCardBody(
          UIMCardTitle("Card title"), 
          UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
          Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in.")))),
    UIMCol(
      UIMCard(["h-100"],
        UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
        UIMCardBody(
          UIMCardTitle("Card title"), 
          UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit.")))),
    UIMCol(
      UIMCard(["h-100"],
        UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
        UIMCardBody(
          UIMCardTitle("Card title"), 
          UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit."))))), ``, ``),

demoUIMExample("footer", "Mit Footer",
  UIMRow(["row-cols-1 row-cols-md-2 row-cols-xl-3 row-cols-xxl-4 g-4 mb-4"],
    UIMCol(
      UIMCard(["h-100"],
        UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
        UIMCardBody(
          UIMCardTitle("Card title"), 
          UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
          Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. 
          Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. 
          Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
        UIMCardFooter("Created DD-MM-YYYY"))),
    UIMCol(
      UIMCard(["h-100"],
        UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
        UIMCardBody(
          UIMCardTitle("Card title"), 
          UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
          Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in.")),
        UIMCardFooter("Created DD-MM-YYYY"))),
    UIMCol(
      UIMCard(["h-100"],
        UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
        UIMCardBody(
          UIMCardTitle("Card title"), 
          UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit.")),
        UIMCardFooter("Created DD-MM-YYYY"))),
    UIMCol(
      UIMCard(["h-100"],
        UIMCardImage(["src":"../img/300x150.png", "alt":"Card image"]),
        UIMCardBody(
          UIMCardTitle("Card title"), 
          UIMCardText("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")),
        UIMCardFooter("Created DD-MM-YYYY")))), ``, ``)
          ),
          H5Div(["col-12", "col-lg-2"]) */
      return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Basic", "Components"], "Toasts")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "components"),    
      listCompSections("basic", "components", "cards"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Toasts"),
      H5Hr,
      
      textExample, 
      titleExample,
      subtitleExample,
      buttonExample,
      linksExample,
      lgExample,
      headerExample,
      footerExample,
      textExample,
      titleExample
      
        ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}