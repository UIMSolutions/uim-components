module uim.components.lists.link;

import uim.components;

class DUIMListGroupLink : DUIMComponent {
	mixin(H5This!("A", `["list-group-item list-group-item-action"]`));
	override public void init() {
		super.init;
	}
	O active(this O)(bool value = true) { return this.classes("active"); }
	O disabled(this O)(bool value = true) { return this.classes("disabled"); }
	O color(this O)(string aColor) { return this.classes("list-group-item-"~aColor); }
}
mixin(UIMShort!"ListGroupLink");

unittest {
	
	
	assert(UIMListGroupLink == `<a class="list-group-item list-group-item-action"></a>`);
	assert(UIMListGroupLink.active == `<a class="active list-group-item list-group-item-action"></a>`);
	assert(UIMListGroupLink.disabled == `<a class="disabled list-group-item list-group-item-action"></a>`);
}