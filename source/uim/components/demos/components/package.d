module uim.components.demos.components;

import uim.components;

static this() {
	demoUIMComps.pages("components", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "uim-components Demo",
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
        <li class="breadcrumb-item active" aria-current="page">Components</li>
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
          H5H3(["text-muted"], "Themenbereiche")
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
          H5H3(["text-muted"], "Components")
          <ul class="list-group">
            <li class="list-group-item"><a href="/demos/uim-components/components/accordions">Accordions</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/alerts">Alerts</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/badges">Badges</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/breadcrumbs">Breadcrumbs</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/buttongroups">Button Groups</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/buttons">Buttons</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/cards">Cards</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/carousels">Carousels</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/closebuttons">Close Buttons</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/collapses">Collapses</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/dropdowns">Dropdowns</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/listgroups">List Groups</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/modals">Modals</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/navbars">Navbars</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/navs">Navs</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/paginations">Paginations</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/popovers">Popovers</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/progresses">Progresses</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/scrollspies">Scrollspies</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/spinners">Spinners</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/toasts">Toasts</a></li>
            <li class="list-group-item"><a href="/demos/uim-components/components/tooltips">Tooltips</a></li>
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