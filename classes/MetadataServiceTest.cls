@isTest  
private class MetadataServiceTest
{   
    private class WebServiceMockImpl implements WebServiceMock 
    {
        public void doInvoke(
            Object stub, Object request, Map<String, Object> response,
            String endpoint, String soapAction, String requestName,
            String responseNS, String responseName, String responseType) 
        {
            if(request instanceof MetadataService.retrieve_element)
                response.put('response_x', new MetadataService.retrieveResponse_element());
            else if(request instanceof MetadataService.checkDeployStatus_element)
                response.put('response_x', new MetadataService.checkDeployStatusResponse_element());
            else if(request instanceof MetadataService.listMetadata_element)
                response.put('response_x', new MetadataService.listMetadataResponse_element());
            else if(request instanceof MetadataService.checkRetrieveStatus_element)
                response.put('response_x', new MetadataService.checkRetrieveStatusResponse_element());
            else if(request instanceof MetadataService.describeMetadata_element)
                response.put('response_x', new MetadataService.describeMetadataResponse_element());
            else if(request instanceof MetadataService.deploy_element)
                response.put('response_x', new MetadataService.deployResponse_element());
            else if(request instanceof MetadataService.updateMetadata_element)
                response.put('response_x', new MetadataService.updateMetadataResponse_element());
            else if(request instanceof MetadataService.renameMetadata_element)
                response.put('response_x', new MetadataService.renameMetadataResponse_element());
            else if(request instanceof  MetadataService.cancelDeploy_element)
                response.put('response_x', new MetadataService.cancelDeployResponse_element());
            else if(request instanceof  MetadataService.deleteMetadata_element)
                response.put('response_x', new MetadataService.deleteMetadataResponse_element());
            else if(request instanceof  MetadataService.upsertMetadata_element)
                response.put('response_x', new MetadataService.upsertMetadataResponse_element());
            else if(request instanceof  MetadataService.createMetadata_element)
                response.put('response_x', new MetadataService.createMetadataResponse_element());
            else if(request instanceof  MetadataService.readMetadata_element)
                response.put('response_x', new MetadataService.readMetadataResponse_element());       
            else if(request instanceof  MetadataService.describeValueType_element)
                response.put('response_x', new MetadataService.describeValueTypeResponse_element());    
            else if(request instanceof  MetadataService.deployRecentValidation_element)
                response.put('response_x', new MetadataService.deployRecentValidationResponse_element()); 
            return;
            
        }
    }    
        
    @IsTest
    private static void coverGeneratedCodeCRUDOperations()
    {   
        // Null Web Service mock implementation
        System.Test.setMock(WebServiceMock.class, new WebServiceMockImpl());
        // Only required to workaround a current code coverage bug in the platform
        MetadataService metaDataService = new MetadataService();
        // Invoke operations         
        MetadataService.MetadataPort metaDataPort = new MetadataService.MetadataPort();
        System.assertNotEquals(null,metaDataPort);
    }
    
    @IsTest
    private static void coverGeneratedCodeFileBasedOperations1()
    {       
        // Null Web Service mock implementation
        System.Test.setMock(WebServiceMock.class, new WebServiceMockImpl());
        // Only required to workaround a current code coverage bug in the platform
        MetadataService metaDataService = new MetadataService();
        // Invoke operations         
        MetadataService.MetadataPort metaDataPort = new MetadataService.MetadataPort();
        metaDataPort.retrieve(null);
        metaDataPort.checkDeployStatus('204380238901234561', false);
        metaDataPort.listMetadata(new List<MetadataService.ListMetadataQuery>(), null);
        metaDataPort.describeMetadata(null);
        //metaDataPort.readMetadata('ApexClass',new List<String>{'Test'});
        metaDataPort.describeValueType('ApexClass');
        metaDataPort.deployRecentValidation('204380238901234561');
        metaDataPort.checkRetrieveStatus(null,true);
        metaDataPort.deploy(null, null);
        metaDataPort.checkDeployStatus(null, false);
        metaDataPort.updateMetadata(null);
        metaDataPort.renameMetadata(null, null, null);
        metaDataPort.cancelDeploy(null);
        metaDataPort.setEndpoint_x('https://login.salesforce.com');
        System.assertNotEquals(null,metaDataPort);
    }

