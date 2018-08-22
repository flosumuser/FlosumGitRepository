<?xml version="1.0" encoding="UTF-8"?>
<Workflow    xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Fill</fullName>
        <field>Description</field>
        <formula>&apos;Test Duplicate&apos;</formula>
        <name>Fill</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>AccountOutBound</fullName>
        <apiVersion>37.0</apiVersion>
        <description>Test</description>
        <endpointUrl>https://ap2.salesforce.com/calloutbound</endpointUrl>
        <fields>AccountNumber</fields>
        <fields>Id</fields>
        <fields>Name</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>saini@metadata.com</integrationUser>
        <name>AccountOutBound</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>New40</fullName>
        <apiVersion>40.0</apiVersion>
        <endpointUrl>https://saini123-dev-ed.my.salesforce.com</endpointUrl>
        <fields>AccountNumber</fields>
        <fields>AccountSource</fields>
        <fields>Id</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>saini@metadata.com</integrationUser>
        <name>New40</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
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
    <tasks>
        <fullName>Check_CRC</fullName>
        <assignedTo>saini@metadata.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Check CRC</subject>
    </tasks>
    <tasks>
        <fullName>TempTest__test</fullName>
        <assignedTo>saini@metadata.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Test approval process updated.</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>test</subject>
    </tasks>
</Workflow>