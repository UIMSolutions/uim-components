module uim.components.breadcrumbs.item;

import uim.components;

class DUIMBreadcrumbItem : DUIMComponent {
	mixin(H5This!("uim-breadcrumb-item"));

	mixin(MyClassAttribute!("active"));
	mixin(MyClassAttribute!("disabled"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5BreadcrumbItem("<slot />");
		return super.toVUEComponent		
		.name("uim-breadcrumb-item")
		.props("active", `{type:Boolean,default:false}`)
		.props("disabled", `{type:Boolean,default:false}`)
    .computed("classes", `return [
      this.active ? 'active' : '',
      this.disabled ? 'disabled' : ''
      ]`)
    ;
	}
}
mixin(UIMShort!"BreadcrumbItem");

unittest {
	assert(Assert(UIMBreadcrumbItem, `<uim-breadcrumb-item></uim-breadcrumb-item>`));
}
