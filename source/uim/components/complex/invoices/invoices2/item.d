module uim.components.complex.invoices.invoices2.item;

import uim.components;

class DUIMInvoiceItem : DUIMComponent {
	mixin(H5This!("uim-invoice-item"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS5TableRow(["uim-invoice-item"])
			.cell("{{item.id}}")
			.cell("{{item.group}}")
			.cell("{{item.title}}")
			.cell("{{item.description}}")
			.cell("{{item.quantity}}")
			.cell("{{item.unit}}")
			.cell("{{item.unitcost}}")
			.cell("{{item.total}}");
		return super.toVUEComponent		
		.name("uim-invoice-item")
		.props("invoiceItem", "Object", "return {};");
	}
}
mixin(UIMShort!"InvoiceItem");
unittest {
	assert(Assert(UIMInvoiceItem, `<uim-invoice-item></uim-invoice-item>`));
}
