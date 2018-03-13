## Module AWS.Mobile

<p> AWS Mobile Service provides mobile app and website developers with capabilities required to configure AWS resources and bootstrap their developer desktop projects with the necessary SDKs, constants, tools and samples to make use of those resources. </p>

#### `createProject`

``` purescript
createProject :: forall eff. CreateProjectRequest -> Aff (exception :: EXCEPTION | eff) CreateProjectResult
```

<p> Creates an AWS Mobile Hub project. </p>

#### `deleteProject`

``` purescript
deleteProject :: forall eff. DeleteProjectRequest -> Aff (exception :: EXCEPTION | eff) DeleteProjectResult
```

<p> Delets a project in AWS Mobile Hub. </p>

#### `describeBundle`

``` purescript
describeBundle :: forall eff. DescribeBundleRequest -> Aff (exception :: EXCEPTION | eff) DescribeBundleResult
```

<p> Get the bundle details for the requested bundle id. </p>

#### `describeProject`

``` purescript
describeProject :: forall eff. DescribeProjectRequest -> Aff (exception :: EXCEPTION | eff) DescribeProjectResult
```

<p> Gets details about a project in AWS Mobile Hub. </p>

#### `exportBundle`

``` purescript
exportBundle :: forall eff. ExportBundleRequest -> Aff (exception :: EXCEPTION | eff) ExportBundleResult
```

<p> Generates customized software development kit (SDK) and or tool packages used to integrate mobile web or mobile app clients with backend AWS resources. </p>

#### `exportProject`

``` purescript
exportProject :: forall eff. ExportProjectRequest -> Aff (exception :: EXCEPTION | eff) ExportProjectResult
```

<p> Exports project configuration to a snapshot which can be downloaded and shared. Note that mobile app push credentials are encrypted in exported projects, so they can only be shared successfully within the same AWS account. </p>

#### `listBundles`

``` purescript
listBundles :: forall eff. ListBundlesRequest -> Aff (exception :: EXCEPTION | eff) ListBundlesResult
```

<p> List all available bundles. </p>

#### `listProjects`

``` purescript
listProjects :: forall eff. ListProjectsRequest -> Aff (exception :: EXCEPTION | eff) ListProjectsResult
```

<p> Lists projects in AWS Mobile Hub. </p>

#### `updateProject`

``` purescript
updateProject :: forall eff. UpdateProjectRequest -> Aff (exception :: EXCEPTION | eff) UpdateProjectResult
```

<p> Update an existing project. </p>

#### `AccountActionRequiredException`

``` purescript
newtype AccountActionRequiredException
  = AccountActionRequiredException { message :: NullOrUndefined (ErrorMessage) }
```

<p> Account Action is required in order to continue the request. </p>

##### Instances
``` purescript
Newtype AccountActionRequiredException _
Generic AccountActionRequiredException _
Show AccountActionRequiredException
Decode AccountActionRequiredException
Encode AccountActionRequiredException
```

#### `newAccountActionRequiredException`

``` purescript
newAccountActionRequiredException :: AccountActionRequiredException
```

Constructs AccountActionRequiredException from required parameters

#### `newAccountActionRequiredException'`

``` purescript
newAccountActionRequiredException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> AccountActionRequiredException
```

Constructs AccountActionRequiredException's fields from required parameters

#### `AttributeKey`

``` purescript
newtype AttributeKey
  = AttributeKey String
```

<p> Key part of key-value attribute pairs. </p>

##### Instances
``` purescript
Newtype AttributeKey _
Generic AttributeKey _
Show AttributeKey
Decode AttributeKey
Encode AttributeKey
```

#### `AttributeValue`

``` purescript
newtype AttributeValue
  = AttributeValue String
```

<p> Value part of key-value attribute pairs. </p>

##### Instances
``` purescript
Newtype AttributeValue _
Generic AttributeValue _
Show AttributeValue
Decode AttributeValue
Encode AttributeValue
```

#### `Attributes`

``` purescript
newtype Attributes
  = Attributes (StrMap AttributeValue)
```

<p> Key-value attribute pairs. </p>

##### Instances
``` purescript
Newtype Attributes _
Generic Attributes _
Show Attributes
Decode Attributes
Encode Attributes
```

#### `BadRequestException`

``` purescript
newtype BadRequestException
  = BadRequestException { message :: NullOrUndefined (ErrorMessage) }
```

<p> The request cannot be processed because some parameter is not valid or the project state prevents the operation from being performed. </p>

##### Instances
``` purescript
Newtype BadRequestException _
Generic BadRequestException _
Show BadRequestException
Decode BadRequestException
Encode BadRequestException
```

#### `newBadRequestException`

``` purescript
newBadRequestException :: BadRequestException
```

Constructs BadRequestException from required parameters

#### `newBadRequestException'`

``` purescript
newBadRequestException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> BadRequestException
```

Constructs BadRequestException's fields from required parameters

#### `BundleDescription`

``` purescript
newtype BundleDescription
  = BundleDescription String
```

<p> Description of the download bundle. </p>

##### Instances
``` purescript
Newtype BundleDescription _
Generic BundleDescription _
Show BundleDescription
Decode BundleDescription
Encode BundleDescription
```

