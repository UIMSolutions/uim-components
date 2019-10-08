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

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ListGroupLink("<slot />");
		return super.toVUEComponent		
		.name("UimListGroupLink")
		;
	}
}
mixin(UIMShort!"ListGroupLink");

unittest {
	assert(Assert(UIMListGroupLink, `<uim-list-group-item></uim-list-group-item>`));
	assert(Assert(UIMListGroupLink.active, `<uim-list-group-item class="active list-group-item-action"></a>`));
	assert(Assert(UIMListGroupLink.disabled, `<uim-list-group-item class="disabled  list-group-item-action"></a>`));
}