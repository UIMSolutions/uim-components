module uim.components.basic.accordions.button;

import uim.components;

class DUIMAccordionButton : DUIMComponent {
	mixin(H5This!("uim-accordion-button"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj = BS5AccordionButton("<slot />");
		return super.toVUEComponent		
		.name("uim-accordion-button")
    .computed("classes", `return [""];`);
	}
}
mixin(UIMShort!"AccordionButton");

unittest {
	assert(Assert(UIMAccordionButton, `<uim-accordion-button></uim-accordion-button>`));

	// auto f = File("./public/js/uim/components/basic/accordions/accordion-button.js", "w"); 
  // f.write(UIMAccordionButton.toVUEComponent.toString);

	vue3components ~= UIMAccordionButton.toVue3("vue")~";";
}