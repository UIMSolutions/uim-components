module uim.components.basic.breadcrumbs.breadcrumb;

import uim.components;

class DUIMBreadcrumb : DUIMComponent {
	mixin(H5This!("uim-breadcrumb"));

	mixin(MyContent!("item", "UIMBreadcrumbItem"));
	//O item(string url, string title) { }
	mixin(MyContent!("link", "UIMBreadcrumbLink"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Breadcrumb("<slot />");
		return super.toVUEComponent		
		.name("uim-breadcrumb")
		;
	}
}
mixin(UIMShort!"Breadcrumb");

unittest {
	assert(Assert(UIMBreadcrumb, `<uim-breadcrumb></uim-breadcrumb>`));

	auto f = File("./public/js/uim/components/basic/breadcrumbs/breadcrumb.js", "w"); 
  f.write(UIMBreadcrumb.toVUEComponent.toString);
}
