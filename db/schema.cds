using {
    cuid,
    managed,
  
} from '@sap/cds/common';

using {paymenttype,vehicletype,currentstatus} from './types';
namespace cap.database.logistics;
entity Customer : cuid, managed {

    cust_name : String(120) not null;
    phone     : String(20);
    email     : String(120);
    address   : String(200);

    place_orders    : Association to many SalesOrder
                on place_orders.customer = $self;
}
entity Product : cuid, managed {

    prod_name : String(150) not null;
    price     : Decimal(15,2);
    stock     : Integer default 0;

    contains   : Association to many SalesItem
                on contains.product = $self;
}
entity SalesOrder : cuid, managed {

    order_date   : Date;
    status       : currentstatus;
    total_amount : Decimal(15,2);

    customer     : Association to Customer not null;

    items        : Composition of many SalesItem
                   on items.belongs_to = $self;

    dispatches   : Composition of many Delivery
                   on dispatches.order_delivery = $self;

    billing    : Composition of many Payment
                   on billing.final_payment = $self;
}

entity SalesItem : cuid, managed {

    quantity    : Integer not null;
    unit_price  : Decimal(15,2);
    line_total  : Decimal(15,2);

    belongs_to     : Association to SalesOrder not null;
    product     : Association to Product not null;
}




entity Delivery : cuid, managed {

    delivery_date : Date;
    status        : String(30);
    shipping_addr : String(200);
    tracking_no   : String(50);
    type          : vehicletype;
    order_delivery        : Association to SalesOrder not null;
}



entity Payment : cuid, managed {

    payment_date : Date;
    amount       : Decimal(15,2);
    method       : paymenttype;
    status       : String(30);
    final_payment      : Association to SalesOrder not null;
}
