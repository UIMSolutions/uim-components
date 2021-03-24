module uim.components.complex.invoices.invoices2.header;

import uim.components;

@safe:

class DUIMInvoiceHeader : DUIMComponent {
	mixin(H5This!("uim-invoice-header"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS5TableHeader(["uim-invoice-header"]).row(H5Slot);
		return super.toVUEComponent		
		.name("uim-invoice-header");
	}
}
mixin(UIMShort!"InvoiceHeader");
unittest {
	assert(Assert(UIMInvoiceHeader, `<uim-invoice-header></uim-invoice-header>`));
}
