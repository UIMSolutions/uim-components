module uim.components.cards.columns;

import uim.components;

class DUIMCardColumns : DUIMComponent {
	mixin(H5This!("uim-card-columns"));
	
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CardColumns("<slot />");
		return super.toVueComponent		
		.name("UimCardColumns")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"CardColumns");
unittest {
	// assert(UIMCardColumns == `<uim-card-columns></uim-card-columns>`);
}
