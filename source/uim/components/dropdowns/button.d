module uim.components.dropdowns.button;

import uim.components;

class DUIMDropdownButton : DUIMComponent {
	mixin(H5This!("uim-dropdown-item"));

	override DVUEComponent toVUEComponent() {
		return super.toVUEComponent
		.name("UimDropdownButton")
    	.computed("classes", `return [""]`)
    	.template_(BS4DropdownButton([":class":"this.classes"], "<slot />"));
	}

}
mixin(UIMShort!"DropdownButton");

unittest {
	assert(Assert(UIMDropdownButton, `<uim-dropdown-item></uim-dropdown-item>`));
}
