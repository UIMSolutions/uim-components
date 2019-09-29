module uim.components.breadcrumbs.link;

import uim.components;

class DUIMBreadcrumbLink : DUIMComponent {	
	mixin(H5This!("uim-breadcrumb-link"));

	mixin(MyClassAttribute!("active"));
	mixin(MyClassAttribute!("disabled"));	

	mixin(TProperty!("string", "text"));
	unittest {
		// assert(UIMBreadcrumbLink.text("test").url("#") == `<li class="breadcrumb-item"><a href="#">test</a></li>`);
	}

	mixin(TProperty!("string", "url"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		_templateObj =  BS4BreadcrumbLink([":class":"this.classes", ":style": "this.styles", ":href":"this.href"], "<slot />");
		return super.toVueComponent		
		.name("UimBreadcrumbLink")
    	.props("href", `{ type: String, default: '#' }`)
    	.template_(_templateObj);
	}
}
mixin(UIMShort!"BreadcrumbLink");

unittest {
	// assert(UIMBreadcrumbLink == `<uim-breadcrumb-link></uim-breadcrumb-link>`);
}
