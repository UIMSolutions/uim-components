module uim.components.basic.accordions.item;

import uim.components;

@safe:

class DUIMAccordionItem : DUIMComponent {
	mixin(H5This!("uim-accordion-item"));

	override void initialize() {
		super.initialize;
	}

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj = BS5AccordionItem("<slot />");
		return super.toVUEComponent		
		.name("uim-accordion-item")
    .computed("classes", `return [""];`);
	} */
}
mixin(UIMShort!"AccordionItem");

unittest {
	assert(Assert(UIMAccordionItem, `<uim-accordion-item></uim-accordion-item>`));

	// auto f = File("./public/js/uim/components/basic/accordions/accordion-item.js", "w"); 
  // f.write(UIMAccordionItem.toVUEComponent.toString);

	vue3components ~= UIMAccordionItem.toVue3("vue")~";";
}