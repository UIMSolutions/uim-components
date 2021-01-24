module uim.components.complex.mailboxes.mail;

import uim.components;

class DUIMMail : DUIMComponent {
	mixin(H5This!("uim-mail"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-mail"], H5Slot);
		return super.toVUEComponent		
		.name("uim-mail");
	}
}
mixin(UIMShort!"Mail");
unittest {
	assert(Assert(UIMMail, `<uim-mail></uim-mail>`));
}
