module uim.components.medias.media;

import uim.components;

class DUIMMedia : DUIMComponent {
	mixin(H5This!("uim-media"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Media("<slot />");
		return super.toVueComponent		
		.name("UimMedia")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"Media");

unittest {
	// assert(UIMMedia == `<uim-media></uim-media>`);
}
