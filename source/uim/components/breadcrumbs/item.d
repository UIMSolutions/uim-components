module uim.components.breadcrumbs.item;

import uim.components;

class DUIMBreadcrumbItem : DUIMComponent {
	mixin(H5This!("uim-breadcrumb-item"));

	mixin(MyClassAttribute!("active"));
	mixin(MyClassAttribute!("disabled"));
}
mixin(UIMShort!"BreadcrumbItem");

unittest {
	assert(UIMBreadcrumbItem == `<uim-breadcrumb-item></uim-breadcrumb-item>`);
}
