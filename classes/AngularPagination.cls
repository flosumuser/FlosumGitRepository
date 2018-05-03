public with sharing class AngularPagination
{
    public List<SelectOption> objectOptions {get; set;}
    public List<SelectOption> fieldOptions {get; set;}
    public List<String> selectedFields {get; set;}
    public String selectedObject {get; set;}
    
    public AngularPagination()
    {
        objectOptions = new List<SelectOption>();
        objectOptions.add(new SelectOption('','--None--'));
        List<String> names = new List<String>();
        for ( Schema.SObjectType o : Schema.getGlobalDescribe().values() )
        {
            Schema.DescribeSObjectResult objResult = o.getDescribe();
            system.debug( 'Sobject: ' + objResult );
            system.debug( 'Sobject API Name: ' + objResult.getName() );
            system.debug( 'Sobject Label Name: ' + objResult.getLabel() );
            
            /*system.debug( 'Sobject: ' + objResult );
            system.debug( 'Sobject API Name: ' + objResult.getName() );
            system.debug( 'Sobject Label Name: ' + objResult.getLabel() );*/
            names.add(objResult.getName().toLowerCase());
            
        }
        names.sort();
        for(String obN: names)
            objectOptions.add(new SelectOption(obN, obN));
    }
    
    public void listFields()
    {
        fieldOptions = new List<SelectOption>();
        System.debug(selectedObject );
        List<String> names = new List<String>();
        if(selectedObject != null && selectedObject != '')
        {
            Map<String,Schema.SObjectType> res = Schema.getGlobalDescribe();
            Schema.DescribeSObjectResult objResult = res.get(selectedObject).getDescribe();
            if(objResult.isAccessible() && objResult.isQueryable())
            {
                Map<String, Schema.SObjectField> M = objResult.fields.getMap();        
                for(Schema.SObjectField s1:m.values()){
                    Schema.DescribeFieldResult dsfr = s1.getDescribe();
                    if(dsfr.isAccessible())
                        names.add(dsfr.getName().toLowerCase());
                        fieldOptions.add(new SelectOption(dsfr.getName().toLowerCase(),dsfr.getName()));
                }
            }
            for(String obN: names)
                fieldOptions.add(new SelectOption(obN, obN));
        }
    }
    
    @RemoteAction @ReadOnly
    public static List<sObject> getAllRecords()
    {
        return [SELECT Id,Name FROM Contact];
    }   
}