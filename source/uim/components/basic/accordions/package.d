module uim.components.basic.accordions;

import uim.components;

@safe:

public import uim.components.basic.accordions.accordion;
public import uim.components.basic.accordions.body_;
public import uim.components.basic.accordions.button;
public import uim.components.basic.accordions.collapse;
public import uim.components.basic.accordions.header;
public import uim.components.basic.accordions.item;

string accordionsRegistration() {
  return "";
/*     UIMAlert.toVUEComponent.globalRegistration~
    UIMAlertHeading.toVUEComponent.globalRegistration~
    UIMAlertLink.toVUEComponent.globalRegistration;
 */}

string accordionsVue3(string target) {
  string[] results; 

	results ~= UIMAccordion.toVue3(target);
	results ~= UIMAccordionBody.toVue3(target);
	results ~= UIMAccordionButton.toVue3(target);
	results ~= UIMAccordionCollapse.toVue3(target);
	results ~= UIMAccordionHeader.toVue3(target);
	results ~= UIMAccordionItem.toVue3(target);

  return results.join(";")~";";
} 