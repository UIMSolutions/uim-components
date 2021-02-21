module uim.components.basic.accordions.collapse;

import uim.components;

class DUIMAccordionCollapse : DUIMComponent {
	mixin(H5This!("uim-accordion-collapse"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj = BS5AccordionCollapse("<slot />");
		return super.toVUEComponent		
		.name("uim-accordion-collapse")
    .computed("classes", `return [""];`);
	}
}
mixin(UIMShort!"AccordionCollapse");

unittest {
	assert(Assert(UIMAccordionCollapse, `<uim-accordion-collapse></uim-accordion-collapse>`));

	// auto f = File("./public/js/uim/components/basic/accordions/accordion-collapse.js", "w"); 
  // f.write(UIMAccordionCollapse.toVUEComponent.toString);

	vue3components ~= UIMAccordionCollapse.toVue3("vue")~";";
}