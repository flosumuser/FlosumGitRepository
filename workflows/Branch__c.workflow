<?xml version="1.0" encoding="UTF-8"?>
<Workflow    xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>ABC</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Branch__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Tingu</value>
        </criteriaItems>
        <description>branch ABC</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BBC</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Branch__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Jumbo</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Branch Rule</fullName>
        <actions>
            <name>Alert</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Alert</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>This is branch workflow rule.</description>
        <formula>true</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Test Rule</fullName>
        <actions>
            <name>Alert</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Action_One</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Test_Msg</name>
            <type>OutboundMessage</type>
        </actions>
        <active>false</active>
        <formula>true</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Alert</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Branch__c.CreatedDate</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>