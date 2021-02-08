module uim.components.demos.layout;

import uim.components;

/// Standard Bootstrap 5 Layout 
static this() {
  demoUIMComps.layout(new class DH5AppLayout {
  /// Basic Constructor
  this() {
    super();
    
    this
    .metas(
      ["charset":"utf-8"],
      ["http-equiv":"X-UA-Compatible", "content":"IE=edge"],
      ["name":"viewport", "content":"width=device-width, initial-scale=1"], 
      ["http-equiv":"Content-Type", "content":"text/html; charset=utf-8"],
      )
    .styles(
      ["href":"/lib/bootstrap/5.0.0-beta1/css/bootstrap.min.css", "rel":"stylesheet"], 
      ["href":"/lib/font-awesome/last/css/all.css", "rel":"stylesheet"],
      )
    .libraries(
      ["src":"/lib/bootstrap/5.0.0-beta1/js/bootstrap.bundle.min.js"], 
      ["src":"https://unpkg.com/vue@next"], 
     /*  ["src":"/lib/uim-components/all.js"],   */
      )
    .title("Demo - uim-components");
  }

  override string toString(DH5AppPage page, string[string] parameters = null) {
		if ("title" !in parameters) {
			parameters["title"] =  this.title;
		}

		if ("lang" !in parameters) {
			parameters["lang"] =  this.lang;
		}

		if (page) {			
			debug writeln("Reading header settings from page");
			if (page.title) parameters["title"] =  this.title;
			if (page.lang) parameters["lang"] = this.lang;

			if (page.metas) {
				if ("metas" in parameters) parameters["metas"] = page.metas.asString~parameters["metas"];
				else parameters["metas"] = page.metas.asString;
			}
			if (page.links) {
				parameters["links"] = "links" in parameters ? page.styles.asString~parameters["styles"] : page.styles.asString;
			}
			if (page.styles) {
				if ("styles" in parameters) parameters["styles"] = page.styles.asString~parameters["styles"];
				else parameters["styles"] = page.styles.asString;
			}
			if (page.libraries) {
				if ("libraries" in parameters) parameters["libraries"] = page.libraries.asString~parameters["libraries"];
				else parameters["libraries"] = page.libraries.asString;
			}
			debug writeln(parameters);
		}
		return toString(page.content, parameters);
	}

	override string toString(string content, string[string] parameters = null) {
		if (this.app) {			
			if (this.app.metas) {
				if ("metas" in parameters) parameters["metas"] = this.app.metas.asString~parameters["metas"];
				else parameters["metas"] = this.app.metas.asString;
			}
			if (this.app.styles) {
				if ("styles" in parameters) parameters["styles"] = this.app.styles.asString~parameters["styles"];
				else parameters["styles"] = this.app.styles.asString;
			}
			if (this.app.libraries) {
				if ("libraries" in parameters) parameters["libraries"] = this.app.libraries.asString~parameters["libraries"];
				else parameters["libraries"] = this.app.libraries.asString;
			}
		}
    auto finalLang = parameters.get("lang", this.lang); // if lang !in parameters use this.lang
		auto finalTitle = parameters.get("title", this.title);  // if title !in parameters use this.title

		// creating HTML page
		_html = H5Html
		.attributes("lang", finalLang).attributes("dir", parameters.get("dir", "ltr"))
		// Head part of HTML
		.head(_headClasses)
		.head(_headAttributes)
		.head(this.metas.asString~parameters.get("metas", ""))
		.head(finalTitle.length > 0 ? "<title>" ~ finalTitle ~ "</title>":"")
		.head(this.styles.asString~parameters.get("styles", ""))
		// Body part of HTML
		.body_(_bodyClasses)
		.body_(_bodyAttributes)
		.body_(this.layout ? this.layout.toString(content, this.parameters) : content)
		.body_(this.libraries.asString~parameters.get("libraries", ""))
		.body_("script" in parameters ? H5Script(parameters["script"]).toString : "");

		return _html.toString;
  }        
});
}
