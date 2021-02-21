module uim.components.basic.cards.image;

import uim.components;

class DUIMCardImage : DUIMComponent { // default top
	mixin(H5This!("uim-card-image"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj =  BS5CardImage("<slot />");
		return super.toVUEComponent		
		.name("uim-card-image")
    .props("position", `type:String,default:"top",validator:value => ["top","bottom"].indexOf(value) >= 0`)
    .computed("classes", `return [this.position==="top"?'card-img-top':'card-img-bottom'];`);
	}
}
mixin(UIMShort!"CardImage");
unittest {
	assert(Assert(UIMCardImage, `<uim-card-image></uim-card-image>`));

	// auto f = File("./public/js/uim/components/basic/cards/image.js", "w"); 
  // f.write(UIMCardImage.toVUEComponent.toString);
}
