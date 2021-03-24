module uim.components.complex.chats.message;

import uim.components;

@safe:

class DUIMChatMessage : DUIMComponent {
	mixin(H5This!("uim-chat-message"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-chat-message"], H5Slot);
		return super.toVUEComponent		
		.name("uim-chat-message")
		.props("message", "Object", "return{};");
	}
}
mixin(UIMShort!"ChatMessage");
unittest {
	assert(Assert(UIMChatMessage, `<uim-chat-message></uim-chat-message>`));
				
	auto f = File("./public/js/uim/components/complex/chats/"~"Message".toLower~".js", "w"); 
  f.write(UIMChatMessage.toVUEComponent.toString);
}
