module uim.components.dropdowns.divider;

import uim.components;

class DUIMDropdownDivider : DUIMComponent {
	mixin(H5This!("uim-dropdown-divider"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4DropdownDivider("<slot />");
		return super.toVUEComponent		
		.name("uim-dropdown-divider")
		;
	}
}
mixin(UIMShort!"DropdownDivider");

unittest {
	assert(Assert(UIMDropdownDivider, `<uim-dropdown-divider></uim-dropdown-divider>`));
}
