module uim.components.complex.invoices.invoices2.body_;

import uim.components;

@safe:

class DUIMInvoiceBody : DUIMComponent {
	mixin(H5This!("uim-invoice-body"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS5TableBody(["uim-invoice-body"], "<slot />");
		return super.toVUEComponent		
		.name("uim-invoice-body");
	}
}
mixin(UIMShort!"InvoiceBody");
unittest {
	assert(Assert(UIMInvoiceBody, `<uim-invoice-body></uim-invoice-body>`));
}
