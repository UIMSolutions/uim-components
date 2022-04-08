module uim.components.basic.breadcrumbs.item;

import uim.components;

@safe:

class DUIMBreadcrumbItem : DUIMComponent {
	mixin(H5This!("uim-breadcrumb-item"));

	override void initialize() {
		super.initialize;
	}

	mixin(MyClassAttribute!("active"));
	mixin(MyClassAttribute!("disabled"));
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5BreadcrumbItem("<slot />");
		return super.toVUEComponent		
		.name("uim-breadcrumb-item")
		.props("active", `type:Boolean,default:false`)
		.props("disabled", `type:Boolean,default:false`)
    .computed("classes", `return [
      this.active ? 'active' : '',
      this.disabled ? 'disabled' : ''
      ]`)
    ;
	} */
}
mixin(UIMShort!"BreadcrumbItem");

unittest {
	assert(Assert(UIMBreadcrumbItem, `<uim-breadcrumb-item></uim-breadcrumb-item>`));
}
