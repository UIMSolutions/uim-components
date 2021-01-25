module uim.components.basic.forms.controls.textarea;

import uim.components; 

class DUIMInputTextarea : DUIMComponent {
	mixin(H5This!("uim-input-textarea"));

	mixin(MyAttribute!"rows");
	unittest {
		assert(Assert(UIMInputTextarea.rows("8"), `<uim-input-textarea rows="8"></uim-input-textarea>`));	
	}

	mixin(MyAttribute!"cols");
	unittest {
		assert(Assert(UIMInputTextarea.cols("1"), `<uim-input-textarea cols="1"></uim-input-textarea>`));	
	}

	O size(this O)(string rows, string cols) { this.attributes(["rows":rows, "cols": cols]); return cast(O)this; }
	unittest {
		assert(Assert(UIMInputTextarea.size("10", "5"), `<uim-input-textarea cols="5" rows="10"></uim-input-textarea>`));	
	}

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputTextarea("<slot />");
		return super.toVUEComponent		
		.name("uim-input-textarea");
	}
}
mixin(UIMShort!("InputTextarea"));

unittest {
	assert(Assert(UIMInputTextarea, "<uim-input-textarea></uim-input-textarea>"));	

	auto f = File("./public/js/uim/components/basic/forms/controls/textarea.js", "w");
  f.write(UIMInputTextarea.toVUEComponent.toString);
}