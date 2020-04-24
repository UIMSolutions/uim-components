module uim.components.dropdowns.header;

import uim.components;

class DUIMDropdownHeader : DUIMComponent {
	mixin(H5This!("uim-dropdown-header"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4DropdownHeader("<slot />");
		return super.toVUEComponent		
		.name("uim-dropdown-header")
		;
	}
}
mixin(UIMShort!"DropdownHeader");

unittest {
	assert(Assert(UIMDropdownHeader, `<uim-dropdown-header></uim-dropdown-header>`));
}
