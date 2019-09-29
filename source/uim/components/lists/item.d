module uim.components.lists.item;

import uim.components;

class DUIMListGroupItem : DUIMComponent {
	mixin(H5This!("LI", `["list-group-item"]`));
	override public void _init() {
		super._init;
	}
	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ListGroupItem("<slot />");
		return super.toVueComponent		
		.name("UimListGroupItem")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"ListGroupItem");

unittest {
	
	
	// assert(UIMListGroupItem == `<li class="list-group-item"></li>`);
}