#### `BundleDetails`

``` purescript
newtype BundleDetails
  = BundleDetails { bundleId :: NullOrUndefined (BundleId), title :: NullOrUndefined (BundleTitle), version :: NullOrUndefined (BundleVersion), description :: NullOrUndefined (BundleDescription), iconUrl :: NullOrUndefined (IconUrl), availablePlatforms :: NullOrUndefined (Platforms) }
```

<p> The details of the bundle. </p>

##### Instances
``` purescript
Newtype BundleDetails _
Generic BundleDetails _
Show BundleDetails
Decode BundleDetails
Encode BundleDetails
```

#### `newBundleDetails`

``` purescript
newBundleDetails :: BundleDetails
```

Constructs BundleDetails from required parameters

#### `newBundleDetails'`

``` purescript
newBundleDetails' :: ({ bundleId :: NullOrUndefined (BundleId), title :: NullOrUndefined (BundleTitle), version :: NullOrUndefined (BundleVersion), description :: NullOrUndefined (BundleDescription), iconUrl :: NullOrUndefined (IconUrl), availablePlatforms :: NullOrUndefined (Platforms) } -> { bundleId :: NullOrUndefined (BundleId), title :: NullOrUndefined (BundleTitle), version :: NullOrUndefined (BundleVersion), description :: NullOrUndefined (BundleDescription), iconUrl :: NullOrUndefined (IconUrl), availablePlatforms :: NullOrUndefined (Platforms) }) -> BundleDetails
```

Constructs BundleDetails's fields from required parameters

#### `BundleId`

``` purescript
newtype BundleId
  = BundleId String
```

<p> Unique bundle identifier. </p>

##### Instances
``` purescript
Newtype BundleId _
Generic BundleId _
Show BundleId
Decode BundleId
Encode BundleId
```

#### `BundleList`

``` purescript
newtype BundleList
  = BundleList (Array BundleDetails)
```

<p> A list of bundles. </p>

##### Instances
``` purescript
Newtype BundleList _
Generic BundleList _
Show BundleList
Decode BundleList
Encode BundleList
```

#### `BundleTitle`

``` purescript
newtype BundleTitle
  = BundleTitle String
```

<p> Title of the download bundle. </p>

##### Instances
``` purescript
Newtype BundleTitle _
Generic BundleTitle _
Show BundleTitle
Decode BundleTitle
Encode BundleTitle
```

#### `BundleVersion`

``` purescript
newtype BundleVersion
  = BundleVersion String
```

<p> Version of the download bundle. </p>

##### Instances
``` purescript
Newtype BundleVersion _
Generic BundleVersion _
Show BundleVersion
Decode BundleVersion
Encode BundleVersion
```

#### `ConsoleUrl`

``` purescript
newtype ConsoleUrl
  = ConsoleUrl String
```

##### Instances
``` purescript
Newtype ConsoleUrl _
Generic ConsoleUrl _
Show ConsoleUrl
Decode ConsoleUrl
Encode ConsoleUrl
```

#### `Contents`

``` purescript
newtype Contents
  = Contents String
```

<p> Binary file data. </p>

##### Instances
``` purescript
Newtype Contents _
Generic Contents _
Show Contents
Decode Contents
Encode Contents
```

#### `CreateProjectRequest`

``` purescript
newtype CreateProjectRequest
  = CreateProjectRequest { name :: NullOrUndefined (ProjectName), region :: NullOrUndefined (ProjectRegion), contents :: NullOrUndefined (Contents), snapshotId :: NullOrUndefined (SnapshotId) }
```

<p> Request structure used to request a project be created. </p>

##### Instances
``` purescript
Newtype CreateProjectRequest _
Generic CreateProjectRequest _
Show CreateProjectRequest
Decode CreateProjectRequest
Encode CreateProjectRequest
```

#### `newCreateProjectRequest`

``` purescript
newCreateProjectRequest :: CreateProjectRequest
```

Constructs CreateProjectRequest from required parameters

#### `newCreateProjectRequest'`

``` purescript
newCreateProjectRequest' :: ({ name :: NullOrUndefined (ProjectName), region :: NullOrUndefined (ProjectRegion), contents :: NullOrUndefined (Contents), snapshotId :: NullOrUndefined (SnapshotId) } -> { name :: NullOrUndefined (ProjectName), region :: NullOrUndefined (ProjectRegion), contents :: NullOrUndefined (Contents), snapshotId :: NullOrUndefined (SnapshotId) }) -> CreateProjectRequest
```

Constructs CreateProjectRequest's fields from required parameters

#### `CreateProjectResult`

``` purescript
newtype CreateProjectResult
  = CreateProjectResult { details :: NullOrUndefined (ProjectDetails) }
```

<p> Result structure used in response to a request to create a project. </p>

##### Instances
``` purescript
Newtype CreateProjectResult _
Generic CreateProjectResult _
Show CreateProjectResult
Decode CreateProjectResult
Encode CreateProjectResult
```

#### `newCreateProjectResult`

``` purescript
newCreateProjectResult :: CreateProjectResult
```

Constructs CreateProjectResult from required parameters

