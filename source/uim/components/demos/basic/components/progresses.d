module uim.components.demos.components.progresses;

import uim.components;

static this() {
	demoUIMComps.pages("basic/components/progresses", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Progresses - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMProgress.toVue3("vue")~";"~
          UIMProgressBar.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content() { 

auto noExample = demoUIMExample("no", "No progress",
  H5Div(
    UIMProgress(
      UIMProgressBar(["aria-valuenow":"0", "aria-valuemin":"0", "aria-valuemax":"100"]))
      ), ``, ``);

auto inlineExample = demoUIMExample("inline", "Width using inline styles",
  H5Div(
    UIMProgress(
      UIMProgressBar(["style":"width: 17%", "aria-valuenow":"17", "aria-valuemin":"0", "aria-valuemax":"100"])), H5Br,
    UIMProgress(
      UIMProgressBar(["style":"width: 33%", "aria-valuenow":"33", "aria-valuemin":"0", "aria-valuemax":"100"])), H5Br,
    UIMProgress(
      UIMProgressBar(["style":"width: 62%", "aria-valuenow":"62", "aria-valuemin":"0", "aria-valuemax":"100"])), H5Br,
    UIMProgress(
      UIMProgressBar(["style":"width: 86%", "aria-valuenow":"86", "aria-valuemin":"0", "aria-valuemax":"100"]))
      ), ``, ``);

auto sizingExample = demoUIMExample("sizing", "Width using sizing classes",
  H5Div(
    UIMProgress(
      UIMProgressBar(["w-25"], ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"])), H5Br,
    UIMProgress(
      UIMProgressBar(["w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])), H5Br,
    UIMProgress(
      UIMProgressBar(["w-75"], ["aria-valuenow":"75", "aria-valuemin":"0", "aria-valuemax":"100"])), H5Br,
    UIMProgress(
      UIMProgressBar(["w-100"], ["aria-valuenow":"100", "aria-valuemin":"0", "aria-valuemax":"100"]))
      ), ``, ``);

auto labelExample = demoUIMExample("label", "Label",
  H5Div(
    UIMProgress(
      UIMProgressBar(["w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"], "50%"))
      ), ``, ``);

auto heightExample = demoUIMExample("height", "Height using inline styles",
  H5Div(
    UIMProgress(["style":"height: 0.5rem;"], 
      UIMProgressBar(["w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])), H5Br,
    UIMProgress(["style":"height: 2rem;"], 
      UIMProgressBar(["w-50"], ["aria-valuenow":"50", "aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]))
      ), ``, ``);

auto backgroundExample = demoUIMExample("background", "Background colors",
  H5Div(
    UIMProgress(
      UIMProgressBar(["w-50", "bg-primary"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])), H5Br,
    UIMProgress(
      UIMProgressBar(["w-50", "bg-secondary"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])), H5Br,
    UIMProgress(
      UIMProgressBar(["w-50", "bg-success"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])), H5Br,
    UIMProgress(
      UIMProgressBar(["w-50", "bg-danger"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])), H5Br,
    UIMProgress(
      UIMProgressBar(["w-50", "bg-warning"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])), H5Br,
    UIMProgress(
      UIMProgressBar(["w-50", "bg-info"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])), H5Br,
    UIMProgress(
      UIMProgressBar(["w-50", "bg-light", "text-dark"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])), H5Br,
    UIMProgress(
      UIMProgressBar(["w-50", "bg-dark"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"])), 
      ), ``, ``);

auto stripesExample = demoUIMExample("stripes", "Stripes",
  H5Div(
    UIMProgress(
      UIMProgressBar(["progress-bar-striped", "w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]))
    ), ``, ``);

auto animatedExample = demoUIMExample("animated", "Animated Stripes",
  H5Div(
    UIMProgress(
      UIMProgressBar(["progress-bar-striped", "progress-bar-animated", "w-50"], ["aria-valuenow":"50", "aria-valuemin":"0", "aria-valuemax":"100"]))
    ), ``, ``);

auto multipleExample = demoUIMExample("multiple", "Multiple progress bars",
  H5Div(
    UIMProgress(
      UIMProgressBar(["w-25", "bg-info"], ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"]),
      UIMProgressBar(["w-25", "bg-warning"], ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"]),
      UIMProgressBar(["w-25", "bg-danger"],  ["aria-valuenow":"25", "aria-valuemin":"0", "aria-valuemax":"100"])),
      ), ``, ``);

      return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/basic/components"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Basic", "Components"], "Progresses")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Progresses"),
      H5Hr,

      noExample,
      inlineExample,
      sizingExample,
      labelExample,
      heightExample,
      backgroundExample,
      stripesExample,
      animatedExample,
      multipleExample

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}