module uim.components.complex.chats.chat;

import uim.components;

@safe:

class DUIMChat : DUIMComponent {
	mixin(H5This!("uim-chat"));

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-chat"], H5Slot);
		return super.toVUEComponent		
		.name("uim-chat");
	} */
}
mixin(UIMShort!"Chat");
unittest {
	assert(Assert(UIMChat, `<uim-chat></uim-chat>`));

	auto f = File("./public/js/uim/components/complex/chats/"~"".toLower~".js", "w"); 
  // f.write(UIMChat.toVUEComponent.toString);
}