#### `newCreateProjectResult'`

``` purescript
newCreateProjectResult' :: ({ details :: NullOrUndefined (ProjectDetails) } -> { details :: NullOrUndefined (ProjectDetails) }) -> CreateProjectResult
```

Constructs CreateProjectResult's fields from required parameters

#### `Date`

``` purescript
newtype Date
  = Date Timestamp
```

##### Instances
``` purescript
Newtype Date _
Generic Date _
Show Date
Decode Date
Encode Date
```

#### `DeleteProjectRequest`

``` purescript
newtype DeleteProjectRequest
  = DeleteProjectRequest { projectId :: ProjectId }
```

<p> Request structure used to request a project be deleted. </p>

##### Instances
``` purescript
Newtype DeleteProjectRequest _
Generic DeleteProjectRequest _
Show DeleteProjectRequest
Decode DeleteProjectRequest
Encode DeleteProjectRequest
```

#### `newDeleteProjectRequest`

``` purescript
newDeleteProjectRequest :: ProjectId -> DeleteProjectRequest
```

Constructs DeleteProjectRequest from required parameters

#### `newDeleteProjectRequest'`

``` purescript
newDeleteProjectRequest' :: ProjectId -> ({ projectId :: ProjectId } -> { projectId :: ProjectId }) -> DeleteProjectRequest
```

Constructs DeleteProjectRequest's fields from required parameters

#### `DeleteProjectResult`

``` purescript
newtype DeleteProjectResult
  = DeleteProjectResult { deletedResources :: NullOrUndefined (Resources), orphanedResources :: NullOrUndefined (Resources) }
```

<p> Result structure used in response to request to delete a project. </p>

##### Instances
``` purescript
Newtype DeleteProjectResult _
Generic DeleteProjectResult _
Show DeleteProjectResult
Decode DeleteProjectResult
Encode DeleteProjectResult
```

#### `newDeleteProjectResult`

``` purescript
newDeleteProjectResult :: DeleteProjectResult
```

Constructs DeleteProjectResult from required parameters

#### `newDeleteProjectResult'`

``` purescript
newDeleteProjectResult' :: ({ deletedResources :: NullOrUndefined (Resources), orphanedResources :: NullOrUndefined (Resources) } -> { deletedResources :: NullOrUndefined (Resources), orphanedResources :: NullOrUndefined (Resources) }) -> DeleteProjectResult
```

Constructs DeleteProjectResult's fields from required parameters

#### `DescribeBundleRequest`

``` purescript
newtype DescribeBundleRequest
  = DescribeBundleRequest { bundleId :: BundleId }
```

<p> Request structure to request the details of a specific bundle. </p>

##### Instances
``` purescript
Newtype DescribeBundleRequest _
Generic DescribeBundleRequest _
Show DescribeBundleRequest
Decode DescribeBundleRequest
Encode DescribeBundleRequest
```

#### `newDescribeBundleRequest`

``` purescript
newDescribeBundleRequest :: BundleId -> DescribeBundleRequest
```

Constructs DescribeBundleRequest from required parameters

#### `newDescribeBundleRequest'`

``` purescript
newDescribeBundleRequest' :: BundleId -> ({ bundleId :: BundleId } -> { bundleId :: BundleId }) -> DescribeBundleRequest
```

Constructs DescribeBundleRequest's fields from required parameters

#### `DescribeBundleResult`

``` purescript
newtype DescribeBundleResult
  = DescribeBundleResult { details :: NullOrUndefined (BundleDetails) }
```

<p> Result structure contains the details of the bundle. </p>

##### Instances
``` purescript
Newtype DescribeBundleResult _
Generic DescribeBundleResult _
Show DescribeBundleResult
Decode DescribeBundleResult
Encode DescribeBundleResult
```

#### `newDescribeBundleResult`

``` purescript
newDescribeBundleResult :: DescribeBundleResult
```

Constructs DescribeBundleResult from required parameters

#### `newDescribeBundleResult'`

``` purescript
newDescribeBundleResult' :: ({ details :: NullOrUndefined (BundleDetails) } -> { details :: NullOrUndefined (BundleDetails) }) -> DescribeBundleResult
```

Constructs DescribeBundleResult's fields from required parameters

#### `DescribeProjectRequest`

``` purescript
newtype DescribeProjectRequest
  = DescribeProjectRequest { projectId :: ProjectId, syncFromResources :: NullOrUndefined (Boolean) }
```

<p> Request structure used to request details about a project. </p>

##### Instances
``` purescript
Newtype DescribeProjectRequest _
Generic DescribeProjectRequest _
Show DescribeProjectRequest
Decode DescribeProjectRequest
Encode DescribeProjectRequest
```

#### `newDescribeProjectRequest`

``` purescript
newDescribeProjectRequest :: ProjectId -> DescribeProjectRequest
```

Constructs DescribeProjectRequest from required parameters

#### `newDescribeProjectRequest'`

``` purescript
newDescribeProjectRequest' :: ProjectId -> ({ projectId :: ProjectId, syncFromResources :: NullOrUndefined (Boolean) } -> { projectId :: ProjectId, syncFromResources :: NullOrUndefined (Boolean) }) -> DescribeProjectRequest
```

