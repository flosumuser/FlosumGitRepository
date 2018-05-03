<?xml version="1.0" encoding="UTF-8"?>
<Workflow    xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>TestRule</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>equals</operation>
            <value>ABC</value>
        </criteriaItems>
        <description>This is test account rule.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>