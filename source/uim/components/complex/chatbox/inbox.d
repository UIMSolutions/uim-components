module uim.components.complex.chatbox.inbox;

import uim.components;

class DUIMChatboxInbox : DUIMComponent {
	mixin(H5This!("uim-chatbox-inbox"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-chatbox-inbox"], H5Slot);
		return super.toVUEComponent		
		.name("uim-chatbox-inbox");
	}
}
mixin(UIMShort!"ChatboxInbox");
unittest {
	assert(Assert(UIMChatboxInbox, `<uim-chatbox-inbox></uim-chatbox-inbox>`));
}