Constructs DescribeProjectRequest's fields from required parameters

#### `DescribeProjectResult`

``` purescript
newtype DescribeProjectResult
  = DescribeProjectResult { details :: NullOrUndefined (ProjectDetails) }
```

<p> Result structure used for requests of project details. </p>

##### Instances
``` purescript
Newtype DescribeProjectResult _
Generic DescribeProjectResult _
Show DescribeProjectResult
Decode DescribeProjectResult
Encode DescribeProjectResult
```

#### `newDescribeProjectResult`

``` purescript
newDescribeProjectResult :: DescribeProjectResult
```

Constructs DescribeProjectResult from required parameters

#### `newDescribeProjectResult'`

``` purescript
newDescribeProjectResult' :: ({ details :: NullOrUndefined (ProjectDetails) } -> { details :: NullOrUndefined (ProjectDetails) }) -> DescribeProjectResult
```

Constructs DescribeProjectResult's fields from required parameters

#### `DownloadUrl`

``` purescript
newtype DownloadUrl
  = DownloadUrl String
```

<p> The download Url. </p>

##### Instances
``` purescript
Newtype DownloadUrl _
Generic DownloadUrl _
Show DownloadUrl
Decode DownloadUrl
Encode DownloadUrl
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

<p> The Exception Error Message. </p>

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `ExportBundleRequest`

``` purescript
newtype ExportBundleRequest
  = ExportBundleRequest { bundleId :: BundleId, projectId :: NullOrUndefined (ProjectId), platform :: NullOrUndefined (Platform) }
```

<p> Request structure used to request generation of custom SDK and tool packages required to integrate mobile web or app clients with backed AWS resources. </p>

##### Instances
``` purescript
Newtype ExportBundleRequest _
Generic ExportBundleRequest _
Show ExportBundleRequest
Decode ExportBundleRequest
Encode ExportBundleRequest
```

#### `newExportBundleRequest`

``` purescript
newExportBundleRequest :: BundleId -> ExportBundleRequest
```

Constructs ExportBundleRequest from required parameters

#### `newExportBundleRequest'`

``` purescript
newExportBundleRequest' :: BundleId -> ({ bundleId :: BundleId, projectId :: NullOrUndefined (ProjectId), platform :: NullOrUndefined (Platform) } -> { bundleId :: BundleId, projectId :: NullOrUndefined (ProjectId), platform :: NullOrUndefined (Platform) }) -> ExportBundleRequest
```

Constructs ExportBundleRequest's fields from required parameters

#### `ExportBundleResult`

``` purescript
newtype ExportBundleResult
  = ExportBundleResult { downloadUrl :: NullOrUndefined (DownloadUrl) }
```

<p> Result structure which contains link to download custom-generated SDK and tool packages used to integrate mobile web or app clients with backed AWS resources. </p>

##### Instances
``` purescript
Newtype ExportBundleResult _
Generic ExportBundleResult _
Show ExportBundleResult
Decode ExportBundleResult
Encode ExportBundleResult
```

#### `newExportBundleResult`

``` purescript
newExportBundleResult :: ExportBundleResult
```

Constructs ExportBundleResult from required parameters

#### `newExportBundleResult'`

``` purescript
newExportBundleResult' :: ({ downloadUrl :: NullOrUndefined (DownloadUrl) } -> { downloadUrl :: NullOrUndefined (DownloadUrl) }) -> ExportBundleResult
```

Constructs ExportBundleResult's fields from required parameters

#### `ExportProjectRequest`

``` purescript
newtype ExportProjectRequest
  = ExportProjectRequest { projectId :: ProjectId }
```

<p> Request structure used in requests to export project configuration details. </p>

##### Instances
``` purescript
Newtype ExportProjectRequest _
Generic ExportProjectRequest _
Show ExportProjectRequest
Decode ExportProjectRequest
Encode ExportProjectRequest
```

#### `newExportProjectRequest`

``` purescript
newExportProjectRequest :: ProjectId -> ExportProjectRequest
```

Constructs ExportProjectRequest from required parameters

#### `newExportProjectRequest'`

``` purescript
newExportProjectRequest' :: ProjectId -> ({ projectId :: ProjectId } -> { projectId :: ProjectId }) -> ExportProjectRequest
```

Constructs ExportProjectRequest's fields from required parameters

#### `ExportProjectResult`

``` purescript
newtype ExportProjectResult
  = ExportProjectResult { downloadUrl :: NullOrUndefined (DownloadUrl), shareUrl :: NullOrUndefined (ShareUrl), snapshotId :: NullOrUndefined (SnapshotId) }
```

<p> Result structure used for requests to export project configuration details. </p>

##### Instances
``` purescript
Newtype ExportProjectResult _
Generic ExportProjectResult _
Show ExportProjectResult
Decode ExportProjectResult
Encode ExportProjectResult
```

#### `newExportProjectResult`

``` purescript
newExportProjectResult :: ExportProjectResult
```

Constructs ExportProjectResult from required parameters

#### `newExportProjectResult'`