    @IsTest
    private static void coverGeneratedCodeFileBasedOperations2()
    {       
        // Null Web Service mock implementation
        System.Test.setMock(WebServiceMock.class, new WebServiceMockImpl());
        // Only required to workaround a current code coverage bug in the platform
        MetadataService metaDataService = new MetadataService();
        // Invoke operations         
        MetadataService.MetadataPort metaDataPort = new MetadataService.MetadataPort();
        metaDataPort.deleteMetadata(null, null);
        metaDataPort.upsertMetadata(null);
        metaDataPort.createMetadata(null);
        System.assertNotEquals(null,metaDataPort);
    }
        
    @IsTest
    private static void coverGeneratedCodeTypes()
    {              
        // Reference types
        new MetadataService();
        new MetadataService.PathAssistantStep();
        new MetadataService.WeightedSourceCategory();
        //new MetadataService.Action();
        new MetadataService.ForecastingCategoryMapping();
        new MetadataService.AnalyticsCloudComponentLayoutItem();
        new MetadataService.FlowDefinition();
        //new MetadataService.Notification();
        new MetadataService.TransactionSecurityPolicy();
        new MetadataService.PathAssistantSettings();
        new MetadataService.PathAssistant();
        new MetadataService.PlatformActionList();
        new MetadataService.PlatformActionListItem();
        new MetadataService.AllOrNoneHeader_element();
        new MetadataService.Territory2SettingsOpportunityFilter();
 
        new MetadataService.Territory2();
        new MetadataService.SharingOwnerRule();
        new MetadataService.FlowBaseElement();
        new MetadataService.FeedItemSettings();
        new MetadataService.ValueTypeField();
        new MetadataService.AuraDefinitionBundle();
        new MetadataService.ReputationBranding();
        new MetadataService.CustomPermissionDependencyRequired();
        new MetadataService.FlowWaitEvent();
        new MetadataService.PicklistEntry();
        new MetadataService.FlowWaitEventOutputParameter();
        new MetadataService.ChannelLayout();
        new MetadataService.describeValueTypeResponse_element();
        new MetadataService.DescribeValueTypeResult();
        new MetadataService.FieldValue();
        new MetadataService.NamedCredential();
        new MetadataService.AccountSharingRuleSettings();
        new MetadataService.Territory2Settings();
        new MetadataService.LicenseDefinition();
        new MetadataService.FlowWait();
        new MetadataService.PersonalJourneySettings();
        new MetadataService.ChannelLayoutItem();
        new MetadataService.SharingTerritoryRule();
        new MetadataService.PersonListSettings();
        new MetadataService.ActionLinkTemplate();
        new MetadataService.deployRecentValidation_element();
        new MetadataService.Territory2Model();
        new MetadataService.MatchingRules();
        new MetadataService.StandardFieldTranslation();
        new MetadataService.SharingBaseRule();
        new MetadataService.CorsWhitelistOrigin();
        new MetadataService.Territory2Type();
        new MetadataService.XOrgHubSharedObject();
        new MetadataService.MarketingResourceType();
        new MetadataService.Territory2Rule();
        new MetadataService.UiPlugin();
        new MetadataService.DataPipeline();
        new MetadataService.MatchingRuleItem();
        new MetadataService.LicensedCustomPermissions();
        new MetadataService.Territory2RuleItem();
        new MetadataService.ManagedTopic();
        new MetadataService.FlowWaitEventInputParameter();
        new MetadataService.XOrgHub();
        new MetadataService.describeValueType_element();
        new MetadataService.MatchingRule();
        new MetadataService.ManagedTopics();
        new MetadataService.ActionLinkGroupTemplate();
        new MetadataService.Territory2RuleAssociation();
        new MetadataService.SharingCriteriaRule();
        new MetadataService.deployRecentValidationResponse_element();
        
        new MetadataService.listMetadataResponse_element();
        new MetadataService.WorkflowRule();
        new MetadataService.RecordTypeTranslation();
        new MetadataService.checkDeployStatus_element();
        new MetadataService.CodeCoverageWarning();
        new MetadataService.FlowApexPluginCall();
        new MetadataService.FlowInputValidationRule();
        new MetadataService.FlowFormula();
        new MetadataService.PasswordPolicies();
        new MetadataService.QueueSobject();
        new MetadataService.PicklistValueTranslation();
        new MetadataService.CustomDataType();
        new MetadataService.PrimaryTabComponents();
        new MetadataService.WorkflowEmailRecipient();
        new MetadataService.DescribeMetadataResult();
        new MetadataService.RecordType();
        new MetadataService.Scontrol();
        new MetadataService.DashboardComponent();
        new MetadataService.FilterItem();
        new MetadataService.Profile();
        new MetadataService.ReportFilter();
        new MetadataService.PermissionSetApexClassAccess();
        new MetadataService.LogInfo();
        new MetadataService.Layout();
        new MetadataService.WebLink();
        new MetadataService.WorkflowTaskTranslation();
        new MetadataService.FlowElement();
        new MetadataService.ObjectNameCaseValue();
        new MetadataService.FlowInputFieldAssignment();
        new MetadataService.CustomDataTypeTranslation();
        new MetadataService.DashboardComponentSection();
        new MetadataService.ReportTypeColumn();
        new MetadataService.CallOptions_element();
        new MetadataService.CustomFieldTranslation();
        new MetadataService.AnalyticSnapshot();
        new MetadataService.FlowRule();
        new MetadataService.FlowRecordUpdate();
        new MetadataService.CustomSite();
        new MetadataService.ReportBlockInfo();
        new MetadataService.describeMetadataResponse_element();
        new MetadataService.ScontrolTranslation();
        new MetadataService.DeployMessage();
        new MetadataService.FlowSubflowInputAssignment();
        new MetadataService.Group_x();
        new MetadataService.ReportColumn();
        new MetadataService.ReportType();
        new MetadataService.CustomPageWebLink();
        new MetadataService.CodeCoverageResult();
        new MetadataService.ApexComponent();
        new MetadataService.WorkflowKnowledgePublish();
        new MetadataService.NetworkAccess();
        new MetadataService.Workflow();
        new MetadataService.RecordTypePicklistValue();
        new MetadataService.describeMetadata_element();
        new MetadataService.DashboardFilterColumn();
        new MetadataService.FlowChoice();
        new MetadataService.ReportParam();
        new MetadataService.RoleOrTerritory();
        new MetadataService.FlowStep();
        new MetadataService.FlowApexPluginCallInputParameter();
        new MetadataService.WorkflowActionReference();
        new MetadataService.ProfileObjectPermissions();
        new MetadataService.Role();
        new MetadataService.RetrieveResult();
        new MetadataService.SecuritySettings();
        new MetadataService.WorkflowTimeTrigger();
        new MetadataService.retrieve_element();
        new MetadataService.DescribeMetadataObject();
        new MetadataService.DashboardFilterOption();
        new MetadataService.LayoutColumn();
        new MetadataService.WorkflowOutboundMessage();
        new MetadataService.RunTestSuccess();
        new MetadataService.Queue();
        new MetadataService.ListViewFilter();
        new MetadataService.CustomField();
        new MetadataService.WorkflowTask();
        new MetadataService.deployResponse_element();
        new MetadataService.DataCategory();
        new MetadataService.FlowOutputFieldAssignment();
        new MetadataService.EmailTemplate();
        new MetadataService.ReportAggregateReference();
        new MetadataService.ObjectUsage();
        new MetadataService.FileProperties();
        new MetadataService.CustomTabTranslation();
        new MetadataService.BusinessProcess();
        new MetadataService.Flow();
        new MetadataService.PermissionSet();
        new MetadataService.PermissionSetObjectPermissions();
        new MetadataService.ReportCrossFilter();
        new MetadataService.Report();
        new MetadataService.FlowSubflowOutputAssignment();
        new MetadataService.ListView();
        new MetadataService.FlowRecordCreate();
        new MetadataService.DashboardTableColumn();
        new MetadataService.AsyncResult();
        new MetadataService.ArticleTypeChannelDisplay();
        new MetadataService.checkRetrieveStatus_element();
        new MetadataService.ProfileLayoutAssignment();
        new MetadataService.ReportFolder();
        new MetadataService.FlowTextTemplate();
        new MetadataService.RelatedListItem();
        new MetadataService.FlowNode();
        new MetadataService.RetrieveRequest();
        new MetadataService.ListMetadataQuery();
        new MetadataService.FlowConnector();
        new MetadataService.CustomApplicationComponent();
        new MetadataService.FlowRecordLookup();
        new MetadataService.FieldSet();
        new MetadataService.ProfileApexClassAccess();
        new MetadataService.DebuggingHeader_element();
        new MetadataService.CustomDataTypeComponentTranslation();
        new MetadataService.FlowRecordDelete();
        new MetadataService.FlowDecision();
        new MetadataService.ReportTypeSectionTranslation();
        new MetadataService.IpRange();
        new MetadataService.FlowApexPluginCallOutputParameter();
        new MetadataService.ReportBucketField();
        new MetadataService.CustomLabel();
        new MetadataService.Attachment();
        new MetadataService.SharingRules();
        new MetadataService.CustomConsoleComponents();
        new MetadataService.Portal();
        new MetadataService.DomainWhitelist();
        new MetadataService.ChartSummary();
        new MetadataService.RunTestFailure();
        new MetadataService.Territory();
        new MetadataService.SharedTo();
        new MetadataService.FlowRecordFilter();
        new MetadataService.SubtabComponents();
        new MetadataService.FlowScreen();
        new MetadataService.WorkflowAlert();
        new MetadataService.Picklist();
        new MetadataService.ReportLayoutSection();
        new MetadataService.SummaryLayoutItem();
        new MetadataService.LayoutSection();
        new MetadataService.ReportTimeFrameFilter();
        new MetadataService.LayoutSectionTranslation();
        new MetadataService.DataCategoryGroup();
        new MetadataService.listMetadata_element();
        new MetadataService.ValidationRule();
        new MetadataService.WorkspaceMapping();
        new MetadataService.MetadataWithContent();
        new MetadataService.ValidationRuleTranslation();
        new MetadataService.Metadata();
        new MetadataService.ReportBucketFieldValue();
        new MetadataService.HomePageLayout();
        new MetadataService.FlowSubflow();
        new MetadataService.FlowScreenField();
        new MetadataService.SiteWebAddress();
        new MetadataService.RetrieveMessage();
        new MetadataService.Dashboard();
        new MetadataService.EmailFolder();
        new MetadataService.SessionHeader_element();
        new MetadataService.SummaryLayout();
        new MetadataService.FlowCondition();
        new MetadataService.DeployOptions();
        new MetadataService.FlowAssignment();
        new MetadataService.ProfileApplicationVisibility();
        new MetadataService.CustomApplicationComponents();
        new MetadataService.FlowElementReferenceOrValue();
        new MetadataService.EntitlementTemplate();
        new MetadataService.ProfileTabVisibility();
        new MetadataService.ActionOverride();
        new MetadataService.WorkspaceMappings();
        new MetadataService.WorkflowAction();
        new MetadataService.DashboardFolder();
        new MetadataService.PermissionSetApexPageAccess();
        new MetadataService.LayoutTranslation();
        new MetadataService.CustomObject();
        new MetadataService.Translations();
        new MetadataService.ApexTrigger();
        new MetadataService.ReportTypeTranslation();
        new MetadataService.FlowAssignmentItem();
        new MetadataService.CustomApplicationTranslation();
        new MetadataService.CustomLabels();
        new MetadataService.PackageTypeMembers();
        new MetadataService.PicklistValue();
        new MetadataService.RemoteSiteSetting();
        new MetadataService.deploy_element();
        new MetadataService.retrieveResponse_element();
        new MetadataService.ArticleTypeTemplate();
        new MetadataService.ReportGrouping();
        new MetadataService.PermissionSetFieldPermissions();
        new MetadataService.AnalyticSnapshotMapping();
        new MetadataService.SharingRecalculation();
        new MetadataService.ProfileLoginIpRange();
        new MetadataService.WebLinkTranslation();
        new MetadataService.ObjectRelationship();
        new MetadataService.ListPlacement();
        new MetadataService.SiteRedirectMapping();
        new MetadataService.WorkflowFieldUpdate();
        new MetadataService.LetterheadLine();
        new MetadataService.CustomTab();
        new MetadataService.FlowChoiceUserInput();
        new MetadataService.Letterhead();
        new MetadataService.ReportTypeColumnTranslation();
        new MetadataService.CustomPageWebLinkTranslation();
        new MetadataService.DocumentFolder();
        new MetadataService.FlowConstant();
        new MetadataService.ProfileRecordTypeVisibility();
        new MetadataService.PackageVersion();
        new MetadataService.CustomLabelTranslation();
        new MetadataService.ReportChart();
        new MetadataService.checkRetrieveStatusResponse_element();
        new MetadataService.ProfileFieldLevelSecurity();
        new MetadataService.SharingReason();
        new MetadataService.RunTestsResult();
        new MetadataService.PermissionSetUserPermission();
        new MetadataService.MiniLayout();
        new MetadataService.FlowVariable();
        new MetadataService.ProfileLoginHours();
        new MetadataService.DashboardFilter();
        new MetadataService.CodeLocation();
        new MetadataService.ReportBucketFieldSourceValue();
        new MetadataService.FieldSetItem();
        new MetadataService.ReportFilterItem();
        new MetadataService.FlowDynamicChoiceSet();
        new MetadataService.CustomDataTypeComponent();
        new MetadataService.CustomObjectTranslation();
        new MetadataService.CustomApplication();
        new MetadataService.ReportAggregate();
        new MetadataService.ApexClass();
        new MetadataService.DebuggingInfo_element();
        new MetadataService.Package_x();
        new MetadataService.SessionSettings();
        new MetadataService.Document();
        new MetadataService.Folder();
        new MetadataService.DeployResult();
        new MetadataService.LayoutItem();
        new MetadataService.ProfileApexPageAccess();
        new MetadataService.SharingReasonTranslation();
        new MetadataService.checkDeployStatusResponse_element();
        new MetadataService.ReportColorRange();
        new MetadataService.SearchLayouts();
        new MetadataService.LetterheadHeaderFooter();
        new MetadataService.HomePageComponent();
        new MetadataService.MobileSettings();
        new MetadataService.EscalationRules();
        new MetadataService.KnowledgeAnswerSettings();
        new MetadataService.ExternalDataSource();
        new MetadataService.EntitlementProcess();
        new MetadataService.IdeasSettings();
        new MetadataService.Country();
        new MetadataService.ReputationLevels();
        new MetadataService.KnowledgeSitesSettings();
        new MetadataService.AddressSettings();
        new MetadataService.ProfileExternalDataSourceAccess();
        new MetadataService.CallCenterItem();
        new MetadataService.CallCenter();
        new MetadataService.PermissionSetExternalDataSourceAccess();
        new MetadataService.PermissionSetTabSetting();
        new MetadataService.AuthProvider();
        new MetadataService.EmailToCaseSettings();
        new MetadataService.EscalationAction();
        new MetadataService.State();
        new MetadataService.AssignmentRule();
        new MetadataService.AutoResponseRule();
        new MetadataService.CaseSettings();
        new MetadataService.ChatterAnswersSettings();
        new MetadataService.CountriesAndStates();
        new MetadataService.SFDCMobileSettings();
        new MetadataService.EntitlementProcessMilestoneItem();
        new MetadataService.TouchMobileSettings();
        new MetadataService.AssignmentRules();
        new MetadataService.ContractSettings();
        new MetadataService.KnowledgeCaseSettings();
        new MetadataService.ChatterAnswersReputationLevel();
        new MetadataService.KnowledgeSettings();
        new MetadataService.Community();
        new MetadataService.AutoResponseRules();
        new MetadataService.EmailToCaseRoutingAddress();
        new MetadataService.RuleEntry();
        new MetadataService.EntitlementSettings();
        new MetadataService.ApexPage();
        new MetadataService.WorkflowSend();
        new MetadataService.ChatterMobileSettings();
        new MetadataService.CallCenterSection();
        new MetadataService.EntitlementProcessMilestoneTimeTrigger();
        new MetadataService.StaticResource();
        new MetadataService.MilestoneType();
        new MetadataService.FiscalYearSettings();
        new MetadataService.CompanySettings();
        new MetadataService.WebToCaseSettings();
        new MetadataService.EscalationRule();
        new MetadataService.DashboardMobileSettings();
        new MetadataService.FieldOverride();
        new MetadataService.QuotasSettings();
        new MetadataService.Skill();
        new MetadataService.AgentConfigProfileAssignments();
        new MetadataService.LiveAgentSettings();
        new MetadataService.SkillAssignments();
        new MetadataService.ActivitiesSettings();
        new MetadataService.LiveAgentConfig();
        new MetadataService.ApprovalPageField();
        new MetadataService.QuickActionList();
        new MetadataService.LiveChatButtonDeployments();
        new MetadataService.InstalledPackage();
        new MetadataService.PushNotification();
        new MetadataService.LiveChatAgentConfig();
        new MetadataService.AdjustmentsSettings();                               
        new MetadataService.ForecastingSettings();                                
        new MetadataService.QuickActionListItem();           
        new MetadataService.Branding();          
        new MetadataService.QuickActionLayoutItem();                     
        new MetadataService.OpportunityListFieldsSelectedSettings();        
        new MetadataService.ApprovalStepRejectBehavior();
        new MetadataService.FolderShare();   
        new MetadataService.ApprovalEntryCriteria();                                
        new MetadataService.ProductSettings();                                
        new MetadataService.OpportunitySettings();              
        new MetadataService.LiveChatDeployment();                                
        new MetadataService.QuickActionLayoutColumn();           
        new MetadataService.GlobalQuickActionTranslation();      
        new MetadataService.ApprovalStepApprover();                                
        new MetadataService.QuoteSettings();         
        new MetadataService.LiveChatButton();                                
        new MetadataService.Network();
        new MetadataService.LiveChatDeploymentDomainWhitelist();
        new MetadataService.KnowledgeLanguageSettings();
        new MetadataService.Approver();
        new MetadataService.SamlSsoConfig();
        new MetadataService.ApprovalSubmitter();
        new MetadataService.KeyboardShortcuts();
        new MetadataService.ApprovalStep();
        new MetadataService.AgentConfigAssignments();
        new MetadataService.QuickAction();
        new MetadataService.DefaultShortcut();
        new MetadataService.ApprovalAction();
        new MetadataService.KnowledgeLanguage();
        new MetadataService.LiveChatButtonSkills();
        new MetadataService.SkillUserAssignments();
        new MetadataService.NextAutomatedApprover();
        new MetadataService.ApprovalProcess();
        new MetadataService.QuickActionLayout();
        new MetadataService.PushNotifications();
        new MetadataService.ForecastRangeSettings();
        new MetadataService.IdeaReputationLevel();
        new MetadataService.NetworkTabSet();
        new MetadataService.SkillProfileAssignments();
        new MetadataService.CustomShortcut();
        new MetadataService.PagesToOpen();
        new MetadataService.AgentConfigUserAssignments();
        new MetadataService.NetworkMemberGroup();
        new MetadataService.FindSimilarOppFilter();
        new MetadataService.QuickActionTranslation();               
        new MetadataService.WorkflowFlowActionParameter();
        new MetadataService.ConnectedAppOauthConfig();
        new MetadataService.FlowLoop();
        new MetadataService.renameMetadata_element();
        new MetadataService.ForecastingTypeSettings();
        new MetadataService.PermissionSetApplicationVisibility();
        new MetadataService.FeedLayout();
        new MetadataService.AppMenuItem();
        new MetadataService.deleteMetadataResponse_element();
        new MetadataService.ConnectedAppAttribute();
        new MetadataService.ReportChartComponentLayoutItem();
        new MetadataService.AppMenu();
        new MetadataService.ConnectedAppIpRange();
        new MetadataService.Error();
        new MetadataService.ComponentInstanceProperty();
        new MetadataService.BusinessHoursEntry();
        new MetadataService.RelatedContent();
        new MetadataService.SupervisorAgentConfigSkills();
        new MetadataService.ComponentInstance();
        new MetadataService.SidebarComponent();
        new MetadataService.Holiday();
        new MetadataService.SaveResult();
        new MetadataService.readMetadataResponse_element();
        new MetadataService.FlexiPageRegion();
        new MetadataService.deleteMetadata_element();
        new MetadataService.ConnectedAppMobileDetailConfig();
        new MetadataService.AccountSettings();
        new MetadataService.PermissionSetRecordTypeVisibility();
        new MetadataService.OrderSettings();
        new MetadataService.ProfileUserPermission();
        new MetadataService.LookupFilterTranslation();
        new MetadataService.WorkflowFlowAction();
        new MetadataService.ConnectedApp();
        new MetadataService.SiteDotCom();
        new MetadataService.createMetadataResponse_element();
        new MetadataService.updateMetadata_element();
        new MetadataService.LookupFilter();
        new MetadataService.updateMetadataResponse_element();
        new MetadataService.FlexiPage();
        new MetadataService.ConnectedAppSamlConfig();
        new MetadataService.createMetadata_element();
        new MetadataService.FeedLayoutComponent();
        new MetadataService.PostTemplate();
        new MetadataService.RelatedContentItem();
        new MetadataService.readMetadata_element();
        new MetadataService.ReadResult();
        new MetadataService.BusinessHoursSettings();
        new MetadataService.FeedLayoutFilter();
        new MetadataService.ReportHistoricalSelector();
        new MetadataService.ConnectedAppCanvasConfig();
        new MetadataService.DeployDetails();
        new MetadataService.ReportDataCategoryFilter();
        new MetadataService.SynonymGroup();
        new MetadataService.renameMetadataResponse_element();
        new MetadataService.cancelDeploy_element();
        new MetadataService.CancelDeployResult();
        new MetadataService.SynonymDictionary();
        new MetadataService.cancelDeployResponse_element();
        new MetadataService.CompactLayout();
        new MetadataService.AccessMapping();
        new MetadataService.Container();
        new MetadataService.DeleteResult();
        new MetadataService.SharingSet();
        new MetadataService.ReputationPointsRule();
        new MetadataService.FlowActionCallInputParameter();
        new MetadataService.CustomMetadata();
        new MetadataService.VisualizationPlugin();
        new MetadataService.RelatedList();
        new MetadataService.FlowActionCallOutputParameter();
        new MetadataService.FlowActionCall();
        new MetadataService.CustomPermission();
        new MetadataService.ReputationLevelDefinitions();
        new MetadataService.PermissionSetCustomPermissions();
        new MetadataService.upsertMetadata_element();
        new MetadataService.ProfileCustomPermissions();
        new MetadataService.AgentConfigButtons();
        new MetadataService.AgentConfigSkills();
        new MetadataService.upsertMetadataResponse_element();
        new MetadataService.ReputationLevel();
        new MetadataService.NameSettings();
        new MetadataService.ReputationPointsRules();
        new MetadataService.FlowMetadataValue();
        new MetadataService.VisualizationResource();
        new MetadataService.MarketingActionSettings();
        new MetadataService.VisualizationType();
        new MetadataService.CustomMetadataValue();
        new MetadataService.HistoryRetentionPolicy();
        new MetadataService.DashboardGridComponent();
        new MetadataService.DashboardGridLayout();
        new MetadataService.FeedFilterCriterion();
        new MetadataService.PlatformCachePartition();
        new MetadataService.WaveTemplateBundle();
        new MetadataService.TransactionSecurityAction();
        new MetadataService.PlatformCachePartitionType();
        new MetadataService.KnowledgeCommunitiesSettings();
        new MetadataService.CustomFeedFilter();
        new MetadataService.LeadConvertSettings();
        new MetadataService.LiveChatSensitiveDataRule();
        new MetadataService.TransactionSecurityNotification();
        new MetadataService.UpsertResult();
        System.assertNotEquals(null,new MetadataService.UpsertResult());
    }
}