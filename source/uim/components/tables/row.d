module uim.components.tables.row;

import uim.components;

class DUIMTableRow : DUIMComponent {
	mixin(H5This!("uim-table-row"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4TableRow("<slot />");
		return super.toVueComponent		
		.name("UimTableRow")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"TableRow");

unittest {
	// assert(UIMTableRow == `<uim-table-row></uim-table-row>`);
}