``` purescript
newExportProjectResult' :: ({ downloadUrl :: NullOrUndefined (DownloadUrl), shareUrl :: NullOrUndefined (ShareUrl), snapshotId :: NullOrUndefined (SnapshotId) } -> { downloadUrl :: NullOrUndefined (DownloadUrl), shareUrl :: NullOrUndefined (ShareUrl), snapshotId :: NullOrUndefined (SnapshotId) }) -> ExportProjectResult
```

Constructs ExportProjectResult's fields from required parameters

#### `Feature`

``` purescript
newtype Feature
  = Feature String
```

<p> Identifies which feature in AWS Mobile Hub is associated with this AWS resource. </p>

##### Instances
``` purescript
Newtype Feature _
Generic Feature _
Show Feature
Decode Feature
Encode Feature
```

#### `IconUrl`

``` purescript
newtype IconUrl
  = IconUrl String
```

<p> Icon for the download bundle. </p>

##### Instances
``` purescript
Newtype IconUrl _
Generic IconUrl _
Show IconUrl
Decode IconUrl
Encode IconUrl
```

#### `InternalFailureException`

``` purescript
newtype InternalFailureException
  = InternalFailureException { message :: NullOrUndefined (ErrorMessage) }
```

<p> The service has encountered an unexpected error condition which prevents it from servicing the request. </p>

##### Instances
``` purescript
Newtype InternalFailureException _
Generic InternalFailureException _
Show InternalFailureException
Decode InternalFailureException
Encode InternalFailureException
```

#### `newInternalFailureException`

``` purescript
newInternalFailureException :: InternalFailureException
```

Constructs InternalFailureException from required parameters

#### `newInternalFailureException'`

``` purescript
newInternalFailureException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InternalFailureException
```

Constructs InternalFailureException's fields from required parameters

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { retryAfterSeconds :: NullOrUndefined (ErrorMessage), message :: NullOrUndefined (ErrorMessage) }
```

<p> There are too many AWS Mobile Hub projects in the account or the account has exceeded the maximum number of resources in some AWS service. You should create another sub-account using AWS Organizations or remove some resources and retry your request. </p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ retryAfterSeconds :: NullOrUndefined (ErrorMessage), message :: NullOrUndefined (ErrorMessage) } -> { retryAfterSeconds :: NullOrUndefined (ErrorMessage), message :: NullOrUndefined (ErrorMessage) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListBundlesRequest`

``` purescript
newtype ListBundlesRequest
  = ListBundlesRequest { maxResults :: NullOrUndefined (MaxResults), nextToken :: NullOrUndefined (NextToken) }
```

<p> Request structure to request all available bundles. </p>

##### Instances
``` purescript
Newtype ListBundlesRequest _
Generic ListBundlesRequest _
Show ListBundlesRequest
Decode ListBundlesRequest
Encode ListBundlesRequest
```

#### `newListBundlesRequest`

``` purescript
newListBundlesRequest :: ListBundlesRequest
```

Constructs ListBundlesRequest from required parameters

#### `newListBundlesRequest'`

``` purescript
newListBundlesRequest' :: ({ maxResults :: NullOrUndefined (MaxResults), nextToken :: NullOrUndefined (NextToken) } -> { maxResults :: NullOrUndefined (MaxResults), nextToken :: NullOrUndefined (NextToken) }) -> ListBundlesRequest
```

Constructs ListBundlesRequest's fields from required parameters

#### `ListBundlesResult`

``` purescript
newtype ListBundlesResult
  = ListBundlesResult { bundleList :: NullOrUndefined (BundleList), nextToken :: NullOrUndefined (NextToken) }
```

<p> Result structure contains a list of all available bundles with details. </p>

##### Instances
``` purescript
Newtype ListBundlesResult _
Generic ListBundlesResult _
Show ListBundlesResult
Decode ListBundlesResult
Encode ListBundlesResult
```

#### `newListBundlesResult`

``` purescript
newListBundlesResult :: ListBundlesResult
```

Constructs ListBundlesResult from required parameters

#### `newListBundlesResult'`

``` purescript
newListBundlesResult' :: ({ bundleList :: NullOrUndefined (BundleList), nextToken :: NullOrUndefined (NextToken) } -> { bundleList :: NullOrUndefined (BundleList), nextToken :: NullOrUndefined (NextToken) }) -> ListBundlesResult
```

Constructs ListBundlesResult's fields from required parameters

#### `ListProjectsRequest`

``` purescript
newtype ListProjectsRequest
  = ListProjectsRequest { maxResults :: NullOrUndefined (MaxResults), nextToken :: NullOrUndefined (NextToken) }
```

<p> Request structure used to request projects list in AWS Mobile Hub. </p>

##### Instances
``` purescript
Newtype ListProjectsRequest _
Generic ListProjectsRequest _
Show ListProjectsRequest
Decode ListProjectsRequest
Encode ListProjectsRequest
```

#### `newListProjectsRequest`

``` purescript
newListProjectsRequest :: ListProjectsRequest
```

Constructs ListProjectsRequest from required parameters

#### `newListProjectsRequest'`

