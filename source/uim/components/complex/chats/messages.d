module uim.components.complex.chats.messages;

import uim.components;

class DUIMChatMessages : DUIMComponent {
	mixin(H5This!("uim-chat-messages"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-chat-messages"], UIMChatMessage([":message":"message", "v-for":"message in this.messages", ":key":"message.id"]), H5String(H5Slot.toString));
		return super.toVUEComponent		
		.name("uim-chat-messages")
		.props("messages", "Array", "return[];");
	}
}
mixin(UIMShort!"ChatMessages");
unittest {
	assert(Assert(UIMChatMessages, `<uim-chat-messages></uim-chat-messages>`));

	auto f = File("./public/js/uim/components/complex/chats/"~"Messages".toLower~".js", "w"); // open for writing
  f.write(UIMChatMessages.toVUEComponent.toString);
}
