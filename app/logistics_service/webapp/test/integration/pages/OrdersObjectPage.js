sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'cap.sample.logistics.logisticsservice',
            componentId: 'OrdersObjectPage',
            contextPath: '/Customers/place_orders'
        },
        CustomPageDefinitions
    );
});