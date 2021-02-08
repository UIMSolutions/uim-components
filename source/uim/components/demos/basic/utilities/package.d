module uim.components.demos.demos.utilities;

import uim.components;

static this() {
	demoUIMComps.pages("utilities", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Utilities - uim-components Demo",
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
        <li class="breadcrumb-item"><a href="/demos/uim-components">uim-components</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-components/">Bootstrap 5</a></li>
        <li class="breadcrumb-item active" aria-current="page">Utilities</li>
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
            <li class="list-group-item"><a href="/demos/uim-components/components">Components</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/contents">Contents</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/forms">Forms</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/helpers">Helpers</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/layouts">Layouts</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities">Utilities</a></li>
          </ul>
        </div>

        <div class="mb-5">
          <h3 class="text-muted">Forms</h3>
          <ul class="list-group">
            <li class="list-group-item"><a href="/demos/uim-components/utilities/borders">Borders</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/colors">Colors</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/display">Display</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/flex">Flex</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/float">Float</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/interactions">Interactions</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/overflow">Overflow</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/positionutilities">Position Utilities</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/shadows">Shadows</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/sizing">Sizing</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/text">Text</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/verticalalign">Vertical Align</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/utilities/visibility">Visibility</a></li>
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