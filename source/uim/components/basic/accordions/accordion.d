module uim.components.basic.accordions.accordion;

import uim.components;

@safe:

class DUIMAccordion : DUIMComponent {
	mixin(H5This!("uim-accordion"));

	override void initialize() {
		super.initialize;
	}

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj = BS5Accordion("<slot />");
		return super.toVUEComponent		
		.name("uim-accordion")
    .computed("classes", `return [""];`);
	} */
}
mixin(UIMShort!"Accordion");

unittest {
	assert(Assert(UIMAccordion, `<uim-accordion></uim-accordion>`));

	// auto f = File("./public/js/uim/components/basic/accordions/accordion.js", "w"); 
  // f.write(UIMAccordion.toVUEComponent.toString);

	// vue3components ~= UIMAccordion.toVue3("vue")~";";
}