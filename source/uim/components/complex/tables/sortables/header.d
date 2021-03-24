module uim.components.complex.tables.sortables.header;

import uim.components;

@safe:

class DUIMTableSortableHeader : DUIMComponent {
	mixin(H5This!("uim-table-sortable-header"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-table-sortable-header"], H5Slot);
		return super.toVUEComponent		
		.name("uim-table-sortable-header");
	}
}
mixin(UIMShort!"TableSortableHeader");
unittest {
	assert(Assert(UIMTableSortableHeader, `<uim-table-sortable-header></uim-table-sortable-header>`));
}
