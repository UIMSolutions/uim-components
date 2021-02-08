module uim.components.demos.demos.contents;

import uim.components;

static this() {
	demoUIMComps.pages("basic/contents", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Contents - uim-components Demo",
          "script":
          `const vue = Vue.createApp({});`~
          UIMButton.toVue3("vue")~";"~
          /* UIMButtonLink.toVue3("vue")~";"~ */
          `vue.mount('#app');`]);
		} 
			
    override string content() { 
      return `
<main>
  <div class="container-fluid mt-3 bg-light m-1">
    <nav aria-label="Breadcrumb" >
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
        <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
        <li class="breadcrumb-item"><a href="/uim-components/demos">uim-components</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-components/">Bootstrap 5</a></li>
        <li class="breadcrumb-item active" aria-current="page">Contents</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">uim-components Demo</h2>
        <hr>

        <div class="mb-5">
          <h3 class="text-muted">Themenbereiche</h3>
          <ul class="list-group">
            <li class="list-group-item"><a href="/demos/uim-components/basic">Components</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/contents">Contents</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/forms">Forms</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/helpers">Helpers</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/layouts">Layouts</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities">Utilities</a></li>
          </ul>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Contents</h3>
          <ul class="list-group">
            <li class="list-group-item"><a href="/demos/uim-components/contents/figures">Figures</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/contents/images">Images</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/contents/tables">Tables</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/contents/typography">Typography</a></li>
            </ul>
        </div>
      </div>
    </div>
  </div>
</main>

      `;
    }
  });
}