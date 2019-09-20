module uim.components.progresses.progress;

import uim.components;

class DUIMProgress : DUIMComponent {
	mixin(H5This!("uim-progress"));
	override public void init() {
		super.init;
	}
}
mixin(UIMShort!"Progress");

unittest {
	assert(UIMProgress == `<uim-progress></uim-progress>`);
}