<?xml version="1.0" encoding="UTF-8"?>
<Workflow    xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>TempTest__SendEmailTo</fullName>
        <description>SendEmailTo</description>
        <protected>false</protected>
        <recipients>
            <recipient>saini@metadata.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>TempTest__New_Folder/TempTest__Template</template>
    </alerts>
    <rules>
        <fullName>TempTest__SendEamil</fullName>
        <actions>
            <name>TempTest__SendEmailTo</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>TempTest__WorkflowObj__c.CreatedById</field>
            <operation>contains</operation>
            <value>abc</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>