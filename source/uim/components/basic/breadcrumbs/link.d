module uim.components.basic.breadcrumbs.link;

import uim.components;

class DUIMBreadcrumbLink : DUIMComponent {	
	mixin(H5This!("uim-breadcrumb-link"));

	mixin(MyClassAttribute!("active"));
	mixin(MyClassAttribute!("disabled"));	

	mixin(TProperty!("string", "text"));
	unittest {
		// assert(Assert(UIMBreadcrumbLink.text("test").url("#"), `<uim-breadcrumb-link href="#">test</uim-breadcrumb-link>`));
	}

	mixin(TProperty!("string", "url"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj =  BS5BreadcrumbLink([":class":"this.classes", ":style": "this.styles", ":href":"this.href"], "<slot />");
		return super.toVUEComponent		
		.name("uim-breadcrumb-link")
    	.props("href", `{ type: String,default:'#'}`);
	}
}
mixin(UIMShort!"BreadcrumbLink");

unittest {
	assert(Assert(UIMBreadcrumbLink, `<uim-breadcrumb-link></uim-breadcrumb-link>`));
}
