
module AWS.Mobile.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p> Account Action is required in order to continue the request. </p>
newtype AccountActionRequiredException = AccountActionRequiredException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeAccountActionRequiredException :: Newtype AccountActionRequiredException _
derive instance repGenericAccountActionRequiredException :: Generic AccountActionRequiredException _
instance showAccountActionRequiredException :: Show AccountActionRequiredException where show = genericShow
instance decodeAccountActionRequiredException :: Decode AccountActionRequiredException where decode = genericDecode options
instance encodeAccountActionRequiredException :: Encode AccountActionRequiredException where encode = genericEncode options

-- | Constructs AccountActionRequiredException from required parameters
newAccountActionRequiredException :: AccountActionRequiredException
newAccountActionRequiredException  = AccountActionRequiredException { "message": Nothing }

-- | Constructs AccountActionRequiredException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccountActionRequiredException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> AccountActionRequiredException
newAccountActionRequiredException'  customize = (AccountActionRequiredException <<< customize) { "message": Nothing }



-- | <p> Key part of key-value attribute pairs. </p>
newtype AttributeKey = AttributeKey String
derive instance newtypeAttributeKey :: Newtype AttributeKey _
derive instance repGenericAttributeKey :: Generic AttributeKey _
instance showAttributeKey :: Show AttributeKey where show = genericShow
instance decodeAttributeKey :: Decode AttributeKey where decode = genericDecode options
instance encodeAttributeKey :: Encode AttributeKey where encode = genericEncode options



-- | <p> Value part of key-value attribute pairs. </p>
newtype AttributeValue = AttributeValue String
derive instance newtypeAttributeValue :: Newtype AttributeValue _
derive instance repGenericAttributeValue :: Generic AttributeValue _
instance showAttributeValue :: Show AttributeValue where show = genericShow
instance decodeAttributeValue :: Decode AttributeValue where decode = genericDecode options
instance encodeAttributeValue :: Encode AttributeValue where encode = genericEncode options



-- | <p> Key-value attribute pairs. </p>
newtype Attributes = Attributes (StrMap.StrMap AttributeValue)
derive instance newtypeAttributes :: Newtype Attributes _
derive instance repGenericAttributes :: Generic Attributes _
instance showAttributes :: Show Attributes where show = genericShow
instance decodeAttributes :: Decode Attributes where decode = genericDecode options
instance encodeAttributes :: Encode Attributes where encode = genericEncode options



-- | <p> The request cannot be processed because some parameter is not valid or the project state prevents the operation from being performed. </p>
newtype BadRequestException = BadRequestException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeBadRequestException :: Newtype BadRequestException _
derive instance repGenericBadRequestException :: Generic BadRequestException _
instance showBadRequestException :: Show BadRequestException where show = genericShow
instance decodeBadRequestException :: Decode BadRequestException where decode = genericDecode options
instance encodeBadRequestException :: Encode BadRequestException where encode = genericEncode options

-- | Constructs BadRequestException from required parameters
newBadRequestException :: BadRequestException
newBadRequestException  = BadRequestException { "message": Nothing }

-- | Constructs BadRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBadRequestException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> BadRequestException
newBadRequestException'  customize = (BadRequestException <<< customize) { "message": Nothing }



-- | <p> Description of the download bundle. </p>
newtype BundleDescription = BundleDescription String
derive instance newtypeBundleDescription :: Newtype BundleDescription _
derive instance repGenericBundleDescription :: Generic BundleDescription _
instance showBundleDescription :: Show BundleDescription where show = genericShow
instance decodeBundleDescription :: Decode BundleDescription where decode = genericDecode options
instance encodeBundleDescription :: Encode BundleDescription where encode = genericEncode options



-- | <p> The details of the bundle. </p>
newtype BundleDetails = BundleDetails 
  { "bundleId" :: Maybe (BundleId)
  , "title" :: Maybe (BundleTitle)
  , "version" :: Maybe (BundleVersion)
  , "description" :: Maybe (BundleDescription)
  , "iconUrl" :: Maybe (IconUrl)
  , "availablePlatforms" :: Maybe (Platforms)
  }
derive instance newtypeBundleDetails :: Newtype BundleDetails _
derive instance repGenericBundleDetails :: Generic BundleDetails _
instance showBundleDetails :: Show BundleDetails where show = genericShow
instance decodeBundleDetails :: Decode BundleDetails where decode = genericDecode options
instance encodeBundleDetails :: Encode BundleDetails where encode = genericEncode options

-- | Constructs BundleDetails from required parameters
newBundleDetails :: BundleDetails
newBundleDetails  = BundleDetails { "availablePlatforms": Nothing, "bundleId": Nothing, "description": Nothing, "iconUrl": Nothing, "title": Nothing, "version": Nothing }

-- | Constructs BundleDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBundleDetails' :: ( { "bundleId" :: Maybe (BundleId) , "title" :: Maybe (BundleTitle) , "version" :: Maybe (BundleVersion) , "description" :: Maybe (BundleDescription) , "iconUrl" :: Maybe (IconUrl) , "availablePlatforms" :: Maybe (Platforms) } -> {"bundleId" :: Maybe (BundleId) , "title" :: Maybe (BundleTitle) , "version" :: Maybe (BundleVersion) , "description" :: Maybe (BundleDescription) , "iconUrl" :: Maybe (IconUrl) , "availablePlatforms" :: Maybe (Platforms) } ) -> BundleDetails
newBundleDetails'  customize = (BundleDetails <<< customize) { "availablePlatforms": Nothing, "bundleId": Nothing, "description": Nothing, "iconUrl": Nothing, "title": Nothing, "version": Nothing }



-- | <p> Unique bundle identifier. </p>
newtype BundleId = BundleId String
derive instance newtypeBundleId :: Newtype BundleId _
derive instance repGenericBundleId :: Generic BundleId _
instance showBundleId :: Show BundleId where show = genericShow
instance decodeBundleId :: Decode BundleId where decode = genericDecode options
instance encodeBundleId :: Encode BundleId where encode = genericEncode options



