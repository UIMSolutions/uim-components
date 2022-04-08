module uim.components.basic.forms.controls.image;

import uim.components;

@safe: 

class DUIMInputImage : DUIMComponent {
	mixin(H5This!("uim-input-image"));	

	override void initialize() {
		super.initialize;
	}

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputImage();
		return super.toVUEComponent		
		.name("uim-input-image")
		;
	}
 */}
mixin(UIMShort!("InputImage"));

unittest {
	assert(Assert(UIMInputImage, "<uim-input-image></uim-input-image>"));	

	// auto f = File("./public/js/uim/components/basic/forms/controls/image.js", "w");
  // f.write(UIMInputImage.toVUEComponent.toString);
}