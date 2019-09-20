module uim.components.breadcrumbs.link;

import uim.components;

class DUIMBreadcrumbLink : DUIMComponent {	
	mixin(H5This!("uim-breadcrumb-link"));

	mixin(MyClassAttribute!("active"));
	mixin(MyClassAttribute!("disabled"));	

	mixin(TProperty!("string", "text"));
	unittest {
		assert(UIMBreadcrumbLink.text("test").url("#") == `<li class="breadcrumb-item"><a href="#">test</a></li>`);
	}

	mixin(TProperty!("string", "url"));
}
mixin(UIMShort!"BreadcrumbLink");

unittest {
	assert(UIMBreadcrumbLink == `<uim-breadcrumb-link></uim-breadcrumb-link>`);
}
