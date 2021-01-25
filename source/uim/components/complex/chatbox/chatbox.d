module uim.components.complex.chatbox.chatbox;

import uim.components;

class DUIMChatbox : DUIMComponent {
	mixin(H5This!("uim-chatbox"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-chatbox"], H5Slot);
		return super.toVUEComponent		
		.name("uim-chatbox");
	}
}
mixin(UIMShort!"Chatbox");
unittest {
	assert(Assert(UIMChatbox, `<uim-chatbox></uim-chatbox>`));
			
	auto f = File("./public/js/uim/components/complex/"~"Chatbox".toLower~".js", "w"); // open for writing
  f.write(UIMChatbox.toVUEComponent.toString);
}
