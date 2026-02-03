type paymenttype: String enum {
        CASH;
        DEBIT_CARD;
        CREDIT_CARD;
        UPI;
    };

type vehicletype :String enum {
    BOX_TRUCK;
    TANKER_TRUCK;
    CONTAINER_TRUCK;
    CAR_CARRIERS;
}

type currentstatus :String enum {
    PENDING;
    CONFIRMED;
    SHIPPED;
    CANCELLED;
}