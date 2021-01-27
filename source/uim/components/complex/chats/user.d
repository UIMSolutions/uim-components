module uim.components.complex.chats.user;

import uim.components;

class DUIMChatUser : DUIMComponent {
	mixin(H5This!("uim-chat-user"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-chat-user"], H5Slot);
		return super.toVUEComponent		
		.name("uim-chat-user")
		.props("user", "Object", "return{};");
	}
}
mixin(UIMShort!"ChatUser");
unittest {
	assert(Assert(UIMChatUser, `<uim-chat-user></uim-chat-user>`));
		
	auto f = File("./public/js/uim/components/complex/chats/"~"User".toLower~".js", "w"); 
  f.write(UIMChatUser.toVUEComponent.toString);
}
