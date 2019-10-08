module uim.components.tables.row;

import uim.components;

class DUIMTableRow : DUIMComponent {
	mixin(H5This!("uim-table-row"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4TableRow("<slot />");
		return super.toVUEComponent		
		.name("UimTableRow")
		;
	}
}
mixin(UIMShort!"TableRow");

unittest {
	assert(Assert(UIMTableRow, `<uim-table-row></uim-table-row>`));
}