-- | <p> A list of bundles. </p>
newtype BundleList = BundleList (Array BundleDetails)
derive instance newtypeBundleList :: Newtype BundleList _
derive instance repGenericBundleList :: Generic BundleList _
instance showBundleList :: Show BundleList where show = genericShow
instance decodeBundleList :: Decode BundleList where decode = genericDecode options
instance encodeBundleList :: Encode BundleList where encode = genericEncode options



-- | <p> Title of the download bundle. </p>
newtype BundleTitle = BundleTitle String
derive instance newtypeBundleTitle :: Newtype BundleTitle _
derive instance repGenericBundleTitle :: Generic BundleTitle _
instance showBundleTitle :: Show BundleTitle where show = genericShow
instance decodeBundleTitle :: Decode BundleTitle where decode = genericDecode options
instance encodeBundleTitle :: Encode BundleTitle where encode = genericEncode options



-- | <p> Version of the download bundle. </p>
newtype BundleVersion = BundleVersion String
derive instance newtypeBundleVersion :: Newtype BundleVersion _
derive instance repGenericBundleVersion :: Generic BundleVersion _
instance showBundleVersion :: Show BundleVersion where show = genericShow
instance decodeBundleVersion :: Decode BundleVersion where decode = genericDecode options
instance encodeBundleVersion :: Encode BundleVersion where encode = genericEncode options



newtype ConsoleUrl = ConsoleUrl String
derive instance newtypeConsoleUrl :: Newtype ConsoleUrl _
derive instance repGenericConsoleUrl :: Generic ConsoleUrl _
instance showConsoleUrl :: Show ConsoleUrl where show = genericShow
instance decodeConsoleUrl :: Decode ConsoleUrl where decode = genericDecode options
instance encodeConsoleUrl :: Encode ConsoleUrl where encode = genericEncode options



-- | <p> Binary file data. </p>
newtype Contents = Contents String
derive instance newtypeContents :: Newtype Contents _
derive instance repGenericContents :: Generic Contents _
instance showContents :: Show Contents where show = genericShow
instance decodeContents :: Decode Contents where decode = genericDecode options
instance encodeContents :: Encode Contents where encode = genericEncode options



-- | <p> Request structure used to request a project be created. </p>
newtype CreateProjectRequest = CreateProjectRequest 
  { "name" :: Maybe (ProjectName)
  , "region" :: Maybe (ProjectRegion)
  , "contents" :: Maybe (Contents)
  , "snapshotId" :: Maybe (SnapshotId)
  }
derive instance newtypeCreateProjectRequest :: Newtype CreateProjectRequest _
derive instance repGenericCreateProjectRequest :: Generic CreateProjectRequest _
instance showCreateProjectRequest :: Show CreateProjectRequest where show = genericShow
instance decodeCreateProjectRequest :: Decode CreateProjectRequest where decode = genericDecode options
instance encodeCreateProjectRequest :: Encode CreateProjectRequest where encode = genericEncode options

-- | Constructs CreateProjectRequest from required parameters
newCreateProjectRequest :: CreateProjectRequest
newCreateProjectRequest  = CreateProjectRequest { "contents": Nothing, "name": Nothing, "region": Nothing, "snapshotId": Nothing }

-- | Constructs CreateProjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateProjectRequest' :: ( { "name" :: Maybe (ProjectName) , "region" :: Maybe (ProjectRegion) , "contents" :: Maybe (Contents) , "snapshotId" :: Maybe (SnapshotId) } -> {"name" :: Maybe (ProjectName) , "region" :: Maybe (ProjectRegion) , "contents" :: Maybe (Contents) , "snapshotId" :: Maybe (SnapshotId) } ) -> CreateProjectRequest
newCreateProjectRequest'  customize = (CreateProjectRequest <<< customize) { "contents": Nothing, "name": Nothing, "region": Nothing, "snapshotId": Nothing }



-- | <p> Result structure used in response to a request to create a project. </p>
newtype CreateProjectResult = CreateProjectResult 
  { "details" :: Maybe (ProjectDetails)
  }
derive instance newtypeCreateProjectResult :: Newtype CreateProjectResult _
derive instance repGenericCreateProjectResult :: Generic CreateProjectResult _
instance showCreateProjectResult :: Show CreateProjectResult where show = genericShow
instance decodeCreateProjectResult :: Decode CreateProjectResult where decode = genericDecode options
instance encodeCreateProjectResult :: Encode CreateProjectResult where encode = genericEncode options

-- | Constructs CreateProjectResult from required parameters
newCreateProjectResult :: CreateProjectResult
newCreateProjectResult  = CreateProjectResult { "details": Nothing }

-- | Constructs CreateProjectResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateProjectResult' :: ( { "details" :: Maybe (ProjectDetails) } -> {"details" :: Maybe (ProjectDetails) } ) -> CreateProjectResult
newCreateProjectResult'  customize = (CreateProjectResult <<< customize) { "details": Nothing }



newtype Date = Date Types.Timestamp
derive instance newtypeDate :: Newtype Date _
derive instance repGenericDate :: Generic Date _
instance showDate :: Show Date where show = genericShow
instance decodeDate :: Decode Date where decode = genericDecode options
instance encodeDate :: Encode Date where encode = genericEncode options



-- | <p> Request structure used to request a project be deleted. </p>
newtype DeleteProjectRequest = DeleteProjectRequest 
  { "projectId" :: (ProjectId)
  }
derive instance newtypeDeleteProjectRequest :: Newtype DeleteProjectRequest _
derive instance repGenericDeleteProjectRequest :: Generic DeleteProjectRequest _
instance showDeleteProjectRequest :: Show DeleteProjectRequest where show = genericShow
instance decodeDeleteProjectRequest :: Decode DeleteProjectRequest where decode = genericDecode options
instance encodeDeleteProjectRequest :: Encode DeleteProjectRequest where encode = genericEncode options

-- | Constructs DeleteProjectRequest from required parameters
newDeleteProjectRequest :: ProjectId -> DeleteProjectRequest
newDeleteProjectRequest _projectId = DeleteProjectRequest { "projectId": _projectId }

