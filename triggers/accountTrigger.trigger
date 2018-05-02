trigger accountTrigger on Account (before update){

     accountTriggerHandler handler=new accountTriggerHandler();
      
        if(Trigger.isUpdate){
              ////
              handler.accountRecordUpdate(Trigger.new,Trigger.old);//sd
              //ssfe
            }
}