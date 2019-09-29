module uim.components.tables.header;

import uim.components;

class DUIMTableHeader : DUIMComponent {
	mixin(H5This!("uim-table-header"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4TableHeader("<slot />");
		return super.toVueComponent		
		.name("UimTableHeader")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"TableHeader");

unittest {
	// assert(UIMTableHeader == `<uim-table-header></uim-table-header>`);
}