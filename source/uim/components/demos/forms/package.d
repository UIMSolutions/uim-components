module uim.components.demos.demos.forms;

import uim.components;

static this() {
	demoUIMComps.pages("forms", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Forms - uim-components Demo",
          ]);
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
            <li class="list-group-item"><a href="/demos/uim-components/forms/checks_radios">Checks und Radios</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/forms/floatinglabels">Floating Labels</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/forms/formcontrol">Form Control</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/forms/inputgroup">Input Group</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/forms/layout">Layout</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/forms/overview">Overview</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/forms/range">Range</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/forms/select">Select</a></li>
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