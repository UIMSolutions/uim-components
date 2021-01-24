module uim.components.dropdowns.dropdown;

import uim.components;

class DUIMDropdown : DUIMComponent {
	mixin(H5This!("uim-dropdown"));

	mixin(MyContent!("menu", "UIMDropdownMenu"));
	mixin(MyContent!("toggleLink", "UIMToggleLink"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Dropdown(_id, _classes, _attributes, "<slot />");
		return super.toVUEComponent		
		.name("uim-dropdown")
		;
	}
}
mixin(UIMShort!"Dropdown");

unittest {
	assert(Assert(UIMDropdown, `<uim-dropdown></uim-dropdown>`));
	assert(Assert(UIMDropdown.id("id"), `<uim-dropdown id="id"></uim-dropdown>`));
}
