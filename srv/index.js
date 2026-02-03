const cds = require('@sap/cds');

module.exports = class logisticsService extends cds.ApplicationService{
    init(){

 const { Customer,Product,SalesOrder,SalesItem,Delivery,Payment} = this.entities;

 return super.init()

    }
}
