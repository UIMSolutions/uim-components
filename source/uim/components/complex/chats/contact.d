module uim.components.complex.chats.contact;

import uim.components;

class DUIMChatContact : DUIMComponent {
	mixin(H5This!("uim-chat-contact"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-chat-contact"], H5Slot);
		return super.toVUEComponent		
		.name("uim-chat-contact")
		.props("contact", "Object", "return{};");
	}
}
mixin(UIMShort!"ChatContact");
unittest {
	assert(Assert(UIMChatContact, `<uim-chat-contact></uim-chat-contact>`));
		
	auto f = File("./public/js/uim/components/complex/chats/contact.js", "w"); 
  f.write(UIMChatContact.toVUEComponent.toString);
}
