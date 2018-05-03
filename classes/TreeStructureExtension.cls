public with sharing class TreeStructureExtension
{
    public String treeJson{get;set;}
    public List<JSTreeWraper> JSTreeLi;
    
    public TreeStructureExtension(ApexPages.StandardController controller)
    {
    	JSTreeLi= new List<JSTreeWraper>();
        Account acc = (Account)controller.getRecord();
        if(acc  != null && acc.Id != null)
        {
            List<Account> accList = new List<Account>();
            accList  = [SELECT Id,Name,Account__r.Name,Account__r.Account__r.Name,Account__r.Account__r.Account__r.Name,Account__r.Account__r.Account__r.Account__r.Name,Account__r.Account__r.Account__r.Account__r.Account__r.Name,(SELECT Id,Name FROM Accounts__r) FROM Account WHERE Id=:acc.Id LIMIT 1];
            if(accList.size() == 1)
            {
            	JSTreeWraper wrap;
            	if(accList[0].Account__r.Account__r.Account__r.Account__r.Account__c != null)
            	{
            		wrap = getTreeNode(accList[0].Account__r.Account__r.Account__r.Account__r.Account__c,accList[0].Account__r.Account__r.Account__r.Account__r.Account__r.Name);
            		JSTreeWraper wrap2 = getTreeNode(accList[0].Account__r.Account__r.Account__r.Account__c,accList[0].Account__r.Account__r.Account__r.Account__r.Name);
            		JSTreeWraper wrap3 = getTreeNode(accList[0].Account__r.Account__r.Account__c,accList[0].Account__r.Account__r.Account__r.Name);
            		JSTreeWraper wrap4 = getTreeNode(accList[0].Account__r.Account__c,accList[0].Account__r.Account__r.Name);
            		JSTreeWraper wrap5 = getTreeNode(accList[0].Account__c,accList[0].Account__r.Name);
            		JSTreeWraper wrap6 = getTreeNode(accList[0].Id,accList[0].Name);
            		if(accList[0].Accounts__r != null && accList[0].Accounts__r.size() > 0)
            		{
            			JSTreeWraper wrap7 =  getChildTreeNode(accList[0].Id);
            			wrap6.children.add(wrap7);
            		}
            		
            		
            		wrap5.children.add(wrap6);
            		wrap4.children.add(wrap5);
            		wrap3.children.add(wrap4);
            		wrap2.children.add(wrap3);
            		wrap.children.add(wrap2);
            	}
            	else if(accList[0].Account__r.Account__r.Account__r.Account__c != null)
            	{
            		wrap = getTreeNode(accList[0].Account__r.Account__r.Account__r.Account__c,accList[0].Account__r.Account__r.Account__r.Account__r.Name);
            		JSTreeWraper wrap2 = getTreeNode(accList[0].Account__r.Account__r.Account__c,accList[0].Account__r.Account__r.Account__r.Name);
            		JSTreeWraper wrap3 = getTreeNode(accList[0].Account__r.Account__c,accList[0].Account__r.Account__r.Name);
            		JSTreeWraper wrap4 = getTreeNode(accList[0].Account__c,accList[0].Account__r.Name);
            		JSTreeWraper wrap5 = getTreeNode(accList[0].Id,accList[0].Name);
            		if(accList[0].Accounts__r != null && accList[0].Accounts__r.size() > 0)
            		{
            			JSTreeWraper wrap6 =  getChildTreeNode(accList[0].Id);
            			wrap5.children.add(wrap6);
            		}
            		wrap4.children.add(wrap5);
            		wrap3.children.add(wrap4);
            		wrap2.children.add(wrap3);
            		wrap.children.add(wrap2);
            	}
            	else if(accList[0].Account__r.Account__r.Account__c != null)
            	{
            		wrap = getTreeNode(accList[0].Account__r.Account__r.Account__c,accList[0].Account__r.Account__r.Account__r.Name);
            		JSTreeWraper wrap2 = getTreeNode(accList[0].Account__r.Account__c,accList[0].Account__r.Account__r.Name);
            		JSTreeWraper wrap3 = getTreeNode(accList[0].Account__c,accList[0].Account__r.Name);
            		JSTreeWraper wrap4 = getTreeNode(accList[0].Id,accList[0].Name);
            		wrap3.children.add(wrap4);
            		wrap2.children.add(wrap3);
            		wrap.children.add(wrap2);
            	}
            	else if(accList[0].Account__r.Account__c != null)
            	{
            		wrap = getTreeNode(accList[0].Account__r.Account__c,accList[0].Account__r.Account__r.Name);
            		JSTreeWraper wrap2 = getTreeNode(accList[0].Account__c,accList[0].Account__r.Name);
            		JSTreeWraper wrap3 = getTreeNode(accList[0].Id,accList[0].Name);
            		wrap2.children.add(wrap3);
            		wrap.children.add(wrap2);
            	}
            	else if(accList[0].Account__c != null)
            	{
            		wrap = getTreeNode(accList[0].Account__c,accList[0].Account__r.Name);
            		JSTreeWraper wrap2 = getTreeNode(accList[0].Id,accList[0].Name);
            		wrap.children.add(wrap2);
            	}
            	else
            	{
            		wrap = getTreeNode(accList[0].Id,accList[0].Name);
            	}
            	JSTreeLi.add(wrap);
            }         
        }
        treeJson = JSON.serialize(JSTreeLi);
    }
    
    public JSTreeWraper getTreeNode(Id AccId,String Accountname)
    {
    	JSTreeWraper wrap = new JSTreeWraper();
		wrap.text = Accountname;
		wrap.icon = '';
        wrap.state.opened = false;
        wrap.state.disabled= false;
        wrap.state.selected = false;
		List<Contact> contactList = new List<Contact>();
		for(Contact con: [SELECT Id,Name,LastName FROM Contact WHERE AccountId=:AccId])
		{
			JSTreeWraper wrapChild = new JSTreeWraper();
        	wrapChild.text = con.LastName;
	        wrapChild.icon = '';
	        wrapChild.state.opened = false;
	        wrapChild.state.disabled= true;
	        wrapChild.state.selected = false;
	        wrap.children.add(wrapChild);
		}
		return wrap;
    }
    
    public JSTreeWraper getChildTreeNode(Id AccId)
    {
    	JSTreeWraper wrap = new JSTreeWraper();
    	List<Account> accList = new List<Account>();
    	accList = [SELECT Id,Name,(SELECT LastName FROM Contacts),(SELECT Id,Name FROM Accounts__r) FROM Account WHERE Account__c=:AccId];
    	if(accList.size() > 0)
    	{
    		for(Account acc: accList)
    		{
    			JSTreeWraper wrapChild = new JSTreeWraper();
    			wrapChild.text = acc.Name;
		        wrapChild.icon = '';
		        wrapChild.state.opened = false;
		        wrapChild.state.disabled= false;
		        wrapChild.state.selected = false;
		        if(acc.Contacts != null && acc.Contacts.size() > 0)
		        {
		        	for(Contact cc: acc.Contacts)
		        	{
		        		JSTreeWraper wrapChild2 = new JSTreeWraper();
			        	wrapChild2.text = cc.LastName;
				        wrapChild2.icon = '';
				        wrapChild2.state.opened = false;
				        wrapChild2.state.disabled= true;
				        wrapChild2.state.selected = false;
				        wrapChild.children.add(wrapChild2);
		        	}
		        }
		        if(acc.Accounts__r != null && acc.Accounts__r.size() > 0)
		        {
		        	for(Account acc2: acc.Accounts__r)
    				{
			        	JSTreeWraper wrapChild2 = new JSTreeWraper();
			        	wrapChild2.id = acc2.Id;
			        	wrapChild2.text = acc2.Name;
				        wrapChild2.icon = '';
				        wrapChild2.state.opened = false;
				        wrapChild2.state.disabled= false;
				        wrapChild2.state.selected = false;
				        wrapChild.children.add(wrapChild2);
    				}
		        }
		        wrap.children.add(wrapChild);
    		}
    	}
    	return wrap;
    }
    
    public class JSTreeWraper
    {
        public String id;   //string
        public String text; //string
        public String icon; //string
        public TreeState state;
        public List<JSTreeWraper> children;
        
        public JSTreeWraper()
        {
            this.state = new TreeState();
            this.children = new List<JSTreeWraper>();
        }
    }
    
    public class TreeState
    {
        public boolean opened;
        public boolean disabled;
        public boolean selected;
    }
}