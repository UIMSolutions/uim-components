module uim.components.basic.accordions.header;

import uim.components;

class DUIMAccordionHeader : DUIMComponent {
	mixin(H5This!("uim-accordion-header"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj = BS5AccordionHeader("<slot />");
		return super.toVUEComponent		
		.name("uim-accordion-header")
    .computed("classes", `return [""];`);
	}
}
mixin(UIMShort!"AccordionHeader");

unittest {
	assert(Assert(UIMAccordionHeader, `<uim-accordion-header></uim-accordion-header>`));

	auto f = File("./public/js/uim/components/basic/accordions/accordion-header.js", "w"); 
  f.write(UIMAccordionHeader.toVUEComponent.toString);

	vue3components ~= UIMAccordionHeader.toVue3("vue")~";";
}