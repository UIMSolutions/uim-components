module uim.components.demos.components.spinners;

import uim.components;

static this() {
	demoUIMComps.pages("components/spinners", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Spinners - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMButton.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content() { 

/* auto borderExample = demoUIMExample("border", "Border spinner", 
  H5Div(
    UIMSpinnerBorder(["role":"status"], 
      H5Span(["visually-hidden"], "Loading..."))
      ), ``, ``);

auto growingExample = demoUIMExample("growing", "Growing spinner", 
  H5Div(
    UIMSpinnerGrow(["role":"status"], 
      H5Span(["visually-hidden"], "Loading..."))
      ), ``, ``);

auto colorsExample = demoUIMExample("colors", "Colors Border", 
  H5Div(
    UIMSpinnerBorder(["text-primary"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerBorder(["text-secondary"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerBorder(["text-success"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerBorder(["text-danger"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerBorder(["text-warning"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerBorder(["text-info"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerBorder(["text-light"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerBorder(["text-dark"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading..."))
      ), ``, ``);

auto colors2Example = demoUIMExample("colors2", "Colors Grow", 
  H5Div(
    UIMSpinnerGrow(["text-primary"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerGrow(["text-secondary"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerGrow(["text-success"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerGrow(["text-danger"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerGrow(["text-warning"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerGrow(["text-info"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerGrow(["text-light"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerGrow(["text-dark"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading..."))
      ), ``, ``);

auto sizingExample = demoUIMExample("sizing", "Sizing Border", 
  H5Div(
    UIMSpinnerBorder(["spinner-border-sm"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerBorder(["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerBorder(["role":"status", "style":"width: 3rem; height: 3rem;"], 
      H5Span(["visually-hidden"], "Loading..."))
      ), ``, ``);

auto sizing2Example = demoUIMExample("sizing2", "Sizing Grow", 
  H5Div(
    UIMSpinnerGrow(["spinner-grow-sm"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerGrow(["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    UIMSpinnerGrow(["role":"status", "style":"width: 3rem; height: 3rem;"], 
      H5Span(["visually-hidden"], "Loading..."))
      ), ``, ``);

auto alignmentExample = demoUIMExample("alignment", "Alignment", 
  H5Div(
              // <p>Use <a href="spacing.html">spacing</a>, <a href="flex.html">flex</a>, <a href="float.html">float</a> and <a href="text.html">text</a> utilities to align and place your spinner as needed.</p>
    H5H4(["h5", "text-muted", "mt-3"], "Margin"),
    UIMSpinnerBorder(["m-3"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    H5H4(["h5", "text-muted", "mt-3"], "Flex"),
    H5Div(["d-flex justify-content-center"], 
      UIMSpinnerBorder(["role":"status"],
        H5Span(["visually-hidden"], "Loading..."))),
    H5Div(["d-flex", "align-items-center"], 
      H5Strong("Loading..."),
      UIMSpinnerBorder(["ms-auto"], ["role":"status", "aria-hidden":"true"])),
    H5H4(["h5", "text-muted", "mt-3"], "Float"),
    H5Div(["clearfix"], 
      UIMSpinnerBorder(["float-end"], ["role":"status"],
        H5Span(["visually-hidden"], "Loading..."))),
    H5H4(["h5", "text-muted", "mt-3"], "Text align"),
    H5Div(["text-center"], 
      H5Div(["spinner-border"], ["role":"status"],
        H5Span(["visually-hidden"], "Loading...")))
      ), ``, ``);
 */

      return 
H5Main("app", [""],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/components", "/demos/uim-components/components/basic"], 
    ["UI Manufaktur", "Demos", "uim-components", "Components", "Basic"], "Spinners")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Spinners"),
      H5Hr,

/*       borderExample,
      growingExample,
      colorsExample,
      colors2Example,
      sizingExample,
      sizing2Example,
      alignmentExample */

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}