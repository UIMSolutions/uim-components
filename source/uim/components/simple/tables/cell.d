module uim.components.tables.cell;

import uim.components;

class DUIMTableCell : DUIMComponent {
	mixin(H5This!("uim-table-cell"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5TableCell("<slot />");
		return super.toVUEComponent		
		.name("uim-TableCell")
		;
	}
}
mixin(UIMShort!"TableCell");

unittest {
	assert(Assert(UIMTableCell, `<uim-table-cell></uim-table-cell>`));
}