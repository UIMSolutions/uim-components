module uim.components.basic.tables.cell;

import uim.components;

@safe:

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

	// auto f = File("./public/js/uim/components/basic/tables/cell.js", "w"); 
  // f.write(UIMTableCell.toVUEComponent.toString);
}
