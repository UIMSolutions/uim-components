module uim.components.dropdowns.togglelink;

import uim.components;

class DUIMDropdownTogglelink : DUIMComponent {
	mixin(H5This!("uim-dropdown-togglelink"));

	unittest {
		assert(Assert(UIMDropdownTogglelink, `<uim-dropdown-togglelink></uim-dropdown-togglelink>`));
		assert(Assert(UIMDropdownTogglelink.id("id"), `<uim-dropdown-togglelink id="id"></uim-dropdown-togglelink>`));
	}

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4DropdownTogglelink("<slot />");
		return super.toVUEComponent		
		.name("uim-dropdown-togglelink");
	}
}
mixin(UIMShort!"DropdownTogglelink");

unittest {
}

