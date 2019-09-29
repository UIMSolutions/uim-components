module uim.components.tables.cell;

import uim.components;

class DUIMTableCell : DUIMComponent {
	mixin(H5This!("uim-table-cell"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4TableCell("<slot />");
		return super.toVueComponent		
		.name("UimTableCell")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"TableCell");

unittest {
	// assert(UIMTableCell == `<uim-table-cell></uim-table-cell>`);
}