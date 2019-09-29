module uim.components.lists.link;

import uim.components;

class DUIMListGroupLink : DUIMComponent {
	mixin(H5This!("uim-list-group-item"));
	override public void _init() {
		super._init;
	}
	O active(this O)(bool value = true) { return this.classes("active"); }
	O disabled(this O)(bool value = true) { return this.classes("disabled"); }
	O color(this O)(string aColor) { return this.classes("list-group-item-"~aColor); }

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ListGroupLink("<slot />");
		return super.toVueComponent		
		.name("UimListGroupLink")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"ListGroupLink");

unittest {
	// assert(UIMListGroupLink == `<uim-list-group-item"></uim-list-group-item>`);
	// assert(UIMListGroupLink.active == `<a class="active list-group-item list-group-item-action"></a>`);
	// assert(UIMListGroupLink.disabled == `<a class="disabled list-group-item list-group-item-action"></a>`);
}