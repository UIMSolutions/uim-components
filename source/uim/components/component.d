module uim.components.component;

import uim.components;

@safe:

class DUIMComponent : DH5Obj {
	mixin(H5This!("uim-div"));

	// Hook for adding code on initialization
	void initialize() {} 

	O margin(this O)(string aMargin) { this.classes("m"~aMargin); return cast(O)this; }
	unittest {
		assert(Assert(UIMComponent.margin("t-2"), `<uim-div class="mt-2"></uim-div>`));
	}

	O padding(this O)(string aPadding) { this.classes("p"~aPadding); return cast(O)this; }
	unittest {
		assert(Assert(UIMComponent.padding("t-2"), `<uim-div class="pt-2"></uim-div>`));
	}

	O text(this O)(string textLayout) { this.classes("text-"~textLayout); return cast(O)this; }
	unittest {
		assert(Assert(UIMComponent.text("center"), `<uim-div class="text-center"></uim-div>`));
	}

	auto toAngular() {
		return null;
	}
	auto toJavaScript() {
		return "";
	}
	auto toReact() {
		return null;
	}
	auto toWebComponent() {
		return "";
	}

	/// Root obj for template
	DH5Obj _templateObj = H5Div(new DH5Slot);
	O templateObj(this O)(DH5Obj anObj) { _templateObj = anObj; return cast(O)this; } 

	/* 	auto toWeb() {
			return "class %s extends HTMLElement { constructor() { } }";
		} */
	/** 
	* Export component to VueComponent 
	* _vueComponent - cache for toVUEComponent
	*/ 
/* 	protected DVUEComponent _vueComponent;
	DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_vueComponent = VUEComponent
		.computed("classes", `return [];`)
		.computed("styles", `return [];`);

		if (_templateObj) {
			_templateObj.attributes([":class":"this.classes", ":style":"this.styles"]);
			_vueComponent.template_(_templateObj.toString);
		}
		return _vueComponent;
	} */

	/// toString - export to string
	override string toString() {
		return super.toString;
	} 
	string toVue3(string target) {
		return toVUEComponent.toVue3(target);
	} 
}
mixin(UIMShort!"Component");

unittest {
	assert(Assert(UIMComponent, "<uim-div></uim-div>"));
}