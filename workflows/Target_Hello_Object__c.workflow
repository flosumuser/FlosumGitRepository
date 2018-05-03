<?xml version="1.0" encoding="UTF-8"?>
<Workflow    xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Send Log</fullName>
        <actions>
            <name>Send_Log</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Target_Hello_Object__c.Send_Email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>