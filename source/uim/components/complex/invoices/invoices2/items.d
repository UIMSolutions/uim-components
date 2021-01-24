module uim.components.complex.invoices.invoices2.items;

import uim.components;

class DUIMInvoiceItems : DUIMComponent {
	mixin(H5This!("uim-invoice-items"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS5Table(["uim-invoice-items"],
			UIMInvoiceItem(["v-for":"item in this.items", ":key":"item.id", ":item":"item"]) 
		);
		return super.toVUEComponent		
		.name("uim-invoice-items")
		.props("items", "Array", "return [];");
	}
}
mixin(UIMShort!"InvoiceItems");
unittest {
	assert(Assert(UIMInvoiceItems, `<uim-invoice-items></uim-invoice-items>`));
}