-- | Constructs DeleteProjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteProjectRequest' :: ProjectId -> ( { "projectId" :: (ProjectId) } -> {"projectId" :: (ProjectId) } ) -> DeleteProjectRequest
newDeleteProjectRequest' _projectId customize = (DeleteProjectRequest <<< customize) { "projectId": _projectId }



-- | <p> Result structure used in response to request to delete a project. </p>
newtype DeleteProjectResult = DeleteProjectResult 
  { "deletedResources" :: Maybe (Resources)
  , "orphanedResources" :: Maybe (Resources)
  }
derive instance newtypeDeleteProjectResult :: Newtype DeleteProjectResult _
derive instance repGenericDeleteProjectResult :: Generic DeleteProjectResult _
instance showDeleteProjectResult :: Show DeleteProjectResult where show = genericShow
instance decodeDeleteProjectResult :: Decode DeleteProjectResult where decode = genericDecode options
instance encodeDeleteProjectResult :: Encode DeleteProjectResult where encode = genericEncode options

-- | Constructs DeleteProjectResult from required parameters
newDeleteProjectResult :: DeleteProjectResult
newDeleteProjectResult  = DeleteProjectResult { "deletedResources": Nothing, "orphanedResources": Nothing }

-- | Constructs DeleteProjectResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteProjectResult' :: ( { "deletedResources" :: Maybe (Resources) , "orphanedResources" :: Maybe (Resources) } -> {"deletedResources" :: Maybe (Resources) , "orphanedResources" :: Maybe (Resources) } ) -> DeleteProjectResult
newDeleteProjectResult'  customize = (DeleteProjectResult <<< customize) { "deletedResources": Nothing, "orphanedResources": Nothing }



-- | <p> Request structure to request the details of a specific bundle. </p>
newtype DescribeBundleRequest = DescribeBundleRequest 
  { "bundleId" :: (BundleId)
  }
derive instance newtypeDescribeBundleRequest :: Newtype DescribeBundleRequest _
derive instance repGenericDescribeBundleRequest :: Generic DescribeBundleRequest _
instance showDescribeBundleRequest :: Show DescribeBundleRequest where show = genericShow
instance decodeDescribeBundleRequest :: Decode DescribeBundleRequest where decode = genericDecode options
instance encodeDescribeBundleRequest :: Encode DescribeBundleRequest where encode = genericEncode options

-- | Constructs DescribeBundleRequest from required parameters
newDescribeBundleRequest :: BundleId -> DescribeBundleRequest
newDescribeBundleRequest _bundleId = DescribeBundleRequest { "bundleId": _bundleId }

-- | Constructs DescribeBundleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBundleRequest' :: BundleId -> ( { "bundleId" :: (BundleId) } -> {"bundleId" :: (BundleId) } ) -> DescribeBundleRequest
newDescribeBundleRequest' _bundleId customize = (DescribeBundleRequest <<< customize) { "bundleId": _bundleId }



-- | <p> Result structure contains the details of the bundle. </p>
newtype DescribeBundleResult = DescribeBundleResult 
  { "details" :: Maybe (BundleDetails)
  }
derive instance newtypeDescribeBundleResult :: Newtype DescribeBundleResult _
derive instance repGenericDescribeBundleResult :: Generic DescribeBundleResult _
instance showDescribeBundleResult :: Show DescribeBundleResult where show = genericShow
instance decodeDescribeBundleResult :: Decode DescribeBundleResult where decode = genericDecode options
instance encodeDescribeBundleResult :: Encode DescribeBundleResult where encode = genericEncode options

-- | Constructs DescribeBundleResult from required parameters
newDescribeBundleResult :: DescribeBundleResult
newDescribeBundleResult  = DescribeBundleResult { "details": Nothing }

-- | Constructs DescribeBundleResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBundleResult' :: ( { "details" :: Maybe (BundleDetails) } -> {"details" :: Maybe (BundleDetails) } ) -> DescribeBundleResult
newDescribeBundleResult'  customize = (DescribeBundleResult <<< customize) { "details": Nothing }



-- | <p> Request structure used to request details about a project. </p>
newtype DescribeProjectRequest = DescribeProjectRequest 
  { "projectId" :: (ProjectId)
  , "syncFromResources" :: Maybe (Boolean)
  }
derive instance newtypeDescribeProjectRequest :: Newtype DescribeProjectRequest _
derive instance repGenericDescribeProjectRequest :: Generic DescribeProjectRequest _
instance showDescribeProjectRequest :: Show DescribeProjectRequest where show = genericShow
instance decodeDescribeProjectRequest :: Decode DescribeProjectRequest where decode = genericDecode options
instance encodeDescribeProjectRequest :: Encode DescribeProjectRequest where encode = genericEncode options

-- | Constructs DescribeProjectRequest from required parameters
newDescribeProjectRequest :: ProjectId -> DescribeProjectRequest
newDescribeProjectRequest _projectId = DescribeProjectRequest { "projectId": _projectId, "syncFromResources": Nothing }

-- | Constructs DescribeProjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeProjectRequest' :: ProjectId -> ( { "projectId" :: (ProjectId) , "syncFromResources" :: Maybe (Boolean) } -> {"projectId" :: (ProjectId) , "syncFromResources" :: Maybe (Boolean) } ) -> DescribeProjectRequest
newDescribeProjectRequest' _projectId customize = (DescribeProjectRequest <<< customize) { "projectId": _projectId, "syncFromResources": Nothing }



-- | <p> Result structure used for requests of project details. </p>
newtype DescribeProjectResult = DescribeProjectResult 
  { "details" :: Maybe (ProjectDetails)
  }
derive instance newtypeDescribeProjectResult :: Newtype DescribeProjectResult _
derive instance repGenericDescribeProjectResult :: Generic DescribeProjectResult _
instance showDescribeProjectResult :: Show DescribeProjectResult where show = genericShow
instance decodeDescribeProjectResult :: Decode DescribeProjectResult where decode = genericDecode options
instance encodeDescribeProjectResult :: Encode DescribeProjectResult where encode = genericEncode options

-- | Constructs DescribeProjectResult from required parameters
newDescribeProjectResult :: DescribeProjectResult
newDescribeProjectResult  = DescribeProjectResult { "details": Nothing }

