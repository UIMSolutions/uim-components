module uim.components.dropdowns.link;

import uim.components;

class DUIMDropdownLink : DUIMComponent {
	mixin(H5This!("uim-dropdown-item"));
	
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4DropdownLink("<slot />");
		return super.toVueComponent		
		.name("UimDropdownLink")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"DropdownLink");

unittest {
		// assert(UIMDropdownHeader == `<uim-dropdown-item></uim-dropdown-item>`);
}
