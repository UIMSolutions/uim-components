module uim.components.cards.image;

import uim.components;

class DUIMCardImage : DUIMComponent { // default top
	mixin(H5This!("uim-card-img"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		_templateObj =  BS4CardImage("<slot />");
		return super.toVueComponent		
		.name("UimCardImage")
    .props("position", `{ type: String, default: "top", validator: value => ["top","bottom"].indexOf(value) >= 0 }`)
    .computed("classes()", `return [
      this.position === "top" ? 'card-img-top' : 'card-img-bottom'
      ]`)
    .template_(_templateObj);
	}
}
mixin(UIMShort!"CardImage");
unittest {
	// assert(UIMCardImage == `<uim-card-image></uim-card-image>`);
}
