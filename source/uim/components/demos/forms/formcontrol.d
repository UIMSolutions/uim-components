module uim.components.demos.demos.forms.formcontrol;

import uim.components;

static this() {
	demoUIMComps.pages("forms/formcontrol", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Form Control - uim-components Demo",
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
        <li class="breadcrumb-item"><a href="/demos/uim-components">Bootstrap 5</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-components/contents">Contents</a></li>
        <li class="breadcrumb-item active" aria-current="page">Form Control</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Form Control</h2>
        <hr>

        <div class="mb-5">
              <h3 class="text-muted">Text input</h3>
              <p>Applies to various textual inputs like <code>type="text"</code>, <code>type="search"</code>, <code>type="email"</code>, <code>type="url"</code>, <code>type="tel"</code>, <code>type="password"</code> and <code>type="number"</code>.</p>
              <div>
                <label for="inputText" class="form-label">Text input label</label>
                <input type="text" class="form-control" placeholder="Text input placeholder" id="inputText">
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Textarea</h3>
              <div>
                <label for="textarea" class="form-label">Textarea</label>
                <textarea class="form-control" id="textarea" rows="5" placeholder="Write your message here."></textarea>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Sizing</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Small</h4>
                <label for="inputTextSmall" class="form-label">Text input label</label>
                <input type="text" class="form-control form-control-sm" placeholder="Text input placeholder" id="inputTextSmall">
                <h4 class="h5 text-muted mt-3">Large</h4>
                <label for="inputTextLarge" class="form-label">Text input label</label>
                <input type="text" class="form-control form-control-lg" placeholder="Text input placeholder" id="inputTextLarge">
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Readonly</h3>
              <div>
                <label for="inputTextReadonly" class="form-label">Text input label</label>
                <input type="text" class="form-control" placeholder="Text input placeholder" id="inputTextReadonly" readonly>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Readonly plain text</h3>
              <div>
                <label for="inputTextReadonlyPlaintext" class="form-label">Text input label</label>
                <input type="text" class="form-control-plaintext" placeholder="Text input placeholder" id="inputTextReadonlyPlaintext" readonly>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">File</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Default</h4>
                <label class="form-label" for="inputFile">Default file input label</label>
                <input type="file" class="form-control" id="inputFile">
                <h4 class="h5 text-muted mt-3">Multiple</h4>
                <label class="form-label" for="inputFileMultiple">Multiple file input label</label>
                <input type="file" class="form-control" id="inputFileMultiple" multiple>
                <h4 class="h5 text-muted mt-3">Disabled</h4>
                <label class="form-label" for="inputFileDisabled">Disabled file input label</label>
                <input type="file" class="form-control" id="inputFileDisabled" disabled>
                <h4 class="h5 text-muted mt-3">Small</h4>
                <label class="form-label" for="inputFileSmall">Small file input label</label>
                <input type="file" class="form-control form-control-sm" id="inputFileSmall">
                <h4 class="h5 text-muted mt-3">Large</h4>
                <label class="form-label" for="inputFileLarge">Large file input label</label>
                <input type="file" class="form-control form-control-lg" id="inputFileLarge">
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Color picker</h3>
              <div>
                <label for="inputColor" class="form-label">Color input label</label>
                <input type="color" class="form-control form-control-color" id="inputColor" value="#7952b3" title="Choose color">
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Datalist</h3>
              <div>
                <label for="datalist" class="form-label">Datalist label</label>
                <input class="form-control" list="datalistOptions" id="datalist" placeholder="Type to search...">
                <datalist id="datalistOptions">
                  <option value="Bootstrap">
                  <option value="Foundation">
                  <option value="Semantic UI">
                  <option value="Bulma">
                  <option value="Materialize">
                </datalist>
              </div>
            </div>

          </div>
        </div>
      </div>
    </main>
      `;
    }
  });
}