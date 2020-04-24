module uim.components.forms.controls.image;

import uim.components; 

class DUIMInputImage : DUIMComponent {
	mixin(H5This!("uim-input-image"));	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputImage();
		return super.toVUEComponent		
		.name("uim-input-image")
		;
	}
}
mixin(UIMShort!("InputImage"));

unittest {
	assert(Assert(UIMInputImage, "<uim-input-image></uim-input-image>"));	
}