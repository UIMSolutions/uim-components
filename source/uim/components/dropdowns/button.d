module uim.components.dropdowns.button;

import uim.components;

class DUIMDropdownButton : DUIMComponent {
	mixin(H5This!("uim-dropdown-item"));

	auto toVue() {
		return super.toVue
		.name("UimDropdownButton")
    	.computed("classes()", `return [""]`)
    	.template_(BS4DropdownButton([":class":"this.classes"], "<slot />"));
	}

}
mixin(UIMShort!"DropdownButton");

unittest {
	assert(UIMDropdownButton == `<uim-dropdown-item></uim-dropdown-item>`);
}
