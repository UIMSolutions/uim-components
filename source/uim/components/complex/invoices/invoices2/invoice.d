module uim.components.complex.invoices.invoices2.invoice;

import uim.components;

class DUIMInvoice : DUIMComponent {
	mixin(H5This!("uim-invoice"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS4TableHeader(["uim-invoice"]).row(H5Slot);
		return super.toVUEComponent		
		.name("uim-invoice");
	}
}
mixin(UIMShort!"Invoice");
unittest {
	assert(Assert(UIMInvoice, `<uim-invoice></uim-invoice>`));
}

/*

body {
    background: grey;
    margin-top: 120px;
    margin-bottom: 120px;
}

 <div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body p-0">
                    <uim-row class="p-5">
                        <div class="col-md-6">
                            <img src="http://via.placeholder.com/400x90?text=logo">
                        </div>

                        <div class="col-md-6 text-right">
                            <p class="font-weight-bold mb-1">Invoice #550</p>
                            <p class="text-muted">Due to: 4 Dec, 2019</p>
                        </div>
                    </uim-row>

                    <hr class="my-5">

                    <uim-row class="pb-5 p-5">
                        <div class="col-md-6">
                            <p class="font-weight-bold mb-4">Client Information</p>
                            <p class="mb-1">John Doe, Mrs Emma Downson</p>
                            <p>Acme Inc</p>
                            <p class="mb-1">Berlin, Germany</p>
                            <p class="mb-1">6781 45P</p>
                        </div>

                        <div class="col-md-6 text-right">
                            <p class="font-weight-bold mb-4">Payment Details</p>
                            <p class="mb-1"><span class="text-muted">VAT: </span> 1425782</p>
                            <p class="mb-1"><span class="text-muted">VAT ID: </span> 10253642</p>
                            <p class="mb-1"><span class="text-muted">Payment Type: </span> Root</p>
                            <p class="mb-1"><span class="text-muted">Name: </span> John Doe</p>
                        </div>
                    </uim-row>
                    <uim-row class="p-5">
                        <div class="col-md-12">
                            <uim-table>
                                <uim-invoice cols="['ID', 'Group', 'Title', 'Description', 'Quantity', 'Unit', 'Unit Cost', 'Total']"></uim-invoice>
                                <uim-invoice-items :items="[
                                    { id:1, group: 'Software',
                                    title: 'Mega Fun', description: 'LTS Versions',
                                    quantity: 21, unit: 'Byte', unitcost: 12.22, total: 256.62
                                    },
                                    { id:2, group: 'Software',
                                    title: 'Mega Fun', description: 'LTS Versions',
                                    quantity: 21, unit: 'Byte', unitcost: 12.22, total: 256.62
                                    },
                                    { id:3, group: 'Software',
                                    title: 'Mega Fun', description: 'LTS Versions',
                                    quantity: 21, unit: 'Byte', unitcost: 12.22, total: 256.62
                                    },
                                    { id:4, group: 'Software',
                                    title: 'Mega Fun', description: 'LTS Versions',
                                    quantity: 21, unit: 'Byte', unitcost: 12.22, total: 256.62
                                    }
                                ]">
                                </uim-invoice-items>
                            </uim-table>
                        </div>
                    </uim-row>
                    <div class="d-flex flex-row-reverse bg-dark text-white p-4">
                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Grand Total</div>
                            <div class="h2 font-weight-light">$234,234</div>
                        </div>

                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Discount</div>
                            <div class="h2 font-weight-light">10%</div>
                        </div>

                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Sub - Total amount</div>
                            <div class="h2 font-weight-light">$32,432</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="text-light mt-5 mb-5 text-center small">by : <a class="text-light" target="_blank" href="http://totoprayogo.com">totoprayogo.com</a></div>

</div>



*/