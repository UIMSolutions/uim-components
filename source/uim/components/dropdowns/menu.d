module uim.components.dropdowns.menu;

import uim.components;

class DUIMDropdownMenu : DUIMComponent {
	mixin(H5This!("uim-dropdown-menu"));

	mixin(MyAttribute!("label", "aria-labelledby"));
	mixin(MyContent!("header", "UIMMenu"));
	mixin(MyContent!("item", "UIMDropdownItem"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4DropdownMenu("<slot />");
		return super.toVueComponent		
		.name("UimDropdownMenu")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"DropdownMenu");

unittest {
	// assert(UIMDropdownMenu == `<uim-dropdown-menu></uim-dropdown-menu>`);
}
