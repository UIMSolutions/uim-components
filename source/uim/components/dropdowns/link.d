module uim.components.dropdowns.link;

import uim.components;

class DUIMDropdownLink : DUIMComponent {
	mixin(H5This!("uim-dropdown-item"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4DropdownLink("<slot />");
		return super.toVUEComponent		
		.name("uim-dropdown-link")
		;
	}
}
mixin(UIMShort!"DropdownLink");

unittest {
		assert(Assert(UIMDropdownLink, `<uim-dropdown-item></uim-dropdown-item>`));
}