``` purescript
newListProjectsRequest' :: ({ maxResults :: NullOrUndefined (MaxResults), nextToken :: NullOrUndefined (NextToken) } -> { maxResults :: NullOrUndefined (MaxResults), nextToken :: NullOrUndefined (NextToken) }) -> ListProjectsRequest
```

Constructs ListProjectsRequest's fields from required parameters

#### `ListProjectsResult`

``` purescript
newtype ListProjectsResult
  = ListProjectsResult { projects :: NullOrUndefined (ProjectSummaries), nextToken :: NullOrUndefined (NextToken) }
```

<p> Result structure used for requests to list projects in AWS Mobile Hub. </p>

##### Instances
``` purescript
Newtype ListProjectsResult _
Generic ListProjectsResult _
Show ListProjectsResult
Decode ListProjectsResult
Encode ListProjectsResult
```

#### `newListProjectsResult`

``` purescript
newListProjectsResult :: ListProjectsResult
```

Constructs ListProjectsResult from required parameters

#### `newListProjectsResult'`

``` purescript
newListProjectsResult' :: ({ projects :: NullOrUndefined (ProjectSummaries), nextToken :: NullOrUndefined (NextToken) } -> { projects :: NullOrUndefined (ProjectSummaries), nextToken :: NullOrUndefined (NextToken) }) -> ListProjectsResult
```

Constructs ListProjectsResult's fields from required parameters

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

<p> Maximum number of records to list in a single response. </p>

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

<p> Pagination token. Set to null to start listing records from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more entries. </p>

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `NotFoundException`

``` purescript
newtype NotFoundException
  = NotFoundException { message :: NullOrUndefined (ErrorMessage) }
```

<p> No entity can be found with the specified identifier. </p>

##### Instances
``` purescript
Newtype NotFoundException _
Generic NotFoundException _
Show NotFoundException
Decode NotFoundException
Encode NotFoundException
```

#### `newNotFoundException`

``` purescript
newNotFoundException :: NotFoundException
```

Constructs NotFoundException from required parameters

#### `newNotFoundException'`

``` purescript
newNotFoundException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> NotFoundException
```

Constructs NotFoundException's fields from required parameters

#### `Platform`

``` purescript
newtype Platform
  = Platform String
```

<p> Developer desktop or target mobile app or website platform. </p>

##### Instances
``` purescript
Newtype Platform _
Generic Platform _
Show Platform
Decode Platform
Encode Platform
```

#### `Platforms`

``` purescript
newtype Platforms
  = Platforms (Array Platform)
```

<p> Developer desktop or mobile app or website platforms. </p>

##### Instances
``` purescript
Newtype Platforms _
Generic Platforms _
Show Platforms
Decode Platforms
Encode Platforms
```

#### `ProjectDetails`

``` purescript
newtype ProjectDetails
  = ProjectDetails { name :: NullOrUndefined (ProjectName), projectId :: NullOrUndefined (ProjectId), region :: NullOrUndefined (ProjectRegion), state :: NullOrUndefined (ProjectState), createdDate :: NullOrUndefined (Date), lastUpdatedDate :: NullOrUndefined (Date), consoleUrl :: NullOrUndefined (ConsoleUrl), resources :: NullOrUndefined (Resources) }
```

<p> Detailed information about an AWS Mobile Hub project. </p>

##### Instances
``` purescript
Newtype ProjectDetails _
Generic ProjectDetails _
Show ProjectDetails
Decode ProjectDetails
Encode ProjectDetails
```

#### `newProjectDetails`

``` purescript
newProjectDetails :: ProjectDetails
```

Constructs ProjectDetails from required parameters

#### `newProjectDetails'`

``` purescript
newProjectDetails' :: ({ name :: NullOrUndefined (ProjectName), projectId :: NullOrUndefined (ProjectId), region :: NullOrUndefined (ProjectRegion), state :: NullOrUndefined (ProjectState), createdDate :: NullOrUndefined (Date), lastUpdatedDate :: NullOrUndefined (Date), consoleUrl :: NullOrUndefined (ConsoleUrl), resources :: NullOrUndefined (Resources) } -> { name :: NullOrUndefined (ProjectName), projectId :: NullOrUndefined (ProjectId), region :: NullOrUndefined (ProjectRegion), state :: NullOrUndefined (ProjectState), createdDate :: NullOrUndefined (Date), lastUpdatedDate :: NullOrUndefined (Date), consoleUrl :: NullOrUndefined (ConsoleUrl), resources :: NullOrUndefined (Resources) }) -> ProjectDetails
```

Constructs ProjectDetails's fields from required parameters

#### `ProjectId`

``` purescript
newtype ProjectId
  = ProjectId String
```

<p> Unique project identifier. </p>

##### Instances
``` purescript
Newtype ProjectId _
Generic ProjectId _
Show ProjectId
Decode ProjectId
Encode ProjectId
```

#### `ProjectName`

``` purescript
newtype ProjectName
  = ProjectName String
```

<p> Name of the project. </p>

##### Instances
``` purescript
Newtype ProjectName _
Generic ProjectName _
Show ProjectName
Decode ProjectName
Encode ProjectName
```

#### `ProjectRegion`

``` purescript
newtype ProjectRegion
  = ProjectRegion String
```

