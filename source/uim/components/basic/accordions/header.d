module uim.components.basic.accordions.header;

import uim.components;

@safe:

class DUIMAccordionHeader : DUIMComponent {
	mixin(H5This!("uim-accordion-header"));

	override void initialize() {
		super.initialize;
	}

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj = BS5AccordionHeader("<slot />");
		return super.toVUEComponent		
		.name("uim-accordion-header")
    .computed("classes", `return [""];`);
	} */
}
mixin(UIMShort!"AccordionHeader");

unittest {
	assert(Assert(UIMAccordionHeader, `<uim-accordion-header></uim-accordion-header>`));

	// auto f = File("./public/js/uim/components/basic/accordions/accordion-header.js", "w"); 
  // f.write(UIMAccordionHeader.toVUEComponent.toString);

	// ue3components ~= UIMAccordionHeader.toVue3("vue")~";";
}