module uim.components.complex.tables.sortables.sortable;

import uim.components;

@safe:

class DUIMTableSortable : DUIMComponent {
	mixin(H5This!("uim-table-sortable"));

	override void initialize() {
		super.initialize;
	}
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-table-sortable"], H5Slot);
		return super.toVUEComponent		
		.name("uim-table-sortable");
	} */
}
mixin(UIMShort!"TableSortable");
unittest {
	assert(Assert(UIMTableSortable, `<uim-table-sortable></uim-table-sortable>`));
}