<p> Default region to use for AWS resource creation in the AWS Mobile Hub project. </p>

##### Instances
``` purescript
Newtype ProjectRegion _
Generic ProjectRegion _
Show ProjectRegion
Decode ProjectRegion
Encode ProjectRegion
```

#### `ProjectState`

``` purescript
newtype ProjectState
  = ProjectState String
```

<p> Synchronization state for a project. </p>

##### Instances
``` purescript
Newtype ProjectState _
Generic ProjectState _
Show ProjectState
Decode ProjectState
Encode ProjectState
```

#### `ProjectSummaries`

``` purescript
newtype ProjectSummaries
  = ProjectSummaries (Array ProjectSummary)
```

<p> List of projects. </p>

##### Instances
``` purescript
Newtype ProjectSummaries _
Generic ProjectSummaries _
Show ProjectSummaries
Decode ProjectSummaries
Encode ProjectSummaries
```

#### `ProjectSummary`

``` purescript
newtype ProjectSummary
  = ProjectSummary { name :: NullOrUndefined (ProjectName), projectId :: NullOrUndefined (ProjectId) }
```

<p> Summary information about an AWS Mobile Hub project. </p>

##### Instances
``` purescript
Newtype ProjectSummary _
Generic ProjectSummary _
Show ProjectSummary
Decode ProjectSummary
Encode ProjectSummary
```

#### `newProjectSummary`

``` purescript
newProjectSummary :: ProjectSummary
```

Constructs ProjectSummary from required parameters

#### `newProjectSummary'`

``` purescript
newProjectSummary' :: ({ name :: NullOrUndefined (ProjectName), projectId :: NullOrUndefined (ProjectId) } -> { name :: NullOrUndefined (ProjectName), projectId :: NullOrUndefined (ProjectId) }) -> ProjectSummary
```

Constructs ProjectSummary's fields from required parameters

#### `Resource`

``` purescript
newtype Resource
  = Resource { "type" :: NullOrUndefined (ResourceType), name :: NullOrUndefined (ResourceName), arn :: NullOrUndefined (ResourceArn), feature :: NullOrUndefined (Feature), attributes :: NullOrUndefined (Attributes) }
```

<p> Information about an instance of an AWS resource associated with a project. </p>

##### Instances
``` purescript
Newtype Resource _
Generic Resource _
Show Resource
Decode Resource
Encode Resource
```

#### `newResource`

``` purescript
newResource :: Resource
```

Constructs Resource from required parameters

#### `newResource'`

``` purescript
newResource' :: ({ "type" :: NullOrUndefined (ResourceType), name :: NullOrUndefined (ResourceName), arn :: NullOrUndefined (ResourceArn), feature :: NullOrUndefined (Feature), attributes :: NullOrUndefined (Attributes) } -> { "type" :: NullOrUndefined (ResourceType), name :: NullOrUndefined (ResourceName), arn :: NullOrUndefined (ResourceArn), feature :: NullOrUndefined (Feature), attributes :: NullOrUndefined (Attributes) }) -> Resource
```

Constructs Resource's fields from required parameters

#### `ResourceArn`

``` purescript
newtype ResourceArn
  = ResourceArn String
```

<p> AWS resource name which uniquely identifies the resource in AWS systems. </p>

##### Instances
``` purescript
Newtype ResourceArn _
Generic ResourceArn _
Show ResourceArn
Decode ResourceArn
Encode ResourceArn
```

#### `ResourceName`

``` purescript
newtype ResourceName
  = ResourceName String
```

<p> Name of the AWS resource (e.g., for an Amazon S3 bucket this is the name of the bucket). </p>

##### Instances
``` purescript
Newtype ResourceName _
Generic ResourceName _
Show ResourceName
Decode ResourceName
Encode ResourceName
```

#### `ResourceType`

``` purescript
newtype ResourceType
  = ResourceType String
```

<p> Simplified name for type of AWS resource (e.g., bucket is an Amazon S3 bucket). </p>

##### Instances
``` purescript
Newtype ResourceType _
Generic ResourceType _
Show ResourceType
Decode ResourceType
Encode ResourceType
```

#### `Resources`

``` purescript
newtype Resources
  = Resources (Array Resource)
```

<p> List of AWS resources associated with a project. </p>

##### Instances
``` purescript
Newtype Resources _
Generic Resources _
Show Resources
Decode Resources
Encode Resources
```

#### `ServiceUnavailableException`

``` purescript
newtype ServiceUnavailableException
  = ServiceUnavailableException { retryAfterSeconds :: NullOrUndefined (ErrorMessage), message :: NullOrUndefined (ErrorMessage) }
```

<p> The service is temporarily unavailable. The request should be retried after some time delay. </p>

##### Instances
``` purescript
Newtype ServiceUnavailableException _
Generic ServiceUnavailableException _
Show ServiceUnavailableException
Decode ServiceUnavailableException
Encode ServiceUnavailableException
```

#### `newServiceUnavailableException`

``` purescript
newServiceUnavailableException :: ServiceUnavailableException
```

Constructs ServiceUnavailableException from required parameters

#### `newServiceUnavailableException'`

