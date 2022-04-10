module uim.components.basic.progresses.progress;

import uim.components;

@safe:

class DUIMProgress : DUIMComponent {
	mixin(H5This!("uim-progress"));

	override void initialize() {
		super.initialize;
	}

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Progress("<slot />");
		return super.toVUEComponent		
		.name("uim-progress")
		;
	} */
}
mixin(UIMShort!"Progress");

unittest {
	assert(Assert(UIMProgress, `<uim-progress></uim-progress>`));
}