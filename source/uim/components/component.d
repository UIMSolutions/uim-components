module uim.components.component;

import uim.components;

class DUIMComponent : DH5Obj {
	mixin(H5This!("uim"));
	override public void init() { super.init; }

	auto toAngular() {
		return null;
	}
	auto toReact() {
		return null;
	}
	auto toWeb() {
		return null;
	}
	auto toVue() {
		DVueComponent vue = VUEComponent;
		return vue;
	}

	override string toString() {
		return super.toString;
	} 
}
mixin(UIMShort!"CardBlock");
