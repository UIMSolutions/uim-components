module uim.components.cards.columns;

import uim.components;

class DUIMCardColumns : DUIMComponent {
	mixin(H5This!("uim-card-columns"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CardColumns("<slot />");
		return super.toVUEComponent		
		.name("uim-card-columns");
	}
}
mixin(UIMShort!"CardColumns");
unittest {
	assert(Assert(UIMCardColumns, `<uim-card-columns></uim-card-columns>`));
}
