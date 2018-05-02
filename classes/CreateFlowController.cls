public with sharing class CreateFlowController
{
    public String flowName {get; set;}
    public Integer flowNumber {get; set;}
    
    public CreateFlowController()
    {
        flowNumber = 1;
    }
    
    public void createFlowByCode()
    {
        try
        {   
            MetadataService.MetadataPort service = createService();
    
            // Create Flow
            MetadataService.Flow flow = new MetadataService.Flow();
            flow.fullName = flowName+ '-' +flowNumber ;//'NewFlow-1';
            flow.description = flowName+ '-' +flowNumber ;
            flow.label = flowName+ '-' +flowNumber ;
            flow.processType = 'Flow';
            MetadataService.FlowRecordCreate recordCreate = new MetadataService.FlowRecordCreate();
            recordCreate.name = 'RecordCreate';
            recordCreate.label = 'Record Create';
            recordCreate.object_x = 'Account';
            recordCreate.locationX = 10;
            recordCreate.locationY = 10;
            recordCreate.inputAssignments = new List<MetadataService.FlowInputFieldAssignment>();
            recordCreate.inputAssignments.add(new MetadataService.FlowInputFieldAssignment());
            recordCreate.inputAssignments[0].field = 'AccountNumber';
            recordCreate.inputAssignments[0].value = new MetadataService.FlowElementReferenceOrValue();
            recordCreate.inputAssignments[0].value.stringValue = '1234';
            flow.recordCreates = new List<MetadataService.FlowRecordCreate> { recordCreate };
            flow.startElementReference = 'RecordCreate';
            handleSaveResults(service.createMetadata(new List<MetadataService.Metadata> { flow })[0]);
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.CONFIRM,flowName+ '-' +flowNumber+'Successfuly created.');
            ApexPages.addMessage(myMsg);
            flowNumber++;
        }
        catch(Exception ex)
        {
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR,ex.getMessage());
            ApexPages.addMessage(myMsg);
        }
    }
    
    public static MetadataService.MetadataPort createService()
    {
        MetadataService.MetadataPort service = new MetadataService.MetadataPort();
        service.SessionHeader = new MetadataService.SessionHeader_element();
        service.SessionHeader.sessionId = UserInfo.getSessionId();
        return service;
    }
    
    public static void handleSaveResults(MetadataService.SaveResult saveResult)
    {
        // Nothing to see?
        if(saveResult==null || saveResult.success)
            return;
        // Construct error message and throw an exception
        if(saveResult.errors!=null)
        {
            List<String> messages = new List<String>();
            messages.add(
                (saveResult.errors.size()==1 ? 'Error ' : 'Errors ') +
                    'occured processing component ' + saveResult.fullName + '.');
            for(MetadataService.Error error : saveResult.errors)
                messages.add(
                    error.message + ' (' + error.statusCode + ').' +
                    ( error.fields!=null && error.fields.size()>0 ?
                        ' Fields ' + String.join(error.fields, ',') + '.' : '' ) );
            if(messages.size()>0)
                throw new MetadataServiceExamplesException(String.join(messages, ' '));
        }
        if(!saveResult.success)
            throw new MetadataServiceExamplesException('Request failed with no specified error.');
    }
    
    public class MetadataServiceExamplesException extends Exception { }
}