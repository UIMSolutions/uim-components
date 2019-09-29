module uim.components.dropdowns.dropdown;

import uim.components;

class DUIMDropdown : DUIMComponent {
	mixin(H5This!("DIV", `["dropdown"]`));

	mixin(MyContent!("menu", "UIMDropdownMenu"));
	mixin(MyContent!("toggleLink", "UIMToggleLink"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Dropdown(_id, _classes, _attributes, "<slot />");
		return super.toVueComponent		
		.name("UimDropdown")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"Dropdown");

unittest {
	// assert(UIMDropdown == `<uim-dropdown></uim-dropdown>`);
	// assert(UIMDropdown.id("id") == `<uim-dropdown id="id"></uim-dropdown>`);
}
