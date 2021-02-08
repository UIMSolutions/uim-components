module uim.components.demos.demos.utilities.verticalalign;

import uim.components;

static this() {
	demoUIMComps.pages("basic/utilities/verticalalign", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Vertical Align - uim-components Demo",
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
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-components", "/demos/uim-components/basic", "/demos/uim-components/components/utilities"], 
    ["UI Manufaktur", "Demos", "uim-components" , "Components", "Utilities"], "Vertical Align")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Vertical Align"),
      H5Hr,

/* 
        <div class="mb-5">
              <h3 class="text-muted">Inline and inline-block</h3>
              <div>
                <h1>Baseline<img src="../img/20x20.png" class="align-baseline"></h1>
                <h1>Text-top<img src="../img/20x20.png" class="align-text-top"></h1>
                <h1>Text-bottom<img src="../img/20x20.png" class="align-text-bottom"></h1>
                <h1>Top<img src="../img/20x20.png" class="align-top"></h1>
                <h1>Middle<img src="../img/20x20.png" class="align-middle"></h1>
                <h1>Bottom<img src="../img/20x20.png" class="align-bottom"></h1>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Table cell</h3>
              <div>
                <p>Text-top and text-bottom not applicable on table cells</p>
                <table class="table" style="height: 200px;">
                  <tbody>
                    <tr>
                      <td class="align-baseline">Baseline</td>
                      <td class="align-top">Top</td>
                      <td class="align-middle">Middle</td>
                      <td class="align-bottom">Bottom</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>

          </div>
        </div>
      </div>
    </main>
      `; */
        ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}