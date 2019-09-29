module uim.components.breadcrumbs.item;

import uim.components;

class DUIMBreadcrumbItem : DUIMComponent {
	mixin(H5This!("uim-breadcrumb-item"));

	mixin(MyClassAttribute!("active"));
	mixin(MyClassAttribute!("disabled"));
	
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		_templateObj =  BS4BreadcrumbItem("<slot />");
		return super.toVueComponent		
		.name("UimBreadcrumbItem")
		.props("active", `{ type: Boolean, default: false }`)
		.props("disabled", `{ type: Boolean, default: false }`)
    .computed("classes()", `return [
      this.active ? 'active' : ''.
      this.disabled ? 'disabled' : ''
      ]`)
    .template_(_templateObj);
	}
}
mixin(UIMShort!"BreadcrumbItem");

unittest {
	// assert(UIMBreadcrumbItem == `<uim-breadcrumb-item></uim-breadcrumb-item>`);
}
