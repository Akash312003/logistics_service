using { cap.database.logistics as db } from '../db/schema';
service logisticsService {

    @readonly
    entity Customers as projection on db.Customer {
        ID,
        cust_name,
        phone,
        email,
        address,
        place_orders
    };

    @readonly
    entity Products as projection on db.Product {
        ID,
        prod_name,
        price,
        stock,
        contains
    };

    entity SalesOrder as projection on db.SalesOrder {
        ID,
        order_date,
        status,
        total_amount,
        customer,
        items,
        dispatches,
        billing
    };

    entity SalesItem as projection on db.SalesItem {
        ID,
        quantity,
        unit_price,
        line_total,
        belongs_to,
        product
    };

    entity Delivery as projection on db.Delivery {
        ID,
        delivery_date,
        status,
        shipping_addr,
        tracking_no,
        type,
        order_delivery
    };

    entity Payment as projection on db.Payment {
        ID,
        payment_date,
        amount,
        method,
        status,
        final_payment
    };

}
