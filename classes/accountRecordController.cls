public with sharing class accountRecordController {
    
    public Account acc {get;set;}
   
    public accountRecordController(ApexPages.StandardController stdController) {
         this.acc =(Account)stdController.getRecord() ;
         //sddfghr
    }
    
     public PageReference save() {
        // Add the account to the database. 
        insert acc;
        return null;
    }
}