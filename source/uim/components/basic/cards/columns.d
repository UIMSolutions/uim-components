module uim.components.basic.cards.columns;

import uim.components;

@safe:

class DUIMCardColumns : DUIMComponent {
	mixin(H5This!("uim-card-columns"));
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5CardColumns("<slot />");
		return super.toVUEComponent		
		.name("uim-card-columns");
	} */
}
mixin(UIMShort!"CardColumns");
unittest {
	assert(Assert(UIMCardColumns, `<uim-card-columns></uim-card-columns>`));

	// auto f = File("./public/js/uim/components/basic/cards/columns.js", "w"); 
  // f.write(UIMCardColumns.toVUEComponent.toString);
}
