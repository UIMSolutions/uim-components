module uim.components.basic.medias.media;

import uim.components;

class DUIMMedia : DUIMComponent {
	mixin(H5This!("uim-media"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Media("<slot />");
		return super.toVUEComponent		
		.name("uim-media")
		;
	}
}
mixin(UIMShort!"Media");

unittest {
	assert(Assert(UIMMedia, `<uim-media></uim-media>`));

	// auto f = File("./public/js/uim/components/basic/medias/media.js", "w"); 
  // f.write(UIMMedia.toVUEComponent.toString);
}
