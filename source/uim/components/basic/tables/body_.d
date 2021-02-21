module uim.components.basic.tables.body_;

import uim.components;

class DUIMTableBody : DUIMComponent {
	mixin(H5This!("uim-table-body"));

	mixin(MyContent!("row", "UIMTableRow"));
	unittest {
		assert(Assert(UIMTableBody.row, `<uim-table-body><uim-table-row></uim-table-row></uim-table-body>`));
	}	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5TableBody("<slot />");
		return super.toVUEComponent		
		.name("uim-TableBody")
		;
	}
}
mixin(UIMShort!"TableBody");

unittest {
	assert(Assert(UIMTableBody, `<uim-table-body></uim-table-body>`));

	// auto f = File("./public/js/uim/components/basic/tables/body.js", "w"); 
  // f.write(UIMTableBody.toVUEComponent.toString);
}