``` purescript
newServiceUnavailableException' :: ({ retryAfterSeconds :: NullOrUndefined (ErrorMessage), message :: NullOrUndefined (ErrorMessage) } -> { retryAfterSeconds :: NullOrUndefined (ErrorMessage), message :: NullOrUndefined (ErrorMessage) }) -> ServiceUnavailableException
```

Constructs ServiceUnavailableException's fields from required parameters

#### `ShareUrl`

``` purescript
newtype ShareUrl
  = ShareUrl String
```

<p> URL which can be shared to allow other AWS users to create their own project in AWS Mobile Hub with the same configuration as the specified project. This URL pertains to a snapshot in time of the project configuration that is created when this API is called. If you want to share additional changes to your project configuration, then you will need to create and share a new snapshot by calling this method again. </p>

##### Instances
``` purescript
Newtype ShareUrl _
Generic ShareUrl _
Show ShareUrl
Decode ShareUrl
Encode ShareUrl
```

#### `SnapshotId`

``` purescript
newtype SnapshotId
  = SnapshotId String
```

<p> Unique identifier for the exported snapshot of the project configuration. This snapshot identifier is included in the share URL. </p>

##### Instances
``` purescript
Newtype SnapshotId _
Generic SnapshotId _
Show SnapshotId
Decode SnapshotId
Encode SnapshotId
```

#### `TooManyRequestsException`

``` purescript
newtype TooManyRequestsException
  = TooManyRequestsException { retryAfterSeconds :: NullOrUndefined (ErrorMessage), message :: NullOrUndefined (ErrorMessage) }
```

<p> Too many requests have been received for this AWS account in too short a time. The request should be retried after some time delay. </p>

##### Instances
``` purescript
Newtype TooManyRequestsException _
Generic TooManyRequestsException _
Show TooManyRequestsException
Decode TooManyRequestsException
Encode TooManyRequestsException
```

#### `newTooManyRequestsException`

``` purescript
newTooManyRequestsException :: TooManyRequestsException
```

Constructs TooManyRequestsException from required parameters

#### `newTooManyRequestsException'`

``` purescript
newTooManyRequestsException' :: ({ retryAfterSeconds :: NullOrUndefined (ErrorMessage), message :: NullOrUndefined (ErrorMessage) } -> { retryAfterSeconds :: NullOrUndefined (ErrorMessage), message :: NullOrUndefined (ErrorMessage) }) -> TooManyRequestsException
```

Constructs TooManyRequestsException's fields from required parameters

#### `UnauthorizedException`

``` purescript
newtype UnauthorizedException
  = UnauthorizedException { message :: NullOrUndefined (ErrorMessage) }
```

<p> Credentials of the caller are insufficient to authorize the request. </p>

##### Instances
``` purescript
Newtype UnauthorizedException _
Generic UnauthorizedException _
Show UnauthorizedException
Decode UnauthorizedException
Encode UnauthorizedException
```

#### `newUnauthorizedException`

``` purescript
newUnauthorizedException :: UnauthorizedException
```

Constructs UnauthorizedException from required parameters

#### `newUnauthorizedException'`

``` purescript
newUnauthorizedException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> UnauthorizedException
```

Constructs UnauthorizedException's fields from required parameters

#### `UpdateProjectRequest`

``` purescript
newtype UpdateProjectRequest
  = UpdateProjectRequest { contents :: NullOrUndefined (Contents), projectId :: ProjectId }
```

<p> Request structure used for requests to update project configuration. </p>

##### Instances
``` purescript
Newtype UpdateProjectRequest _
Generic UpdateProjectRequest _
Show UpdateProjectRequest
Decode UpdateProjectRequest
Encode UpdateProjectRequest
```

#### `newUpdateProjectRequest`

``` purescript
newUpdateProjectRequest :: ProjectId -> UpdateProjectRequest
```

Constructs UpdateProjectRequest from required parameters

#### `newUpdateProjectRequest'`

``` purescript
newUpdateProjectRequest' :: ProjectId -> ({ contents :: NullOrUndefined (Contents), projectId :: ProjectId } -> { contents :: NullOrUndefined (Contents), projectId :: ProjectId }) -> UpdateProjectRequest
```

Constructs UpdateProjectRequest's fields from required parameters

#### `UpdateProjectResult`

``` purescript
newtype UpdateProjectResult
  = UpdateProjectResult { details :: NullOrUndefined (ProjectDetails) }
```

<p> Result structure used for requests to updated project configuration. </p>

##### Instances
``` purescript
Newtype UpdateProjectResult _
Generic UpdateProjectResult _
Show UpdateProjectResult
Decode UpdateProjectResult
Encode UpdateProjectResult
```

#### `newUpdateProjectResult`

``` purescript
newUpdateProjectResult :: UpdateProjectResult
```

Constructs UpdateProjectResult from required parameters

#### `newUpdateProjectResult'`

``` purescript
newUpdateProjectResult' :: ({ details :: NullOrUndefined (ProjectDetails) } -> { details :: NullOrUndefined (ProjectDetails) }) -> UpdateProjectResult
```

Constructs UpdateProjectResult's fields from required parameters


