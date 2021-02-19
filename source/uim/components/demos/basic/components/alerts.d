module uim.components.demos.components.alerts;

import uim.components;

static this() {
	demoUIMComps.pages("basic/components/alerts", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Alerts - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMAlert.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content() { 
return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Basic", "Components"], "Alerts")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "components"),    
      listCompSections("basic", "components", "alerts"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Alerts"),
      H5Hr,

demoUIMExample("default", "Default", 
  H5Div(
    UIMAlert("Primary").color("primary"),
    UIMAlert("Secondary").color("secondary"),
    UIMAlert("Success").color("success"),
    UIMAlert("Danger").color("danger"),
    UIMAlert("Warning").color("warning"),
    UIMAlert("Info").color("info"),
    UIMAlert("Dark").color("dark")),
`UIMAlert(["alert-primary"], "Primary")
UIMAlert(["alert-secondary"], "Secondary")
UIMAlert(["alert-success"], "Success")
UIMAlert(["alert-danger"], "Danger")
UIMAlert(["alert-warning"], "Warning")
UIMAlert(["alert-info"], "Info")
UIMAlert(["alert-dark"], "Dark")
</code></pre><p class="text-muted">Alternative</p><pre><code>
UIMAlert("Primary").color("primary")
UIMAlert("Secondary").color("secondary")
UIMAlert("Success").color("success")
UIMAlert("Danger").color("danger")
UIMAlert("Warning").color("warning")
UIMAlert("Info").color("info")
UIMAlert("Dark").color("dark")`,
``,
`<div class="alert alert-primary" role="alert">Primary</div>
<div class="alert alert-secondary" role="alert">Secondary</div>
<div class="alert alert-success" role="alert">Success</div>
<div class="alert alert-danger" role="alert">Danger</div>
<div class="alert alert-warning" role="alert">Warning</div>
<div class="alert alert-info" role="alert">Info</div>
<div class="alert alert-dark" role="alert">Dark</div>`),

demoUIMExample("link", "Link Farbe", 
  H5Div(
    UIMAlert(`Primary mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.`).color("primary"),
    UIMAlert(`Secondary mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.`).color("secondary"),
    UIMAlert(`Success mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.`).color("success"),
    UIMAlert(`Danger mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.`).color("danger"),
    UIMAlert(`Warning mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.`).color("warning"),
    UIMAlert(`Info mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.`).color("info"),
    UIMAlert(`Dark mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.`).color("dark")),
`UIMAlert(["alert-primary"], "Primary mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.")
UIMAlert(["alert-secondary"], "Secondary mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.")
UIMAlert(["alert-success"], "Success mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.")
UIMAlert(["alert-danger"], "Danger mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.")
UIMAlert(["alert-warning"], "Warning mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.")
UIMAlert(["alert-info"], "Info mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.")
UIMAlert(["alert-dark"], "Dark mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.")

- Weitere Möglichkeit -

UIMAlert("Primary mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.").color("primary")
UIMAlert("Secondary mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.").color("secondary")
UIMAlert("Success mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.").color("§success")
UIMAlert("Danger mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.").color("danger")
UIMAlert("Warning mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.").color("warning")
UIMAlert("Info mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.").color("info")
UIMAlert("Dark mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.").color("dark")`,
``,
`<div class="alert alert-primary" role="alert">Primary mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.</div>
<div class="alert alert-secondary" role="alert">Secondary mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.</div>
<div class="alert alert-success" role="alert">Success mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.</div>
<div class="alert alert-danger" role="alert">Danger mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.</div>
<div class="alert alert-warning" role="alert">Warning mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.</div>
<div class="alert alert-info" role="alert">Info mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.</div>
<div class="alert alert-dark" role="alert">Dark mit H5A(["href":"#",  class="alert-link">Beispiellink</a>.</div>`),

demoUIMExample("addition", "Zusätzliche Inhalte", 
  H5Div(
    UIMAlert.color("success")(
      H5H4(["alert-heading"], "Success!"),
      H5P("You have accomplished <a href=\"#\" class=\"alert-link\">your goal</a>."),
      H5P("You can now continue and start defining a new goal to reach.")),
    UIMAlert.color("danger")(
      H5H4(["alert-heading"], "Danger!"),
      H5P("Something is wrong. <a href=\"#\" class=\"alert-link\">Please try again.</a>"),
      H5P("Make sure that you enter the correct user name and corresponding password."),
      ),
    UIMAlert.color("warning")(
      H5H4(["alert-heading"], "Warning!"),
      H5P("Be careful when you <a href=\"#\" class=\"alert-link\">drive.</a>"),
      H5P("Driving is a serious task and should thus be taken seriously.")),
    UIMAlert.color("info")(
      H5H4(["alert-heading"], "Info!"),
      H5P("Please read the provided <a href=\"#\" class=\"alert-link\">information.</a>"),
      H5P("The information will help you get a better understanding of the topic."))),
`<div class="alert alert-success" role="alert">
      <h4 class="alert-heading">Success!</h4>
      <p>You have accomplished H5A(["href":"#",  class="alert-link">your goal</a>.</p>
      <p>You can now continue and start defining a new goal to reach.</p>
    </div>
    <div class="alert alert-danger" role="alert">
      <h4 class="alert-heading">Danger!</h4>
      <p>Something is wrong. H5A(["href":"#",  class="alert-link">Please try again.</a></p>
      <p>Make sure that you enter the correct user name and corresponding password.</p>
    </div>
    <div class="alert alert-warning" role="alert">
      <h4 class="alert-heading">Warning!</h4>
      <p>Be careful when you H5A(["href":"#",  class="alert-link">drive.</a></p>
      <p>Driving is a serious task and should thus be taken seriously.</p>
    </div>
    <div class="alert alert-info" role="alert">
      <h4 class="alert-heading">Info!</h4>
      <p>Please read the provided H5A(["href":"#",  class="alert-link">information.</a></p>
      <p>The information will help you get a better understanding of the topic.</p>
</div>`,
`UIMAlert.color("success")(
    H5H4(["alert-heading"], "Success!"),
    H5P("You have accomplished <a href=\"#\" class=\"alert-link\">your goal</a>."),
    H5P("You can now continue and start defining a new goal to reach.")),
  UIMAlert.color("danger")(
    H5H4(["alert-heading"], "Danger!"),
    H5P("Something is wrong. <a href=\"#\" class=\"alert-link\">Please try again.</a>"),
    H5P("Make sure that you enter the correct user name and corresponding password."),
    ),
  UIMAlert.color("warning")(
    H5H4(["alert-heading"], "Warning!"),
    H5P("Be careful when you <a href=\"#\" class=\"alert-link\">drive.</a>"),
    H5P("Driving is a serious task and should thus be taken seriously.")),
  UIMAlert.color("info")(
    H5H4(["alert-heading"], "Info!"),
    H5P("Please read the provided <a href=\"#\" class=\"alert-link\">information.</a>"),
    H5P("The information will help you get a better understanding of the topic.")
)`,
``),

demoUIMExample("dismissing", "Entfernbar", 
  H5Div(
    UIMAlert(["alert-success", "alert-dismissible", "fade", "show"], 
      UIMButton(["btn-close"], ["data-bs-dismiss":"alert", "aria-label":"Close"]),
      H5Strong("Achtung!"), H5String(" Dieser Alert verschwindet, wenn der &times; Button getätigt wird."))),
`<div class="alert alert-success alert-dismissible fade show" role="alert">
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">")
  <strong>Achtung!</strong> Dieser Alert verschwindet, wenn der &times; Button getätigt wird.
</div>`,
`UIMAlert(["alert-success", "alert-dismissible", "fade", "show"], 
  UIMButton(["btn-close"], ["data-bs-dismiss":"alert", "aria-label":"Close"]),
  H5Strong("Achtung!"), H5String(" Dieser Alert verschwindet, wenn der &times; Button getätigt wird.")
)`,
``)

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}