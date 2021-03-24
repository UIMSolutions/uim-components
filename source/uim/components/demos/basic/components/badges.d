module uim.components.demos.components.badges;

import uim.components;

@safe: 
static this() {
	demoUIMComps.pages("basic/components/badges", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Badges - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMButton.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content(STRINGAA reqParameters = null) { 
return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Basic", "Components"], "Badges")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "components"),    
      listCompSections("basic", "components", "badges"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Badges"),
      H5Hr,

demoUIMExample("headings", "Headings mit Badges", 
  H5Div(
    H5H1(H5String("H1 mit "), UIMBadge(["bg-secondary"], "Badge")),
    H5H2(H5String("H2 mit "), UIMBadge(["bg-secondary"], "Badge")),
    H5H3(H5String("H3 mit "), UIMBadge(["bg-secondary"], "Badge")),
    H5H4(H5String("H4 mit "), UIMBadge(["bg-secondary"], "Badge")),
    H5H5(H5String("H5 mit "), UIMBadge(["bg-secondary"], "Badge")),
    H5H6(H5String("H6 mit "), UIMBadge(["bg-secondary"], "Badge"))), 
  `<h1>H1 mit <span class="badge bg-secondary">Badge</span></h1>
<h2>H2 mit <span class="badge bg-secondary">Badge</span></h2>
<h3>H3 mit <span class="badge bg-secondary">Badge</span>")
<h4>H4 mit <span class="badge bg-secondary">Badge</span></h4>
<h5>H5 mit <span class="badge bg-secondary">Badge</span></h5>
<h6>H6 mit <span class="badge bg-secondary">Badge</span></h6>`, 
`H5H1(H5String("H1 mit "), UIMBadge(["bg-secondary"], "Badge"))
H5H2(H5String("H2 mit "), UIMBadge(["bg-secondary"], "Badge"))
H5H3(H5String("H3 mit "), UIMBadge(["bg-secondary"], "Badge"))
H5H4(H5String("H4 mit "), UIMBadge(["bg-secondary"], "Badge"))
H5H5(H5String("H5 mit "), UIMBadge(["bg-secondary"], "Badge"))
H5H6(H5String("H6 mit "), UIMBadge(["bg-secondary"], "Badge"))`, ``),

demoUIMExample("buttons", "Buttons mit Badges", 
  H5Div(
    UIMButton(["btn-secondary"], H5String("Notifications "), UIMBadge(["bg-light", "text-dark"], "10"))), 
`<button class="btn btn-secondary">Notifications <span class="badge bg-light text-dark">10</span>")`, 
`UIMButton(["btn-secondary"], H5String("Notifications "), UIMBadge(["bg-light", "text-dark"], "10"))`, ``
),

demoUIMExample("accessible", "Buttons mit accessible Badges", 
  H5Div(
    UIMButton(["btn-secondary"], 
      H5String("Profile"),
      UIMBadge(["bg-light", "text-dark"], "3"),
      H5Span(["visually-hidden"], "unread messages"))), ``, ``, ``),

demoUIMExample("bgcolors", "Hintergrundfarben", 
  H5Div(
    UIMBadge(["bg-primary"], "Primary"), 
    UIMBadge(["bg-secondary"], "Secondary"), 
    UIMBadge(["bg-success"], "Success"), 
    UIMBadge(["bg-danger"], "Danger"), 
    UIMBadge(["bg-warning text-dark"], "Warning"), 
    UIMBadge(["bg-info"], "Info"), 
    UIMBadge(["bg-light", "text-dark"], "Light"), 
    UIMBadge(["bg-dark"], "Dark")
    ), 
    `UIMBadge(["bg-primary"], "Primary"), 
    UIMBadge(["bg-secondary"], "Secondary"), 
    UIMBadge(["bg-success"], "Success"), 
    UIMBadge(["bg-danger"], "Danger"), 
    UIMBadge(["bg-warning text-dark"], "Warning"), 
    UIMBadge(["bg-info"], "Info"), 
    UIMBadge(["bg-light", "text-dark"], "Light"), 
    UIMBadge(["bg-dark"], "Dark")`, ``, ``), 

demoUIMExample("pills", "Pill badges", 
  H5Div(
    UIMBadge(["rounded-pill", "bg-primary"], "Primary"),
    UIMBadge(["rounded-pill", "bg-secondary"], "Secondary"),
    UIMBadge(["rounded-pill", "bg-success"], "Success"),
    UIMBadge(["rounded-pill", "bg-danger"], "Danger"),
    UIMBadge(["rounded-pill", "bg-warning", "text-dark"], "Warning"),
    UIMBadge(["rounded-pill", "bg-info"], "Info"),
    UIMBadge(["rounded-pill", "bg-light", "text-dark"], "Light"),
    UIMBadge(["rounded-pill", "bg-dark"], "Dark")
    ), 
    `UIMBadge(["rounded-pill", "bg-primary"], "Primary"),
    UIMBadge(["rounded-pill", "bg-secondary"], "Secondary"),
    UIMBadge(["rounded-pill", "bg-success"], "Success"),
    UIMBadge(["rounded-pill", "bg-danger"], "Danger"),
    UIMBadge(["rounded-pill", "bg-warning", "text-dark"], "Warning"),
    UIMBadge(["rounded-pill", "bg-info"], "Info"),
    UIMBadge(["rounded-pill", "bg-light", "text-dark"], "Light"),
    UIMBadge(["rounded-pill", "bg-dark"], "Dark")`, ``, ``)
    
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}