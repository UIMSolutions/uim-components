module uim.components.dropdowns.header;

import uim.components;

class DUIMDropdownHeader : DUIMComponent {
	mixin(H5This!("uim-dropdown-header"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4DropdownHeader("<slot />");
		return super.toVueComponent		
		.name("UimDropdownHeader")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"DropdownHeader");

unittest {
	// assert(UIMDropdownHeader == `<uim-dropdown-header></uim-dropdown-header>`);
}