-- | Constructs DescribeProjectResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeProjectResult' :: ( { "details" :: Maybe (ProjectDetails) } -> {"details" :: Maybe (ProjectDetails) } ) -> DescribeProjectResult
newDescribeProjectResult'  customize = (DescribeProjectResult <<< customize) { "details": Nothing }



-- | <p> The download Url. </p>
newtype DownloadUrl = DownloadUrl String
derive instance newtypeDownloadUrl :: Newtype DownloadUrl _
derive instance repGenericDownloadUrl :: Generic DownloadUrl _
instance showDownloadUrl :: Show DownloadUrl where show = genericShow
instance decodeDownloadUrl :: Decode DownloadUrl where decode = genericDecode options
instance encodeDownloadUrl :: Encode DownloadUrl where encode = genericEncode options



-- | <p> The Exception Error Message. </p>
newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | <p> Request structure used to request generation of custom SDK and tool packages required to integrate mobile web or app clients with backed AWS resources. </p>
newtype ExportBundleRequest = ExportBundleRequest 
  { "bundleId" :: (BundleId)
  , "projectId" :: Maybe (ProjectId)
  , "platform" :: Maybe (Platform)
  }
derive instance newtypeExportBundleRequest :: Newtype ExportBundleRequest _
derive instance repGenericExportBundleRequest :: Generic ExportBundleRequest _
instance showExportBundleRequest :: Show ExportBundleRequest where show = genericShow
instance decodeExportBundleRequest :: Decode ExportBundleRequest where decode = genericDecode options
instance encodeExportBundleRequest :: Encode ExportBundleRequest where encode = genericEncode options

-- | Constructs ExportBundleRequest from required parameters
newExportBundleRequest :: BundleId -> ExportBundleRequest
newExportBundleRequest _bundleId = ExportBundleRequest { "bundleId": _bundleId, "platform": Nothing, "projectId": Nothing }

-- | Constructs ExportBundleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExportBundleRequest' :: BundleId -> ( { "bundleId" :: (BundleId) , "projectId" :: Maybe (ProjectId) , "platform" :: Maybe (Platform) } -> {"bundleId" :: (BundleId) , "projectId" :: Maybe (ProjectId) , "platform" :: Maybe (Platform) } ) -> ExportBundleRequest
newExportBundleRequest' _bundleId customize = (ExportBundleRequest <<< customize) { "bundleId": _bundleId, "platform": Nothing, "projectId": Nothing }



-- | <p> Result structure which contains link to download custom-generated SDK and tool packages used to integrate mobile web or app clients with backed AWS resources. </p>
newtype ExportBundleResult = ExportBundleResult 
  { "downloadUrl" :: Maybe (DownloadUrl)
  }
derive instance newtypeExportBundleResult :: Newtype ExportBundleResult _
derive instance repGenericExportBundleResult :: Generic ExportBundleResult _
instance showExportBundleResult :: Show ExportBundleResult where show = genericShow
instance decodeExportBundleResult :: Decode ExportBundleResult where decode = genericDecode options
instance encodeExportBundleResult :: Encode ExportBundleResult where encode = genericEncode options

-- | Constructs ExportBundleResult from required parameters
newExportBundleResult :: ExportBundleResult
newExportBundleResult  = ExportBundleResult { "downloadUrl": Nothing }

-- | Constructs ExportBundleResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExportBundleResult' :: ( { "downloadUrl" :: Maybe (DownloadUrl) } -> {"downloadUrl" :: Maybe (DownloadUrl) } ) -> ExportBundleResult
newExportBundleResult'  customize = (ExportBundleResult <<< customize) { "downloadUrl": Nothing }



-- | <p> Request structure used in requests to export project configuration details. </p>
newtype ExportProjectRequest = ExportProjectRequest 
  { "projectId" :: (ProjectId)
  }
derive instance newtypeExportProjectRequest :: Newtype ExportProjectRequest _
derive instance repGenericExportProjectRequest :: Generic ExportProjectRequest _
instance showExportProjectRequest :: Show ExportProjectRequest where show = genericShow
instance decodeExportProjectRequest :: Decode ExportProjectRequest where decode = genericDecode options
instance encodeExportProjectRequest :: Encode ExportProjectRequest where encode = genericEncode options

-- | Constructs ExportProjectRequest from required parameters
newExportProjectRequest :: ProjectId -> ExportProjectRequest
newExportProjectRequest _projectId = ExportProjectRequest { "projectId": _projectId }

-- | Constructs ExportProjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExportProjectRequest' :: ProjectId -> ( { "projectId" :: (ProjectId) } -> {"projectId" :: (ProjectId) } ) -> ExportProjectRequest
newExportProjectRequest' _projectId customize = (ExportProjectRequest <<< customize) { "projectId": _projectId }



-- | <p> Result structure used for requests to export project configuration details. </p>
newtype ExportProjectResult = ExportProjectResult 
  { "downloadUrl" :: Maybe (DownloadUrl)
  , "shareUrl" :: Maybe (ShareUrl)
  , "snapshotId" :: Maybe (SnapshotId)
  }
derive instance newtypeExportProjectResult :: Newtype ExportProjectResult _
derive instance repGenericExportProjectResult :: Generic ExportProjectResult _
instance showExportProjectResult :: Show ExportProjectResult where show = genericShow
instance decodeExportProjectResult :: Decode ExportProjectResult where decode = genericDecode options
instance encodeExportProjectResult :: Encode ExportProjectResult where encode = genericEncode options

-- | Constructs ExportProjectResult from required parameters
newExportProjectResult :: ExportProjectResult
newExportProjectResult  = ExportProjectResult { "downloadUrl": Nothing, "shareUrl": Nothing, "snapshotId": Nothing }

-- | Constructs ExportProjectResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExportProjectResult' :: ( { "downloadUrl" :: Maybe (DownloadUrl) , "shareUrl" :: Maybe (ShareUrl) , "snapshotId" :: Maybe (SnapshotId) } -> {"downloadUrl" :: Maybe (DownloadUrl) , "shareUrl" :: Maybe (ShareUrl) , "snapshotId" :: Maybe (SnapshotId) } ) -> ExportProjectResult
newExportProjectResult'  customize = (ExportProjectResult <<< customize) { "downloadUrl": Nothing, "shareUrl": Nothing, "snapshotId": Nothing }



