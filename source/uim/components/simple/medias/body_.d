module uim.components.medias.body_;

import uim.components;

class DUIMMediaBody : DUIMComponent {
	mixin(H5This!("uim-media-body"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4MediaBody("<slot />");
		return super.toVUEComponent		
		.name("uim-media-body")
		;
	}
}
mixin(UIMShort!"MediaBody");

unittest {
	assert(Assert(UIMMediaBody, `<uim-media-body></uim-media-body>`));
}
