module uim.components.demos.components.cards;

import uim.components;

static this() {
	demoUIMComps.pages("components/cards", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Cards - uim-components Demo",
          ]);
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
`, ``);

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
    UIMButtonLink(["btn-primary"], "Button")))`, ``);

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
  UIMCardLink(["href":"#"], "Card link"))`, ``);

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
demoBs5Page(
    H5H2(["display-4"], "Cards"),
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/components"], 
    ["UI Manufaktur", "Demos", "uim-components", "Components"], "Cards"),
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"],
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
    H5Div(["col-12", "col-lg-2"])
    );

    }
  });
}

/*
Cards, ein Element für viele Anlässe
Wenn Sie in diesem Bereich bestimmte Zeilen im Transkript auswählen, wird die zugehörige Zeitmarke im Video angesteuert.
Cards sind ein Element innerhalb von Bootstrap, um genau zu sein eine Komponente, die in sich jetzt eine größere Anzahl an ehemaligen Komponenten vereint und dementsprechend umfangreich ist das Thema Card in Wirklichkeit. Ich habe jetzt hier in einer älteren Version einen Bereich auf meiner Seite, wo einfach drei Absätze jetzt im Moment noch untereinander liegen, die ich in Cards umbaue, beziehungsweise die ich schon in Cards umgebaut habe, um Ihnen die Funktionsweise von Cards in Aktion zu zeigen. Wenn sie selbst sich über Cards schlau machen wollen, dann finden sie unter den Komponenten, „Components“ den Eintrag „Card“ und dadurch, dass die Cards sich eben eine größere Anzahl anderer Elemente ersetzt haben, finden Sie auf der rechten Seite diese Menge an Möglichkeiten, die sie mit Cards ausführen können. Sie können in Ruhe sich es durchschauen und durchscrollen. Meine momentane Lösung sieht auf jeden Fall so aus. Das heißt, aus diesen drei Absätzen sind jetzt drei nebeneinanderliegende Karten geworden. Und das einzige was ich jetzt noch bei allen drei Karten hinzufügen möchte ist ein Bild im Kopfbereich, das über die gesamte Länge geht. Aber zuerst sehen wir uns mal an, was überhaupt da ist und abgesehen jetzt von dem umfassenden Container, der das Row-Element in sich beherbergt und den einzelnen Spalten-Einträgen haben wir jetzt eben einen zusätzlichen Behälter der die Klasse „card“ trägt und der für diesen Rahmen und diesen abgerundeten Rand zuständig ist und dann haben wir einen „card-body“, der seinerseits jetzt für ein gewisses Padding gegenüber dem übergeordneten Element zuständig ist und dann haben wir noch einen eigenen kleinen Absatz der „card-title“ heißt, ich habe hier jetzt eben keine Überschriftsebene mehr, sondern ich verwende nur den „card-title“, der nichts anderes tut als etwas Abstand zwischen dem Titel und dem normalen Fließtext zu schaffen und im Fließtext könnte ich jetzt noch die Klasse „card-text“ mitgeben, was ich jetzt aber nicht mache, weil es für meinen Bedarf hier nicht notwendig ist. Und das habe ich bei allen drei Absätzen gemacht, womit ich jetzt eben zum gerade gezeigten Ergebnis gekommen bin. Wenn ich jetzt noch ein Bild einfügen möchte, so hier auf dieser Ebene, so ist das einzige was ich beim Einfügen des Bilds beachten muss, die Art wo ich es einfüge. Und zwar das Bild, ich hole mir das jetzt als Vorlage mit „Strg+C“ in meine Zwischenablage, muss aber oberhalb vom „card-body“ zu liegen kommen, damit es nicht ebenfalls mit diesem Padding versehen wird, das eben die Aufgabe des „card-body“ ist. Okay, ich habe das schon in der Zwischenablage, das heißt ich wechsle jetzt zurück zu meiner höchst eigenen Karte und werde genau hier jetzt dieses Image einfügen. Das Image hat eine eigene Klasse „card-img-top“, das dafür sorgt, dass das Bild sich dann auch passend verhält und ich muss jetzt eigentlich nur noch in mein Bildverzeichnis gehen und ein passendes Bild aussuchen. Und vielleicht hier auch noch den Alternativtext ändern. Okay, und dasselbe mache ich jetzt noch mal hier mit der zweiten Karte, indem ich wieder ein Bild einfüge und dieses Mal verzichte ich jetzt auf den Alternativtext. Wir wissen, dass er wichtig ist und ein drittes Mal auch noch hier. Mit meinem Treppenbild, das Feld C. So, und einfach nur durch dieses Verwenden der Klasse „card-img-top“ und mit der Positionierung oberhalb vom „card-body“, wenn ich das Ganze speichere und mir jetzt meine Karten wieder ausgeben lasse, sorgt dafür, dass die Bilder sich perfekt eingliedern in diese Karte und die Karte so gesehen auch ziemlich gut aufpeppen. Und so können Sie mit etwas mehr Markup aber trotzdem recht wenig Aufwand mit Hilfe von Cards, in sich abgeschlossene Informationseinheiten erzeugen.
*/