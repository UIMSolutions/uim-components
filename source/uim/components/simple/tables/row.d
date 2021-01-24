module uim.components.tables.row;

import uim.components;

class DUIMTableRow : DUIMComponent {
	mixin(H5This!("uim-table-row"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5TableRow("<slot />");
		return super.toVUEComponent		
		.name("uim-TableRow")
		;
	}
}
mixin(UIMShort!"TableRow");

unittest {
	assert(Assert(UIMTableRow, `<uim-table-row></uim-table-row>`));
}