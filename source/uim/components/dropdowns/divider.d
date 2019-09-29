module uim.components.dropdowns.divider;

import uim.components;

class DUIMDropdownDivider : DUIMComponent {
	mixin(H5This!("uim-dropdown-divider"));
	
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4DropdownDivider("<slot />");
		return super.toVueComponent		
		.name("UimDropdownDivider")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"DropdownDivider");

unittest {
	// assert(UIMDropdownDivider == `<uim-dropdown-divider></uim-dropdown-divider>`);
}
