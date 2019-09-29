module uim.components.component;

import uim.components;

class DUIMComponent : DH5Obj {
	mixin(H5This!("uim-div"));

	O margin(this O)(string aMargin) { this.classes("m"~aMargin); return cast(O)this; }
	unittest {
		assert(UIMComponent.margin("t-2") == `<uim-div class="mt-2"></uim-div>`);
	}

	O padding(this O)(string aPadding) { this.classes("p"~aPadding); return cast(O)this; }
	unittest {
		assert(UIMComponent.padding("t-2") == `<uim-div class="pt-2"></uim-div>`);
	}

	O text(this O)(string textLayout) { this.classes("text-"~textLayout); return cast(O)this; }
	unittest {
		assert(UIMComponent.text("center") == `<uim-div class="text-center"></uim-div>`);
	}

	auto toAngular() {
		return null;
	}
	auto toReact() {
		return null;
	}
	auto toWeb() {
		return null;
	}

	DH5Obj _templateObj = H5Div;
	O templteObj(this O)(DH5Obj anObj) { _templateOb = anObj; return cast(O)this; } 

	/// Export component to VueComponent 
	protected DVUEComponent _vueComponent;
	DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		_vueComponent = VUEComponent
	    .computed("classes()", `return []`)
    	.computed("styles()", `return []`)
			.template_(_templateObj);
		return _vueComponent;
	}

	override string toString() {
		return super.toString;
	} 
}
mixin(UIMShort!"Component");
///
unittest {
	assert(UIMComponent == "<uim-div></uim-div>");
}