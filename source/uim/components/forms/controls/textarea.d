module uim.components.forms.controls.textarea;

import uim.components; 

class DUIMInputTextArea : DUIMComponent {
	mixin(H5This!("uim-input-textarea"));

	mixin(MyAttribute!"rows");
	unittest {
		assert(Assert(UIMInputTextArea.rows("8"), `<uim-input-textarea rows="8"></uim-input-textarea>`));	
	}

	mixin(MyAttribute!"cols");
	unittest {
		assert(Assert(UIMInputTextArea.cols("1"), `<uim-input-textarea cols="1"></uim-input-textarea>`));	
	}

	O size(this O)(string rows, string cols) { this.attributes(["rows":rows, "cols": cols]); return cast(O)this; }
	unittest {
		assert(Assert(UIMInputTextArea.size("10", "5"), `<uim-input-textarea cols="5" rows="10"></uim-input-textarea>`));	
	}

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputTextArea("<slot />");
		return super.toVUEComponent		
		.name("UimInputTextArea");
	}
}
mixin(UIMShort!("InputTextArea"));

unittest {
	assert(Assert(UIMInputTextArea, "<uim-input-textarea></uim-input-textarea>"));	
}