module uim.components.cards.card;

import uim.components;

class DUIMCard : DUIMComponent {
	mixin(H5This!("uim-card"));

	O block(this O)() { return this.classes("card-block"); }
	O inverse(this O)() { return this.classes("card-inverse"); }

	mixin(MyContent!("image", "UIMCardImage"));
	unittest {}

	mixin(MyContent!("header", "UIMCardHeader"));
	unittest {
		assert(Assert(UIMCard.header, `<uim-card><uim-card-header></uim-card-header></uim-card>`));
	}

	mixin(MyContent!("body_", "UIMCardBody"));
	unittest {
		assert(Assert(UIMCard.body_, `<uim-card><uim-card-body></uim-card-body></uim-card>`));
	}

	mixin(MyContent!("footer", "UIMCardFooter"));
	unittest {
		assert(Assert(UIMCard.footer, `<uim-card><uim-card-footer></uim-card-footer></uim-card>`));
	}

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj =  BS5Card("<slot />");
		return super.toVUEComponent		
		.name("uim-card");
	}
}
mixin(UIMShort!"Card");

unittest {
	assert(Assert(UIMCard, `<uim-card></uim-card>`));
	assert(Assert(UIMCard.header.body_.footer, `<uim-card><uim-card-header></uim-card-header><uim-card-body>`~
	`</uim-card-body><uim-card-footer></uim-card-footer></uim-card>`));
}
