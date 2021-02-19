module uim.components.demos.demos.helpers.ratio;

import uim.components;

static this() {
	demoUIMComps.pages("basic/helpers/ratio", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Ratio - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMButton.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content() { 
      return 
H5Main("app", ["style":"margin-top:70px;"],
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/uim-components/demos", "/demos/uim-components/helpers"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Helpers"], "Ratio")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listCompLevels("basic"),    
      listCompAreas("basic", "helpers"),    
      listCompSections("basic", "helpers", "ratio"),    
    ),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Colored Links"),
      H5Hr,

      demoUIMExample("1", "1x1",
        H5Div(
          H5Div(["ratio", "ratio-1x1"], 
            `<iframe src="https://player.vimeo.com/video/40509381"></iframe>`)
        ), ``, ``),


      demoUIMExample("4", "4x3",
        H5Div(
          H5Div(["ratio", "ratio ratio-4x3"], 
            `<iframe src="https://player.vimeo.com/video/301032654"></iframe>`)
        ), ``, ``),

      demoUIMExample("16", "16x9",
        H5Div(
          H5Div(["ratio", "ratio ratio-16x9"], 
            `<iframe src="https://player.vimeo.com/video/77923619"></iframe>`)
        ), ``, ``),

      demoUIMExample("21", "21x9",
        H5Div(
          H5Div(["ratio", "ratio ratio-21x9"], 
            `<iframe src="https://player.vimeo.com/video/96184605"></iframe>`)
        ), ``, ``),

      demoUIMExample("standard", "Standard HTML elements",
        H5Div(
          H5Div(["ratio", "ratio ratio-21x9"], 
            `<iframe src="https://player.vimeo.com/video/96184605"></iframe>`)
        ), ``, ``),

      demoUIMExample("21", "21x9",
        H5Div(
          H5Div(["ratio", "ratio ratio-21x9"], 
            `<iframe src="https://player.vimeo.com/video/96184605"></iframe>`)
        ), ``, ``),

      demoUIMExample("standard", "Standard HTML Elements",
        H5Div(
          H5Div(["ratio", "d-flex align-items-start"], 
            H5Div(["ratio", "ratio ratio-1x1"], 
              H5P(["d-flex justify-content-center align-items-center border"], "1x1")),
            H5Div(["ratio", "ratio ratio-4x3"], 
              H5P(["d-flex justify-content-center align-items-center border"]," 4x3")),
            H5Div(["ratio", "ratio ratio-16x9"], 
              H5P(["d-flex justify-content-center align-items-center border"], "16x9")),
            H5Div(["ratio", "ratio ratio-21x9"], 
              H5P(["d-flex justify-content-center align-items-center border"], "21x9")))
        ), ``, ``),

      demoUIMExample("customratio", "Custom ratio",
        H5Div(
          H5Div(["ratio", "ratio"], ["style":"--aspect-ratio: 50%;"], 
            H5P(["d-flex justify-content-center align-items-center border"], "2x1 (50%)")), 
          H5Div(["ratio", "ratio"], ["style":"--aspect-ratio: 25%;"], 
            H5P(["d-flex justify-content-center align-items-center border"], "4x1 (25%)"))
        ), ``, ``)

      ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 