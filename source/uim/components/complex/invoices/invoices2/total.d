module uim.components.complex.invoices.invoices2.total;

import uim.components;

@safe:

class DUIMInvoiceTotal : DUIMComponent {
	mixin(H5This!("uim-invoice-total"));

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = H5Div(["uim-invoice-total", "d-flex", "flex-row-reverse", "bg-dark", "text-white", "p-4"], H5Slot);
		return super.toVUEComponent		
		.name("uim-invoice-total");
	} */
}
mixin(UIMShort!"InvoiceTotal");
unittest {
	assert(Assert(UIMInvoiceTotal, `<uim-invoice-total></uim-invoice-total>`));
}
