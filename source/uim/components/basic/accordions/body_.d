module uim.components.basic.accordions.body_;

import uim.components;

class DUIMAccordionBody : DUIMComponent {
	mixin(H5This!("uim-accordion-body"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj = BS5AccordionBody("<slot />");
		return super.toVUEComponent		
		.name("uim-accordion-body")
    .computed("classes", `return [""];`);
	}
}
mixin(UIMShort!"AccordionBody");

unittest {
	assert(Assert(UIMAccordionBody, `<uim-accordion-body></uim-accordion-body>`));

	// auto f = File("./public/js/uim/components/basic/accordions/accordion-body.js", "w"); 
  // f.write(UIMAccordionBody.toVUEComponent.toString);

	vue3components ~= UIMAccordionBody.toVue3("vue")~";";
}