-- | <p> Identifies which feature in AWS Mobile Hub is associated with this AWS resource. </p>
newtype Feature = Feature String
derive instance newtypeFeature :: Newtype Feature _
derive instance repGenericFeature :: Generic Feature _
instance showFeature :: Show Feature where show = genericShow
instance decodeFeature :: Decode Feature where decode = genericDecode options
instance encodeFeature :: Encode Feature where encode = genericEncode options



-- | <p> Icon for the download bundle. </p>
newtype IconUrl = IconUrl String
derive instance newtypeIconUrl :: Newtype IconUrl _
derive instance repGenericIconUrl :: Generic IconUrl _
instance showIconUrl :: Show IconUrl where show = genericShow
instance decodeIconUrl :: Decode IconUrl where decode = genericDecode options
instance encodeIconUrl :: Encode IconUrl where encode = genericEncode options



-- | <p> The service has encountered an unexpected error condition which prevents it from servicing the request. </p>
newtype InternalFailureException = InternalFailureException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInternalFailureException :: Newtype InternalFailureException _
derive instance repGenericInternalFailureException :: Generic InternalFailureException _
instance showInternalFailureException :: Show InternalFailureException where show = genericShow
instance decodeInternalFailureException :: Decode InternalFailureException where decode = genericDecode options
instance encodeInternalFailureException :: Encode InternalFailureException where encode = genericEncode options

-- | Constructs InternalFailureException from required parameters
newInternalFailureException :: InternalFailureException
newInternalFailureException  = InternalFailureException { "message": Nothing }

-- | Constructs InternalFailureException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalFailureException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InternalFailureException
newInternalFailureException'  customize = (InternalFailureException <<< customize) { "message": Nothing }



