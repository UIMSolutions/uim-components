module uim.components.basic.buttons.group;

import uim.components;

class DUIMButtonGroup : DUIMComponent {
	mixin(H5This!("uim-button-group"));

	mixin(MyAttribute!("label", "aria-label"));
	unittest {
		assert(Assert(UIMButtonGroup.label("test"), `<uim-button-group aria-label="test"></uim-button-group>`));
	}

	mixin(MyContent!("button", "UIMButton"));
	unittest {
	}

	mixin(MyContent!("link", "UIMButtonLink"));
	unittest {
	}

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj =  BS5ButtonGroup("<slot />");
		return super.toVUEComponent
		.name("uim-button-group")
    .props("orientation", `type:String,default:"horizontal", validator: value => ["horizontal", "vertical"].indexOf(value) >= 0`)
    .props("size", `type:String,default:"normal", validator: value => ["normal", "lg", "sm"].indexOf(value) >= 0`)
    .computed("classes", `return [
    this.orientation === "horizontal" ? "btn-group" : "btn-group-vertical",
    this.size !== "normal" ? 'btn-group-'+this.size : ""];`)
    ;
	}

}
mixin(UIMShort!"ButtonGroup");

unittest {
	assert(Assert(UIMButtonGroup, `<uim-button-group></uim-button-group>`));

	// auto f = File("./public/js/uim/components/basic/buttons/group.js", "w"); 
  // f.write(UIMButtonGroup.toVUEComponent.toString);
}