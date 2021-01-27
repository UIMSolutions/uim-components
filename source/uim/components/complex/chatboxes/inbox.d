module uim.components.complex.chatboxes.inbox;

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

	auto f = File("./public/js/uim/components/complex/chatboxes/inbox.js", "w"); 
  f.write(UIMChatboxInbox.toVUEComponent.toString);
}
