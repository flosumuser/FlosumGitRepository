public with sharing class RecordFetchController
{
    //constructor
    public RecordFetchController()
    {
    }
    
    @RemoteAction
    public static List<sObject> listRecords(String objectName, String fieldNames,Integer queryLimit, String lastId)
    {
        String query = 'SELECT ';
        for(String fieldName : fieldNames.split(','))
        {
            if(query == 'SELECT ')
                query += fieldName;
            else
                query += ',' + fieldName;
        }
        if(lastId != null && lastId != '')
        {
            query += ' FROM '+objectName+' WHERE Id>:lastId ORDER BY Id LIMIT :queryLimit';
        }
        else
        {
            query += ' FROM '+objectName+' ORDER BY Id LIMIT :queryLimit';
        }
        return Database.query(query);
    }
}