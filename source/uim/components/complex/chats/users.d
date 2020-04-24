module uim.components.complex.chats.users;

import uim.components;

class DUIMChatUsers : DUIMComponent {
	mixin(H5This!("uim-chat-users"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-chat-users"], UIMChatUser([":user":"user", "v-for":"user in this.users", ":key":"user.id"]), H5String(H5Slot.toString));
		return super.toVUEComponent		
		.name("uim-chat-users")
		.props("users", "Array", "return[];");
	}
}
mixin(UIMShort!"ChatUsers");
unittest {
	assert(Assert(UIMChatUsers, `<uim-chat-users></uim-chat-users>`));
}