-- | <p> There are too many AWS Mobile Hub projects in the account or the account has exceeded the maximum number of resources in some AWS service. You should create another sub-account using AWS Organizations or remove some resources and retry your request. </p>
newtype LimitExceededException = LimitExceededException 
  { "retryAfterSeconds" :: Maybe (ErrorMessage)
  , "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": Nothing, "retryAfterSeconds": Nothing }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "retryAfterSeconds" :: Maybe (ErrorMessage) , "message" :: Maybe (ErrorMessage) } -> {"retryAfterSeconds" :: Maybe (ErrorMessage) , "message" :: Maybe (ErrorMessage) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": Nothing, "retryAfterSeconds": Nothing }



-- | <p> Request structure to request all available bundles. </p>
newtype ListBundlesRequest = ListBundlesRequest 
  { "maxResults" :: Maybe (MaxResults)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListBundlesRequest :: Newtype ListBundlesRequest _
derive instance repGenericListBundlesRequest :: Generic ListBundlesRequest _
instance showListBundlesRequest :: Show ListBundlesRequest where show = genericShow
instance decodeListBundlesRequest :: Decode ListBundlesRequest where decode = genericDecode options
instance encodeListBundlesRequest :: Encode ListBundlesRequest where encode = genericEncode options

-- | Constructs ListBundlesRequest from required parameters
newListBundlesRequest :: ListBundlesRequest
newListBundlesRequest  = ListBundlesRequest { "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListBundlesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListBundlesRequest' :: ( { "maxResults" :: Maybe (MaxResults) , "nextToken" :: Maybe (NextToken) } -> {"maxResults" :: Maybe (MaxResults) , "nextToken" :: Maybe (NextToken) } ) -> ListBundlesRequest
newListBundlesRequest'  customize = (ListBundlesRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing }



-- | <p> Result structure contains a list of all available bundles with details. </p>
newtype ListBundlesResult = ListBundlesResult 
  { "bundleList" :: Maybe (BundleList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListBundlesResult :: Newtype ListBundlesResult _
derive instance repGenericListBundlesResult :: Generic ListBundlesResult _
instance showListBundlesResult :: Show ListBundlesResult where show = genericShow
instance decodeListBundlesResult :: Decode ListBundlesResult where decode = genericDecode options
instance encodeListBundlesResult :: Encode ListBundlesResult where encode = genericEncode options

-- | Constructs ListBundlesResult from required parameters
newListBundlesResult :: ListBundlesResult
newListBundlesResult  = ListBundlesResult { "bundleList": Nothing, "nextToken": Nothing }

-- | Constructs ListBundlesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListBundlesResult' :: ( { "bundleList" :: Maybe (BundleList) , "nextToken" :: Maybe (NextToken) } -> {"bundleList" :: Maybe (BundleList) , "nextToken" :: Maybe (NextToken) } ) -> ListBundlesResult
newListBundlesResult'  customize = (ListBundlesResult <<< customize) { "bundleList": Nothing, "nextToken": Nothing }



-- | <p> Request structure used to request projects list in AWS Mobile Hub. </p>
newtype ListProjectsRequest = ListProjectsRequest 
  { "maxResults" :: Maybe (MaxResults)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListProjectsRequest :: Newtype ListProjectsRequest _
derive instance repGenericListProjectsRequest :: Generic ListProjectsRequest _
instance showListProjectsRequest :: Show ListProjectsRequest where show = genericShow
instance decodeListProjectsRequest :: Decode ListProjectsRequest where decode = genericDecode options
instance encodeListProjectsRequest :: Encode ListProjectsRequest where encode = genericEncode options

-- | Constructs ListProjectsRequest from required parameters
newListProjectsRequest :: ListProjectsRequest
newListProjectsRequest  = ListProjectsRequest { "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListProjectsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListProjectsRequest' :: ( { "maxResults" :: Maybe (MaxResults) , "nextToken" :: Maybe (NextToken) } -> {"maxResults" :: Maybe (MaxResults) , "nextToken" :: Maybe (NextToken) } ) -> ListProjectsRequest
newListProjectsRequest'  customize = (ListProjectsRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing }



-- | <p> Result structure used for requests to list projects in AWS Mobile Hub. </p>
newtype ListProjectsResult = ListProjectsResult 
  { "projects" :: Maybe (ProjectSummaries)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListProjectsResult :: Newtype ListProjectsResult _
derive instance repGenericListProjectsResult :: Generic ListProjectsResult _
instance showListProjectsResult :: Show ListProjectsResult where show = genericShow
instance decodeListProjectsResult :: Decode ListProjectsResult where decode = genericDecode options
instance encodeListProjectsResult :: Encode ListProjectsResult where encode = genericEncode options

-- | Constructs ListProjectsResult from required parameters
newListProjectsResult :: ListProjectsResult
newListProjectsResult  = ListProjectsResult { "nextToken": Nothing, "projects": Nothing }

-- | Constructs ListProjectsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListProjectsResult' :: ( { "projects" :: Maybe (ProjectSummaries) , "nextToken" :: Maybe (NextToken) } -> {"projects" :: Maybe (ProjectSummaries) , "nextToken" :: Maybe (NextToken) } ) -> ListProjectsResult
newListProjectsResult'  customize = (ListProjectsResult <<< customize) { "nextToken": Nothing, "projects": Nothing }



-- | <p> Maximum number of records to list in a single response. </p>
newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



-- | <p> Pagination token. Set to null to start listing records from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more entries. </p>
newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | <p> No entity can be found with the specified identifier. </p>
newtype NotFoundException = NotFoundException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where decode = genericDecode options
instance encodeNotFoundException :: Encode NotFoundException where encode = genericEncode options

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "message": Nothing }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "message": Nothing }



-- | <p> Developer desktop or target mobile app or website platform. </p>
newtype Platform = Platform String
derive instance newtypePlatform :: Newtype Platform _
derive instance repGenericPlatform :: Generic Platform _
instance showPlatform :: Show Platform where show = genericShow
instance decodePlatform :: Decode Platform where decode = genericDecode options
instance encodePlatform :: Encode Platform where encode = genericEncode options



-- | <p> Developer desktop or mobile app or website platforms. </p>
newtype Platforms = Platforms (Array Platform)
derive instance newtypePlatforms :: Newtype Platforms _
derive instance repGenericPlatforms :: Generic Platforms _
instance showPlatforms :: Show Platforms where show = genericShow
instance decodePlatforms :: Decode Platforms where decode = genericDecode options
instance encodePlatforms :: Encode Platforms where encode = genericEncode options



-- | <p> Detailed information about an AWS Mobile Hub project. </p>
newtype ProjectDetails = ProjectDetails 
  { "name" :: Maybe (ProjectName)
  , "projectId" :: Maybe (ProjectId)
  , "region" :: Maybe (ProjectRegion)
  , "state" :: Maybe (ProjectState)
  , "createdDate" :: Maybe (Date)
  , "lastUpdatedDate" :: Maybe (Date)
  , "consoleUrl" :: Maybe (ConsoleUrl)
  , "resources" :: Maybe (Resources)
  }
derive instance newtypeProjectDetails :: Newtype ProjectDetails _
derive instance repGenericProjectDetails :: Generic ProjectDetails _
instance showProjectDetails :: Show ProjectDetails where show = genericShow
instance decodeProjectDetails :: Decode ProjectDetails where decode = genericDecode options
instance encodeProjectDetails :: Encode ProjectDetails where encode = genericEncode options

-- | Constructs ProjectDetails from required parameters
newProjectDetails :: ProjectDetails
newProjectDetails  = ProjectDetails { "consoleUrl": Nothing, "createdDate": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "projectId": Nothing, "region": Nothing, "resources": Nothing, "state": Nothing }

-- | Constructs ProjectDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProjectDetails' :: ( { "name" :: Maybe (ProjectName) , "projectId" :: Maybe (ProjectId) , "region" :: Maybe (ProjectRegion) , "state" :: Maybe (ProjectState) , "createdDate" :: Maybe (Date) , "lastUpdatedDate" :: Maybe (Date) , "consoleUrl" :: Maybe (ConsoleUrl) , "resources" :: Maybe (Resources) } -> {"name" :: Maybe (ProjectName) , "projectId" :: Maybe (ProjectId) , "region" :: Maybe (ProjectRegion) , "state" :: Maybe (ProjectState) , "createdDate" :: Maybe (Date) , "lastUpdatedDate" :: Maybe (Date) , "consoleUrl" :: Maybe (ConsoleUrl) , "resources" :: Maybe (Resources) } ) -> ProjectDetails
newProjectDetails'  customize = (ProjectDetails <<< customize) { "consoleUrl": Nothing, "createdDate": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "projectId": Nothing, "region": Nothing, "resources": Nothing, "state": Nothing }



-- | <p> Unique project identifier. </p>
newtype ProjectId = ProjectId String
derive instance newtypeProjectId :: Newtype ProjectId _
derive instance repGenericProjectId :: Generic ProjectId _
instance showProjectId :: Show ProjectId where show = genericShow
instance decodeProjectId :: Decode ProjectId where decode = genericDecode options
instance encodeProjectId :: Encode ProjectId where encode = genericEncode options



-- | <p> Name of the project. </p>
newtype ProjectName = ProjectName String
derive instance newtypeProjectName :: Newtype ProjectName _
derive instance repGenericProjectName :: Generic ProjectName _
instance showProjectName :: Show ProjectName where show = genericShow
instance decodeProjectName :: Decode ProjectName where decode = genericDecode options
instance encodeProjectName :: Encode ProjectName where encode = genericEncode options



-- | <p> Default region to use for AWS resource creation in the AWS Mobile Hub project. </p>
newtype ProjectRegion = ProjectRegion String
derive instance newtypeProjectRegion :: Newtype ProjectRegion _
derive instance repGenericProjectRegion :: Generic ProjectRegion _
instance showProjectRegion :: Show ProjectRegion where show = genericShow
instance decodeProjectRegion :: Decode ProjectRegion where decode = genericDecode options
instance encodeProjectRegion :: Encode ProjectRegion where encode = genericEncode options



-- | <p> Synchronization state for a project. </p>
newtype ProjectState = ProjectState String
derive instance newtypeProjectState :: Newtype ProjectState _
derive instance repGenericProjectState :: Generic ProjectState _
instance showProjectState :: Show ProjectState where show = genericShow
instance decodeProjectState :: Decode ProjectState where decode = genericDecode options
instance encodeProjectState :: Encode ProjectState where encode = genericEncode options



-- | <p> List of projects. </p>
newtype ProjectSummaries = ProjectSummaries (Array ProjectSummary)
derive instance newtypeProjectSummaries :: Newtype ProjectSummaries _
derive instance repGenericProjectSummaries :: Generic ProjectSummaries _
instance showProjectSummaries :: Show ProjectSummaries where show = genericShow
instance decodeProjectSummaries :: Decode ProjectSummaries where decode = genericDecode options
instance encodeProjectSummaries :: Encode ProjectSummaries where encode = genericEncode options



-- | <p> Summary information about an AWS Mobile Hub project. </p>
newtype ProjectSummary = ProjectSummary 
  { "name" :: Maybe (ProjectName)
  , "projectId" :: Maybe (ProjectId)
  }
derive instance newtypeProjectSummary :: Newtype ProjectSummary _
derive instance repGenericProjectSummary :: Generic ProjectSummary _
instance showProjectSummary :: Show ProjectSummary where show = genericShow
instance decodeProjectSummary :: Decode ProjectSummary where decode = genericDecode options
instance encodeProjectSummary :: Encode ProjectSummary where encode = genericEncode options

-- | Constructs ProjectSummary from required parameters
newProjectSummary :: ProjectSummary
newProjectSummary  = ProjectSummary { "name": Nothing, "projectId": Nothing }

-- | Constructs ProjectSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProjectSummary' :: ( { "name" :: Maybe (ProjectName) , "projectId" :: Maybe (ProjectId) } -> {"name" :: Maybe (ProjectName) , "projectId" :: Maybe (ProjectId) } ) -> ProjectSummary
newProjectSummary'  customize = (ProjectSummary <<< customize) { "name": Nothing, "projectId": Nothing }



-- | <p> Information about an instance of an AWS resource associated with a project. </p>
newtype Resource = Resource 
  { "type" :: Maybe (ResourceType)
  , "name" :: Maybe (ResourceName)
  , "arn" :: Maybe (ResourceArn)
  , "feature" :: Maybe (Feature)
  , "attributes" :: Maybe (Attributes)
  }
derive instance newtypeResource :: Newtype Resource _
derive instance repGenericResource :: Generic Resource _
instance showResource :: Show Resource where show = genericShow
instance decodeResource :: Decode Resource where decode = genericDecode options
instance encodeResource :: Encode Resource where encode = genericEncode options

-- | Constructs Resource from required parameters
newResource :: Resource
newResource  = Resource { "arn": Nothing, "attributes": Nothing, "feature": Nothing, "name": Nothing, "type": Nothing }

-- | Constructs Resource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResource' :: ( { "type" :: Maybe (ResourceType) , "name" :: Maybe (ResourceName) , "arn" :: Maybe (ResourceArn) , "feature" :: Maybe (Feature) , "attributes" :: Maybe (Attributes) } -> {"type" :: Maybe (ResourceType) , "name" :: Maybe (ResourceName) , "arn" :: Maybe (ResourceArn) , "feature" :: Maybe (Feature) , "attributes" :: Maybe (Attributes) } ) -> Resource
newResource'  customize = (Resource <<< customize) { "arn": Nothing, "attributes": Nothing, "feature": Nothing, "name": Nothing, "type": Nothing }



-- | <p> AWS resource name which uniquely identifies the resource in AWS systems. </p>
newtype ResourceArn = ResourceArn String
derive instance newtypeResourceArn :: Newtype ResourceArn _
derive instance repGenericResourceArn :: Generic ResourceArn _
instance showResourceArn :: Show ResourceArn where show = genericShow
instance decodeResourceArn :: Decode ResourceArn where decode = genericDecode options
instance encodeResourceArn :: Encode ResourceArn where encode = genericEncode options



-- | <p> Name of the AWS resource (e.g., for an Amazon S3 bucket this is the name of the bucket). </p>
newtype ResourceName = ResourceName String
derive instance newtypeResourceName :: Newtype ResourceName _
derive instance repGenericResourceName :: Generic ResourceName _
instance showResourceName :: Show ResourceName where show = genericShow
instance decodeResourceName :: Decode ResourceName where decode = genericDecode options
instance encodeResourceName :: Encode ResourceName where encode = genericEncode options



-- | <p> Simplified name for type of AWS resource (e.g., bucket is an Amazon S3 bucket). </p>
newtype ResourceType = ResourceType String
derive instance newtypeResourceType :: Newtype ResourceType _
derive instance repGenericResourceType :: Generic ResourceType _
instance showResourceType :: Show ResourceType where show = genericShow
instance decodeResourceType :: Decode ResourceType where decode = genericDecode options
instance encodeResourceType :: Encode ResourceType where encode = genericEncode options



-- | <p> List of AWS resources associated with a project. </p>
newtype Resources = Resources (Array Resource)
derive instance newtypeResources :: Newtype Resources _
derive instance repGenericResources :: Generic Resources _
instance showResources :: Show Resources where show = genericShow
instance decodeResources :: Decode Resources where decode = genericDecode options
instance encodeResources :: Encode Resources where encode = genericEncode options



-- | <p> The service is temporarily unavailable. The request should be retried after some time delay. </p>
newtype ServiceUnavailableException = ServiceUnavailableException 
  { "retryAfterSeconds" :: Maybe (ErrorMessage)
  , "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeServiceUnavailableException :: Newtype ServiceUnavailableException _
derive instance repGenericServiceUnavailableException :: Generic ServiceUnavailableException _
instance showServiceUnavailableException :: Show ServiceUnavailableException where show = genericShow
instance decodeServiceUnavailableException :: Decode ServiceUnavailableException where decode = genericDecode options
instance encodeServiceUnavailableException :: Encode ServiceUnavailableException where encode = genericEncode options

-- | Constructs ServiceUnavailableException from required parameters
newServiceUnavailableException :: ServiceUnavailableException
newServiceUnavailableException  = ServiceUnavailableException { "message": Nothing, "retryAfterSeconds": Nothing }

-- | Constructs ServiceUnavailableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceUnavailableException' :: ( { "retryAfterSeconds" :: Maybe (ErrorMessage) , "message" :: Maybe (ErrorMessage) } -> {"retryAfterSeconds" :: Maybe (ErrorMessage) , "message" :: Maybe (ErrorMessage) } ) -> ServiceUnavailableException
newServiceUnavailableException'  customize = (ServiceUnavailableException <<< customize) { "message": Nothing, "retryAfterSeconds": Nothing }



-- | <p> URL which can be shared to allow other AWS users to create their own project in AWS Mobile Hub with the same configuration as the specified project. This URL pertains to a snapshot in time of the project configuration that is created when this API is called. If you want to share additional changes to your project configuration, then you will need to create and share a new snapshot by calling this method again. </p>
newtype ShareUrl = ShareUrl String
derive instance newtypeShareUrl :: Newtype ShareUrl _
derive instance repGenericShareUrl :: Generic ShareUrl _
instance showShareUrl :: Show ShareUrl where show = genericShow
instance decodeShareUrl :: Decode ShareUrl where decode = genericDecode options
instance encodeShareUrl :: Encode ShareUrl where encode = genericEncode options



-- | <p> Unique identifier for the exported snapshot of the project configuration. This snapshot identifier is included in the share URL. </p>
newtype SnapshotId = SnapshotId String
derive instance newtypeSnapshotId :: Newtype SnapshotId _
derive instance repGenericSnapshotId :: Generic SnapshotId _
instance showSnapshotId :: Show SnapshotId where show = genericShow
instance decodeSnapshotId :: Decode SnapshotId where decode = genericDecode options
instance encodeSnapshotId :: Encode SnapshotId where encode = genericEncode options



-- | <p> Too many requests have been received for this AWS account in too short a time. The request should be retried after some time delay. </p>
newtype TooManyRequestsException = TooManyRequestsException 
  { "retryAfterSeconds" :: Maybe (ErrorMessage)
  , "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where decode = genericDecode options
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where encode = genericEncode options

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: TooManyRequestsException
newTooManyRequestsException  = TooManyRequestsException { "message": Nothing, "retryAfterSeconds": Nothing }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ( { "retryAfterSeconds" :: Maybe (ErrorMessage) , "message" :: Maybe (ErrorMessage) } -> {"retryAfterSeconds" :: Maybe (ErrorMessage) , "message" :: Maybe (ErrorMessage) } ) -> TooManyRequestsException
newTooManyRequestsException'  customize = (TooManyRequestsException <<< customize) { "message": Nothing, "retryAfterSeconds": Nothing }



-- | <p> Credentials of the caller are insufficient to authorize the request. </p>
newtype UnauthorizedException = UnauthorizedException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeUnauthorizedException :: Newtype UnauthorizedException _
derive instance repGenericUnauthorizedException :: Generic UnauthorizedException _
instance showUnauthorizedException :: Show UnauthorizedException where show = genericShow
instance decodeUnauthorizedException :: Decode UnauthorizedException where decode = genericDecode options
instance encodeUnauthorizedException :: Encode UnauthorizedException where encode = genericEncode options

-- | Constructs UnauthorizedException from required parameters
newUnauthorizedException :: UnauthorizedException
newUnauthorizedException  = UnauthorizedException { "message": Nothing }

-- | Constructs UnauthorizedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnauthorizedException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> UnauthorizedException
newUnauthorizedException'  customize = (UnauthorizedException <<< customize) { "message": Nothing }



-- | <p> Request structure used for requests to update project configuration. </p>
newtype UpdateProjectRequest = UpdateProjectRequest 
  { "contents" :: Maybe (Contents)
  , "projectId" :: (ProjectId)
  }
derive instance newtypeUpdateProjectRequest :: Newtype UpdateProjectRequest _
derive instance repGenericUpdateProjectRequest :: Generic UpdateProjectRequest _
instance showUpdateProjectRequest :: Show UpdateProjectRequest where show = genericShow
instance decodeUpdateProjectRequest :: Decode UpdateProjectRequest where decode = genericDecode options
instance encodeUpdateProjectRequest :: Encode UpdateProjectRequest where encode = genericEncode options

-- | Constructs UpdateProjectRequest from required parameters
newUpdateProjectRequest :: ProjectId -> UpdateProjectRequest
newUpdateProjectRequest _projectId = UpdateProjectRequest { "projectId": _projectId, "contents": Nothing }

-- | Constructs UpdateProjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateProjectRequest' :: ProjectId -> ( { "contents" :: Maybe (Contents) , "projectId" :: (ProjectId) } -> {"contents" :: Maybe (Contents) , "projectId" :: (ProjectId) } ) -> UpdateProjectRequest
newUpdateProjectRequest' _projectId customize = (UpdateProjectRequest <<< customize) { "projectId": _projectId, "contents": Nothing }



-- | <p> Result structure used for requests to updated project configuration. </p>
newtype UpdateProjectResult = UpdateProjectResult 
  { "details" :: Maybe (ProjectDetails)
  }
derive instance newtypeUpdateProjectResult :: Newtype UpdateProjectResult _
derive instance repGenericUpdateProjectResult :: Generic UpdateProjectResult _
instance showUpdateProjectResult :: Show UpdateProjectResult where show = genericShow
instance decodeUpdateProjectResult :: Decode UpdateProjectResult where decode = genericDecode options
instance encodeUpdateProjectResult :: Encode UpdateProjectResult where encode = genericEncode options

-- | Constructs UpdateProjectResult from required parameters
newUpdateProjectResult :: UpdateProjectResult
newUpdateProjectResult  = UpdateProjectResult { "details": Nothing }

-- | Constructs UpdateProjectResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateProjectResult' :: ( { "details" :: Maybe (ProjectDetails) } -> {"details" :: Maybe (ProjectDetails) } ) -> UpdateProjectResult
newUpdateProjectResult'  customize = (UpdateProjectResult <<< customize) { "details": Nothing }

