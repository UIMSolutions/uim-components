module uim.components.breadcrumbs.breadcrumb;

import uim.components;

class DUIMBreadcrumb : DUIMComponent {
	mixin(H5This!("uim-breadcrumb"));

	mixin(MyContent!("item", "UIMBreadcrumbItem"));
	//O item(string url, string title) { }
	mixin(MyContent!("link", "UIMBreadcrumbLink"));
}
mixin(UIMShort!"Breadcrumb");

unittest {
	assert(UIMBreadcrumb == `<uim-breadcrumb></uim-breadcrumb>`);
}
