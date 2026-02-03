sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"cap/sample/logistics/logisticsservice/test/integration/pages/CustomersList",
	"cap/sample/logistics/logisticsservice/test/integration/pages/CustomersObjectPage",
	"cap/sample/logistics/logisticsservice/test/integration/pages/OrdersObjectPage"
], function (JourneyRunner, CustomersList, CustomersObjectPage, OrdersObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('cap/sample/logistics/logisticsservice') + '/test/flp.html#app-preview',
        pages: {
			onTheCustomersList: CustomersList,
			onTheCustomersObjectPage: CustomersObjectPage,
			onTheOrdersObjectPage: OrdersObjectPage
        },
        async: true
    });

    return runner;
});

