module uim.components.complex.chats.contacts;

import uim.components;

class DUIMChatContacts : DUIMComponent {
	mixin(H5This!("uim-chat-contacts"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-chat-contacts"], UIMChatContact([":contact":"contact", "v-for":"contact in this.contacts", ":key":"contact.id"]), H5String(H5Slot.toString));
		return super.toVUEComponent		
		.name("uim-chat-contacts")
		.props("contacts", "Array", "return[];");
	}
}
mixin(UIMShort!"ChatContacts");
unittest {
	assert(Assert(UIMChatContacts, `<uim-chat-contacts></uim-chat-contacts>`));
}
