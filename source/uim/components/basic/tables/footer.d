﻿module uim.components.basic.tables.footer;

import uim.components;

@safe:

class DUIMTableFooter : DUIMComponent {
	mixin(H5This!("uim-table-footer"));

	override void initialize() {
		super.initialize;
	}

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5TableFooter("<slot />");
		return super.toVUEComponent		
		.name("uim-TableFooter")
		;
	} */
}
mixin(UIMShort!"TableFooter");

unittest {
	assert(Assert(UIMTableFooter, `<uim-table-footer></uim-table-footer>`));

	// auto f = File("./public/js/uim/components/basic/tables/footer.js", "w"); 
  // f.write(UIMTableFooter.toVUEComponent.toString);
}
