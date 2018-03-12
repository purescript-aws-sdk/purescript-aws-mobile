

-- | <p> AWS Mobile Service provides mobile app and website developers with capabilities required to configure AWS resources and bootstrap their developer desktop projects with the necessary SDKs, constants, tools and samples to make use of those resources. </p>
module AWS.Mobile where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types


-- | <p> Creates an AWS Mobile Hub project. </p>
createProject :: forall eff. CreateProjectRequest -> Aff (exception :: EXCEPTION | eff) CreateProjectResult
createProject = Request.request service method  where
    service = Request.ServiceName "Mobile"
    method = Request.MethodName "createProject"


-- | <p> Delets a project in AWS Mobile Hub. </p>
deleteProject :: forall eff. DeleteProjectRequest -> Aff (exception :: EXCEPTION | eff) DeleteProjectResult
deleteProject = Request.request service method  where
    service = Request.ServiceName "Mobile"
    method = Request.MethodName "deleteProject"


-- | <p> Get the bundle details for the requested bundle id. </p>
describeBundle :: forall eff. DescribeBundleRequest -> Aff (exception :: EXCEPTION | eff) DescribeBundleResult
describeBundle = Request.request service method  where
    service = Request.ServiceName "Mobile"
    method = Request.MethodName "describeBundle"


-- | <p> Gets details about a project in AWS Mobile Hub. </p>
describeProject :: forall eff. DescribeProjectRequest -> Aff (exception :: EXCEPTION | eff) DescribeProjectResult
describeProject = Request.request service method  where
    service = Request.ServiceName "Mobile"
    method = Request.MethodName "describeProject"


-- | <p> Generates customized software development kit (SDK) and or tool packages used to integrate mobile web or mobile app clients with backend AWS resources. </p>
exportBundle :: forall eff. ExportBundleRequest -> Aff (exception :: EXCEPTION | eff) ExportBundleResult
exportBundle = Request.request service method  where
    service = Request.ServiceName "Mobile"
    method = Request.MethodName "exportBundle"


-- | <p> Exports project configuration to a snapshot which can be downloaded and shared. Note that mobile app push credentials are encrypted in exported projects, so they can only be shared successfully within the same AWS account. </p>
exportProject :: forall eff. ExportProjectRequest -> Aff (exception :: EXCEPTION | eff) ExportProjectResult
exportProject = Request.request service method  where
    service = Request.ServiceName "Mobile"
    method = Request.MethodName "exportProject"


-- | <p> List all available bundles. </p>
listBundles :: forall eff. ListBundlesRequest -> Aff (exception :: EXCEPTION | eff) ListBundlesResult
listBundles = Request.request service method  where
    service = Request.ServiceName "Mobile"
    method = Request.MethodName "listBundles"


-- | <p> Lists projects in AWS Mobile Hub. </p>
listProjects :: forall eff. ListProjectsRequest -> Aff (exception :: EXCEPTION | eff) ListProjectsResult
listProjects = Request.request service method  where
    service = Request.ServiceName "Mobile"
    method = Request.MethodName "listProjects"


-- | <p> Update an existing project. </p>
updateProject :: forall eff. UpdateProjectRequest -> Aff (exception :: EXCEPTION | eff) UpdateProjectResult
updateProject = Request.request service method  where
    service = Request.ServiceName "Mobile"
    method = Request.MethodName "updateProject"


-- | <p> Account Action is required in order to continue the request. </p>
newtype AccountActionRequiredException = AccountActionRequiredException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeAccountActionRequiredException :: Newtype AccountActionRequiredException _
derive instance repGenericAccountActionRequiredException :: Generic AccountActionRequiredException _
instance showAccountActionRequiredException :: Show AccountActionRequiredException where
  show = genericShow
instance decodeAccountActionRequiredException :: Decode AccountActionRequiredException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccountActionRequiredException :: Encode AccountActionRequiredException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AccountActionRequiredException from required parameters
newAccountActionRequiredException :: AccountActionRequiredException
newAccountActionRequiredException  = AccountActionRequiredException { "message": (NullOrUndefined Nothing) }

-- | Constructs AccountActionRequiredException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccountActionRequiredException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> AccountActionRequiredException
newAccountActionRequiredException'  customize = (AccountActionRequiredException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p> Key part of key-value attribute pairs. </p>
newtype AttributeKey = AttributeKey String
derive instance newtypeAttributeKey :: Newtype AttributeKey _
derive instance repGenericAttributeKey :: Generic AttributeKey _
instance showAttributeKey :: Show AttributeKey where
  show = genericShow
instance decodeAttributeKey :: Decode AttributeKey where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttributeKey :: Encode AttributeKey where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Value part of key-value attribute pairs. </p>
newtype AttributeValue = AttributeValue String
derive instance newtypeAttributeValue :: Newtype AttributeValue _
derive instance repGenericAttributeValue :: Generic AttributeValue _
instance showAttributeValue :: Show AttributeValue where
  show = genericShow
instance decodeAttributeValue :: Decode AttributeValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttributeValue :: Encode AttributeValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Key-value attribute pairs. </p>
newtype Attributes = Attributes (StrMap.StrMap AttributeValue)
derive instance newtypeAttributes :: Newtype Attributes _
derive instance repGenericAttributes :: Generic Attributes _
instance showAttributes :: Show Attributes where
  show = genericShow
instance decodeAttributes :: Decode Attributes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttributes :: Encode Attributes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> The request cannot be processed because some parameter is not valid or the project state prevents the operation from being performed. </p>
newtype BadRequestException = BadRequestException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeBadRequestException :: Newtype BadRequestException _
derive instance repGenericBadRequestException :: Generic BadRequestException _
instance showBadRequestException :: Show BadRequestException where
  show = genericShow
instance decodeBadRequestException :: Decode BadRequestException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBadRequestException :: Encode BadRequestException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BadRequestException from required parameters
newBadRequestException :: BadRequestException
newBadRequestException  = BadRequestException { "message": (NullOrUndefined Nothing) }

-- | Constructs BadRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBadRequestException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> BadRequestException
newBadRequestException'  customize = (BadRequestException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p> Description of the download bundle. </p>
newtype BundleDescription = BundleDescription String
derive instance newtypeBundleDescription :: Newtype BundleDescription _
derive instance repGenericBundleDescription :: Generic BundleDescription _
instance showBundleDescription :: Show BundleDescription where
  show = genericShow
instance decodeBundleDescription :: Decode BundleDescription where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBundleDescription :: Encode BundleDescription where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> The details of the bundle. </p>
newtype BundleDetails = BundleDetails 
  { "bundleId" :: NullOrUndefined.NullOrUndefined (BundleId)
  , "title" :: NullOrUndefined.NullOrUndefined (BundleTitle)
  , "version" :: NullOrUndefined.NullOrUndefined (BundleVersion)
  , "description" :: NullOrUndefined.NullOrUndefined (BundleDescription)
  , "iconUrl" :: NullOrUndefined.NullOrUndefined (IconUrl)
  , "availablePlatforms" :: NullOrUndefined.NullOrUndefined (Platforms)
  }
derive instance newtypeBundleDetails :: Newtype BundleDetails _
derive instance repGenericBundleDetails :: Generic BundleDetails _
instance showBundleDetails :: Show BundleDetails where
  show = genericShow
instance decodeBundleDetails :: Decode BundleDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBundleDetails :: Encode BundleDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BundleDetails from required parameters
newBundleDetails :: BundleDetails
newBundleDetails  = BundleDetails { "availablePlatforms": (NullOrUndefined Nothing), "bundleId": (NullOrUndefined Nothing), "description": (NullOrUndefined Nothing), "iconUrl": (NullOrUndefined Nothing), "title": (NullOrUndefined Nothing), "version": (NullOrUndefined Nothing) }

-- | Constructs BundleDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBundleDetails' :: ( { "bundleId" :: NullOrUndefined.NullOrUndefined (BundleId) , "title" :: NullOrUndefined.NullOrUndefined (BundleTitle) , "version" :: NullOrUndefined.NullOrUndefined (BundleVersion) , "description" :: NullOrUndefined.NullOrUndefined (BundleDescription) , "iconUrl" :: NullOrUndefined.NullOrUndefined (IconUrl) , "availablePlatforms" :: NullOrUndefined.NullOrUndefined (Platforms) } -> {"bundleId" :: NullOrUndefined.NullOrUndefined (BundleId) , "title" :: NullOrUndefined.NullOrUndefined (BundleTitle) , "version" :: NullOrUndefined.NullOrUndefined (BundleVersion) , "description" :: NullOrUndefined.NullOrUndefined (BundleDescription) , "iconUrl" :: NullOrUndefined.NullOrUndefined (IconUrl) , "availablePlatforms" :: NullOrUndefined.NullOrUndefined (Platforms) } ) -> BundleDetails
newBundleDetails'  customize = (BundleDetails <<< customize) { "availablePlatforms": (NullOrUndefined Nothing), "bundleId": (NullOrUndefined Nothing), "description": (NullOrUndefined Nothing), "iconUrl": (NullOrUndefined Nothing), "title": (NullOrUndefined Nothing), "version": (NullOrUndefined Nothing) }



-- | <p> Unique bundle identifier. </p>
newtype BundleId = BundleId String
derive instance newtypeBundleId :: Newtype BundleId _
derive instance repGenericBundleId :: Generic BundleId _
instance showBundleId :: Show BundleId where
  show = genericShow
instance decodeBundleId :: Decode BundleId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBundleId :: Encode BundleId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> A list of bundles. </p>
newtype BundleList = BundleList (Array BundleDetails)
derive instance newtypeBundleList :: Newtype BundleList _
derive instance repGenericBundleList :: Generic BundleList _
instance showBundleList :: Show BundleList where
  show = genericShow
instance decodeBundleList :: Decode BundleList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBundleList :: Encode BundleList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Title of the download bundle. </p>
newtype BundleTitle = BundleTitle String
derive instance newtypeBundleTitle :: Newtype BundleTitle _
derive instance repGenericBundleTitle :: Generic BundleTitle _
instance showBundleTitle :: Show BundleTitle where
  show = genericShow
instance decodeBundleTitle :: Decode BundleTitle where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBundleTitle :: Encode BundleTitle where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Version of the download bundle. </p>
newtype BundleVersion = BundleVersion String
derive instance newtypeBundleVersion :: Newtype BundleVersion _
derive instance repGenericBundleVersion :: Generic BundleVersion _
instance showBundleVersion :: Show BundleVersion where
  show = genericShow
instance decodeBundleVersion :: Decode BundleVersion where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBundleVersion :: Encode BundleVersion where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ConsoleUrl = ConsoleUrl String
derive instance newtypeConsoleUrl :: Newtype ConsoleUrl _
derive instance repGenericConsoleUrl :: Generic ConsoleUrl _
instance showConsoleUrl :: Show ConsoleUrl where
  show = genericShow
instance decodeConsoleUrl :: Decode ConsoleUrl where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConsoleUrl :: Encode ConsoleUrl where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Binary file data. </p>
newtype Contents = Contents String
derive instance newtypeContents :: Newtype Contents _
derive instance repGenericContents :: Generic Contents _
instance showContents :: Show Contents where
  show = genericShow
instance decodeContents :: Decode Contents where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContents :: Encode Contents where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Request structure used to request a project be created. </p>
newtype CreateProjectRequest = CreateProjectRequest 
  { "name" :: NullOrUndefined.NullOrUndefined (ProjectName)
  , "region" :: NullOrUndefined.NullOrUndefined (ProjectRegion)
  , "contents" :: NullOrUndefined.NullOrUndefined (Contents)
  , "snapshotId" :: NullOrUndefined.NullOrUndefined (SnapshotId)
  }
derive instance newtypeCreateProjectRequest :: Newtype CreateProjectRequest _
derive instance repGenericCreateProjectRequest :: Generic CreateProjectRequest _
instance showCreateProjectRequest :: Show CreateProjectRequest where
  show = genericShow
instance decodeCreateProjectRequest :: Decode CreateProjectRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateProjectRequest :: Encode CreateProjectRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateProjectRequest from required parameters
newCreateProjectRequest :: CreateProjectRequest
newCreateProjectRequest  = CreateProjectRequest { "contents": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "region": (NullOrUndefined Nothing), "snapshotId": (NullOrUndefined Nothing) }

-- | Constructs CreateProjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateProjectRequest' :: ( { "name" :: NullOrUndefined.NullOrUndefined (ProjectName) , "region" :: NullOrUndefined.NullOrUndefined (ProjectRegion) , "contents" :: NullOrUndefined.NullOrUndefined (Contents) , "snapshotId" :: NullOrUndefined.NullOrUndefined (SnapshotId) } -> {"name" :: NullOrUndefined.NullOrUndefined (ProjectName) , "region" :: NullOrUndefined.NullOrUndefined (ProjectRegion) , "contents" :: NullOrUndefined.NullOrUndefined (Contents) , "snapshotId" :: NullOrUndefined.NullOrUndefined (SnapshotId) } ) -> CreateProjectRequest
newCreateProjectRequest'  customize = (CreateProjectRequest <<< customize) { "contents": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "region": (NullOrUndefined Nothing), "snapshotId": (NullOrUndefined Nothing) }



-- | <p> Result structure used in response to a request to create a project. </p>
newtype CreateProjectResult = CreateProjectResult 
  { "details" :: NullOrUndefined.NullOrUndefined (ProjectDetails)
  }
derive instance newtypeCreateProjectResult :: Newtype CreateProjectResult _
derive instance repGenericCreateProjectResult :: Generic CreateProjectResult _
instance showCreateProjectResult :: Show CreateProjectResult where
  show = genericShow
instance decodeCreateProjectResult :: Decode CreateProjectResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateProjectResult :: Encode CreateProjectResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateProjectResult from required parameters
newCreateProjectResult :: CreateProjectResult
newCreateProjectResult  = CreateProjectResult { "details": (NullOrUndefined Nothing) }

-- | Constructs CreateProjectResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateProjectResult' :: ( { "details" :: NullOrUndefined.NullOrUndefined (ProjectDetails) } -> {"details" :: NullOrUndefined.NullOrUndefined (ProjectDetails) } ) -> CreateProjectResult
newCreateProjectResult'  customize = (CreateProjectResult <<< customize) { "details": (NullOrUndefined Nothing) }



newtype Date = Date Types.Timestamp
derive instance newtypeDate :: Newtype Date _
derive instance repGenericDate :: Generic Date _
instance showDate :: Show Date where
  show = genericShow
instance decodeDate :: Decode Date where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDate :: Encode Date where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Request structure used to request a project be deleted. </p>
newtype DeleteProjectRequest = DeleteProjectRequest 
  { "projectId" :: (ProjectId)
  }
derive instance newtypeDeleteProjectRequest :: Newtype DeleteProjectRequest _
derive instance repGenericDeleteProjectRequest :: Generic DeleteProjectRequest _
instance showDeleteProjectRequest :: Show DeleteProjectRequest where
  show = genericShow
instance decodeDeleteProjectRequest :: Decode DeleteProjectRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteProjectRequest :: Encode DeleteProjectRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteProjectRequest from required parameters
newDeleteProjectRequest :: ProjectId -> DeleteProjectRequest
newDeleteProjectRequest _projectId = DeleteProjectRequest { "projectId": _projectId }

-- | Constructs DeleteProjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteProjectRequest' :: ProjectId -> ( { "projectId" :: (ProjectId) } -> {"projectId" :: (ProjectId) } ) -> DeleteProjectRequest
newDeleteProjectRequest' _projectId customize = (DeleteProjectRequest <<< customize) { "projectId": _projectId }



-- | <p> Result structure used in response to request to delete a project. </p>
newtype DeleteProjectResult = DeleteProjectResult 
  { "deletedResources" :: NullOrUndefined.NullOrUndefined (Resources)
  , "orphanedResources" :: NullOrUndefined.NullOrUndefined (Resources)
  }
derive instance newtypeDeleteProjectResult :: Newtype DeleteProjectResult _
derive instance repGenericDeleteProjectResult :: Generic DeleteProjectResult _
instance showDeleteProjectResult :: Show DeleteProjectResult where
  show = genericShow
instance decodeDeleteProjectResult :: Decode DeleteProjectResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteProjectResult :: Encode DeleteProjectResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteProjectResult from required parameters
newDeleteProjectResult :: DeleteProjectResult
newDeleteProjectResult  = DeleteProjectResult { "deletedResources": (NullOrUndefined Nothing), "orphanedResources": (NullOrUndefined Nothing) }

-- | Constructs DeleteProjectResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteProjectResult' :: ( { "deletedResources" :: NullOrUndefined.NullOrUndefined (Resources) , "orphanedResources" :: NullOrUndefined.NullOrUndefined (Resources) } -> {"deletedResources" :: NullOrUndefined.NullOrUndefined (Resources) , "orphanedResources" :: NullOrUndefined.NullOrUndefined (Resources) } ) -> DeleteProjectResult
newDeleteProjectResult'  customize = (DeleteProjectResult <<< customize) { "deletedResources": (NullOrUndefined Nothing), "orphanedResources": (NullOrUndefined Nothing) }



-- | <p> Request structure to request the details of a specific bundle. </p>
newtype DescribeBundleRequest = DescribeBundleRequest 
  { "bundleId" :: (BundleId)
  }
derive instance newtypeDescribeBundleRequest :: Newtype DescribeBundleRequest _
derive instance repGenericDescribeBundleRequest :: Generic DescribeBundleRequest _
instance showDescribeBundleRequest :: Show DescribeBundleRequest where
  show = genericShow
instance decodeDescribeBundleRequest :: Decode DescribeBundleRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeBundleRequest :: Encode DescribeBundleRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeBundleRequest from required parameters
newDescribeBundleRequest :: BundleId -> DescribeBundleRequest
newDescribeBundleRequest _bundleId = DescribeBundleRequest { "bundleId": _bundleId }

-- | Constructs DescribeBundleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBundleRequest' :: BundleId -> ( { "bundleId" :: (BundleId) } -> {"bundleId" :: (BundleId) } ) -> DescribeBundleRequest
newDescribeBundleRequest' _bundleId customize = (DescribeBundleRequest <<< customize) { "bundleId": _bundleId }



-- | <p> Result structure contains the details of the bundle. </p>
newtype DescribeBundleResult = DescribeBundleResult 
  { "details" :: NullOrUndefined.NullOrUndefined (BundleDetails)
  }
derive instance newtypeDescribeBundleResult :: Newtype DescribeBundleResult _
derive instance repGenericDescribeBundleResult :: Generic DescribeBundleResult _
instance showDescribeBundleResult :: Show DescribeBundleResult where
  show = genericShow
instance decodeDescribeBundleResult :: Decode DescribeBundleResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeBundleResult :: Encode DescribeBundleResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeBundleResult from required parameters
newDescribeBundleResult :: DescribeBundleResult
newDescribeBundleResult  = DescribeBundleResult { "details": (NullOrUndefined Nothing) }

-- | Constructs DescribeBundleResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBundleResult' :: ( { "details" :: NullOrUndefined.NullOrUndefined (BundleDetails) } -> {"details" :: NullOrUndefined.NullOrUndefined (BundleDetails) } ) -> DescribeBundleResult
newDescribeBundleResult'  customize = (DescribeBundleResult <<< customize) { "details": (NullOrUndefined Nothing) }



-- | <p> Request structure used to request details about a project. </p>
newtype DescribeProjectRequest = DescribeProjectRequest 
  { "projectId" :: (ProjectId)
  , "syncFromResources" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeDescribeProjectRequest :: Newtype DescribeProjectRequest _
derive instance repGenericDescribeProjectRequest :: Generic DescribeProjectRequest _
instance showDescribeProjectRequest :: Show DescribeProjectRequest where
  show = genericShow
instance decodeDescribeProjectRequest :: Decode DescribeProjectRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeProjectRequest :: Encode DescribeProjectRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeProjectRequest from required parameters
newDescribeProjectRequest :: ProjectId -> DescribeProjectRequest
newDescribeProjectRequest _projectId = DescribeProjectRequest { "projectId": _projectId, "syncFromResources": (NullOrUndefined Nothing) }

-- | Constructs DescribeProjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeProjectRequest' :: ProjectId -> ( { "projectId" :: (ProjectId) , "syncFromResources" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"projectId" :: (ProjectId) , "syncFromResources" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> DescribeProjectRequest
newDescribeProjectRequest' _projectId customize = (DescribeProjectRequest <<< customize) { "projectId": _projectId, "syncFromResources": (NullOrUndefined Nothing) }



-- | <p> Result structure used for requests of project details. </p>
newtype DescribeProjectResult = DescribeProjectResult 
  { "details" :: NullOrUndefined.NullOrUndefined (ProjectDetails)
  }
derive instance newtypeDescribeProjectResult :: Newtype DescribeProjectResult _
derive instance repGenericDescribeProjectResult :: Generic DescribeProjectResult _
instance showDescribeProjectResult :: Show DescribeProjectResult where
  show = genericShow
instance decodeDescribeProjectResult :: Decode DescribeProjectResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeProjectResult :: Encode DescribeProjectResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeProjectResult from required parameters
newDescribeProjectResult :: DescribeProjectResult
newDescribeProjectResult  = DescribeProjectResult { "details": (NullOrUndefined Nothing) }

-- | Constructs DescribeProjectResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeProjectResult' :: ( { "details" :: NullOrUndefined.NullOrUndefined (ProjectDetails) } -> {"details" :: NullOrUndefined.NullOrUndefined (ProjectDetails) } ) -> DescribeProjectResult
newDescribeProjectResult'  customize = (DescribeProjectResult <<< customize) { "details": (NullOrUndefined Nothing) }



-- | <p> The download Url. </p>
newtype DownloadUrl = DownloadUrl String
derive instance newtypeDownloadUrl :: Newtype DownloadUrl _
derive instance repGenericDownloadUrl :: Generic DownloadUrl _
instance showDownloadUrl :: Show DownloadUrl where
  show = genericShow
instance decodeDownloadUrl :: Decode DownloadUrl where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDownloadUrl :: Encode DownloadUrl where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> The Exception Error Message. </p>
newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where
  show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage :: Encode ErrorMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Request structure used to request generation of custom SDK and tool packages required to integrate mobile web or app clients with backed AWS resources. </p>
newtype ExportBundleRequest = ExportBundleRequest 
  { "bundleId" :: (BundleId)
  , "projectId" :: NullOrUndefined.NullOrUndefined (ProjectId)
  , "platform" :: NullOrUndefined.NullOrUndefined (Platform)
  }
derive instance newtypeExportBundleRequest :: Newtype ExportBundleRequest _
derive instance repGenericExportBundleRequest :: Generic ExportBundleRequest _
instance showExportBundleRequest :: Show ExportBundleRequest where
  show = genericShow
instance decodeExportBundleRequest :: Decode ExportBundleRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExportBundleRequest :: Encode ExportBundleRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ExportBundleRequest from required parameters
newExportBundleRequest :: BundleId -> ExportBundleRequest
newExportBundleRequest _bundleId = ExportBundleRequest { "bundleId": _bundleId, "platform": (NullOrUndefined Nothing), "projectId": (NullOrUndefined Nothing) }

-- | Constructs ExportBundleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExportBundleRequest' :: BundleId -> ( { "bundleId" :: (BundleId) , "projectId" :: NullOrUndefined.NullOrUndefined (ProjectId) , "platform" :: NullOrUndefined.NullOrUndefined (Platform) } -> {"bundleId" :: (BundleId) , "projectId" :: NullOrUndefined.NullOrUndefined (ProjectId) , "platform" :: NullOrUndefined.NullOrUndefined (Platform) } ) -> ExportBundleRequest
newExportBundleRequest' _bundleId customize = (ExportBundleRequest <<< customize) { "bundleId": _bundleId, "platform": (NullOrUndefined Nothing), "projectId": (NullOrUndefined Nothing) }



-- | <p> Result structure which contains link to download custom-generated SDK and tool packages used to integrate mobile web or app clients with backed AWS resources. </p>
newtype ExportBundleResult = ExportBundleResult 
  { "downloadUrl" :: NullOrUndefined.NullOrUndefined (DownloadUrl)
  }
derive instance newtypeExportBundleResult :: Newtype ExportBundleResult _
derive instance repGenericExportBundleResult :: Generic ExportBundleResult _
instance showExportBundleResult :: Show ExportBundleResult where
  show = genericShow
instance decodeExportBundleResult :: Decode ExportBundleResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExportBundleResult :: Encode ExportBundleResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ExportBundleResult from required parameters
newExportBundleResult :: ExportBundleResult
newExportBundleResult  = ExportBundleResult { "downloadUrl": (NullOrUndefined Nothing) }

-- | Constructs ExportBundleResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExportBundleResult' :: ( { "downloadUrl" :: NullOrUndefined.NullOrUndefined (DownloadUrl) } -> {"downloadUrl" :: NullOrUndefined.NullOrUndefined (DownloadUrl) } ) -> ExportBundleResult
newExportBundleResult'  customize = (ExportBundleResult <<< customize) { "downloadUrl": (NullOrUndefined Nothing) }



-- | <p> Request structure used in requests to export project configuration details. </p>
newtype ExportProjectRequest = ExportProjectRequest 
  { "projectId" :: (ProjectId)
  }
derive instance newtypeExportProjectRequest :: Newtype ExportProjectRequest _
derive instance repGenericExportProjectRequest :: Generic ExportProjectRequest _
instance showExportProjectRequest :: Show ExportProjectRequest where
  show = genericShow
instance decodeExportProjectRequest :: Decode ExportProjectRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExportProjectRequest :: Encode ExportProjectRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ExportProjectRequest from required parameters
newExportProjectRequest :: ProjectId -> ExportProjectRequest
newExportProjectRequest _projectId = ExportProjectRequest { "projectId": _projectId }

-- | Constructs ExportProjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExportProjectRequest' :: ProjectId -> ( { "projectId" :: (ProjectId) } -> {"projectId" :: (ProjectId) } ) -> ExportProjectRequest
newExportProjectRequest' _projectId customize = (ExportProjectRequest <<< customize) { "projectId": _projectId }



-- | <p> Result structure used for requests to export project configuration details. </p>
newtype ExportProjectResult = ExportProjectResult 
  { "downloadUrl" :: NullOrUndefined.NullOrUndefined (DownloadUrl)
  , "shareUrl" :: NullOrUndefined.NullOrUndefined (ShareUrl)
  , "snapshotId" :: NullOrUndefined.NullOrUndefined (SnapshotId)
  }
derive instance newtypeExportProjectResult :: Newtype ExportProjectResult _
derive instance repGenericExportProjectResult :: Generic ExportProjectResult _
instance showExportProjectResult :: Show ExportProjectResult where
  show = genericShow
instance decodeExportProjectResult :: Decode ExportProjectResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExportProjectResult :: Encode ExportProjectResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ExportProjectResult from required parameters
newExportProjectResult :: ExportProjectResult
newExportProjectResult  = ExportProjectResult { "downloadUrl": (NullOrUndefined Nothing), "shareUrl": (NullOrUndefined Nothing), "snapshotId": (NullOrUndefined Nothing) }

-- | Constructs ExportProjectResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExportProjectResult' :: ( { "downloadUrl" :: NullOrUndefined.NullOrUndefined (DownloadUrl) , "shareUrl" :: NullOrUndefined.NullOrUndefined (ShareUrl) , "snapshotId" :: NullOrUndefined.NullOrUndefined (SnapshotId) } -> {"downloadUrl" :: NullOrUndefined.NullOrUndefined (DownloadUrl) , "shareUrl" :: NullOrUndefined.NullOrUndefined (ShareUrl) , "snapshotId" :: NullOrUndefined.NullOrUndefined (SnapshotId) } ) -> ExportProjectResult
newExportProjectResult'  customize = (ExportProjectResult <<< customize) { "downloadUrl": (NullOrUndefined Nothing), "shareUrl": (NullOrUndefined Nothing), "snapshotId": (NullOrUndefined Nothing) }



-- | <p> Identifies which feature in AWS Mobile Hub is associated with this AWS resource. </p>
newtype Feature = Feature String
derive instance newtypeFeature :: Newtype Feature _
derive instance repGenericFeature :: Generic Feature _
instance showFeature :: Show Feature where
  show = genericShow
instance decodeFeature :: Decode Feature where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFeature :: Encode Feature where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Icon for the download bundle. </p>
newtype IconUrl = IconUrl String
derive instance newtypeIconUrl :: Newtype IconUrl _
derive instance repGenericIconUrl :: Generic IconUrl _
instance showIconUrl :: Show IconUrl where
  show = genericShow
instance decodeIconUrl :: Decode IconUrl where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeIconUrl :: Encode IconUrl where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> The service has encountered an unexpected error condition which prevents it from servicing the request. </p>
newtype InternalFailureException = InternalFailureException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInternalFailureException :: Newtype InternalFailureException _
derive instance repGenericInternalFailureException :: Generic InternalFailureException _
instance showInternalFailureException :: Show InternalFailureException where
  show = genericShow
instance decodeInternalFailureException :: Decode InternalFailureException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalFailureException :: Encode InternalFailureException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalFailureException from required parameters
newInternalFailureException :: InternalFailureException
newInternalFailureException  = InternalFailureException { "message": (NullOrUndefined Nothing) }

-- | Constructs InternalFailureException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalFailureException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InternalFailureException
newInternalFailureException'  customize = (InternalFailureException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p> There are too many AWS Mobile Hub projects in the account or the account has exceeded the maximum number of resources in some AWS service. You should create another sub-account using AWS Organizations or remove some resources and retry your request. </p>
newtype LimitExceededException = LimitExceededException 
  { "retryAfterSeconds" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  , "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where
  show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLimitExceededException :: Encode LimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": (NullOrUndefined Nothing), "retryAfterSeconds": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "retryAfterSeconds" :: NullOrUndefined.NullOrUndefined (ErrorMessage) , "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"retryAfterSeconds" :: NullOrUndefined.NullOrUndefined (ErrorMessage) , "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": (NullOrUndefined Nothing), "retryAfterSeconds": (NullOrUndefined Nothing) }



-- | <p> Request structure to request all available bundles. </p>
newtype ListBundlesRequest = ListBundlesRequest 
  { "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListBundlesRequest :: Newtype ListBundlesRequest _
derive instance repGenericListBundlesRequest :: Generic ListBundlesRequest _
instance showListBundlesRequest :: Show ListBundlesRequest where
  show = genericShow
instance decodeListBundlesRequest :: Decode ListBundlesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListBundlesRequest :: Encode ListBundlesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListBundlesRequest from required parameters
newListBundlesRequest :: ListBundlesRequest
newListBundlesRequest  = ListBundlesRequest { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListBundlesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListBundlesRequest' :: ( { "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListBundlesRequest
newListBundlesRequest'  customize = (ListBundlesRequest <<< customize) { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



-- | <p> Result structure contains a list of all available bundles with details. </p>
newtype ListBundlesResult = ListBundlesResult 
  { "bundleList" :: NullOrUndefined.NullOrUndefined (BundleList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListBundlesResult :: Newtype ListBundlesResult _
derive instance repGenericListBundlesResult :: Generic ListBundlesResult _
instance showListBundlesResult :: Show ListBundlesResult where
  show = genericShow
instance decodeListBundlesResult :: Decode ListBundlesResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListBundlesResult :: Encode ListBundlesResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListBundlesResult from required parameters
newListBundlesResult :: ListBundlesResult
newListBundlesResult  = ListBundlesResult { "bundleList": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListBundlesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListBundlesResult' :: ( { "bundleList" :: NullOrUndefined.NullOrUndefined (BundleList) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"bundleList" :: NullOrUndefined.NullOrUndefined (BundleList) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListBundlesResult
newListBundlesResult'  customize = (ListBundlesResult <<< customize) { "bundleList": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



-- | <p> Request structure used to request projects list in AWS Mobile Hub. </p>
newtype ListProjectsRequest = ListProjectsRequest 
  { "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListProjectsRequest :: Newtype ListProjectsRequest _
derive instance repGenericListProjectsRequest :: Generic ListProjectsRequest _
instance showListProjectsRequest :: Show ListProjectsRequest where
  show = genericShow
instance decodeListProjectsRequest :: Decode ListProjectsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListProjectsRequest :: Encode ListProjectsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListProjectsRequest from required parameters
newListProjectsRequest :: ListProjectsRequest
newListProjectsRequest  = ListProjectsRequest { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListProjectsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListProjectsRequest' :: ( { "maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"maxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListProjectsRequest
newListProjectsRequest'  customize = (ListProjectsRequest <<< customize) { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



-- | <p> Result structure used for requests to list projects in AWS Mobile Hub. </p>
newtype ListProjectsResult = ListProjectsResult 
  { "projects" :: NullOrUndefined.NullOrUndefined (ProjectSummaries)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListProjectsResult :: Newtype ListProjectsResult _
derive instance repGenericListProjectsResult :: Generic ListProjectsResult _
instance showListProjectsResult :: Show ListProjectsResult where
  show = genericShow
instance decodeListProjectsResult :: Decode ListProjectsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListProjectsResult :: Encode ListProjectsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListProjectsResult from required parameters
newListProjectsResult :: ListProjectsResult
newListProjectsResult  = ListProjectsResult { "nextToken": (NullOrUndefined Nothing), "projects": (NullOrUndefined Nothing) }

-- | Constructs ListProjectsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListProjectsResult' :: ( { "projects" :: NullOrUndefined.NullOrUndefined (ProjectSummaries) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"projects" :: NullOrUndefined.NullOrUndefined (ProjectSummaries) , "nextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListProjectsResult
newListProjectsResult'  customize = (ListProjectsResult <<< customize) { "nextToken": (NullOrUndefined Nothing), "projects": (NullOrUndefined Nothing) }



-- | <p> Maximum number of records to list in a single response. </p>
newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where
  show = genericShow
instance decodeMaxResults :: Decode MaxResults where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResults :: Encode MaxResults where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Pagination token. Set to null to start listing records from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more entries. </p>
newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where
  show = genericShow
instance decodeNextToken :: Decode NextToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNextToken :: Encode NextToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> No entity can be found with the specified identifier. </p>
newtype NotFoundException = NotFoundException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where
  show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotFoundException :: Encode NotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p> Developer desktop or target mobile app or website platform. </p>
newtype Platform = Platform String
derive instance newtypePlatform :: Newtype Platform _
derive instance repGenericPlatform :: Generic Platform _
instance showPlatform :: Show Platform where
  show = genericShow
instance decodePlatform :: Decode Platform where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePlatform :: Encode Platform where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Developer desktop or mobile app or website platforms. </p>
newtype Platforms = Platforms (Array Platform)
derive instance newtypePlatforms :: Newtype Platforms _
derive instance repGenericPlatforms :: Generic Platforms _
instance showPlatforms :: Show Platforms where
  show = genericShow
instance decodePlatforms :: Decode Platforms where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePlatforms :: Encode Platforms where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Detailed information about an AWS Mobile Hub project. </p>
newtype ProjectDetails = ProjectDetails 
  { "name" :: NullOrUndefined.NullOrUndefined (ProjectName)
  , "projectId" :: NullOrUndefined.NullOrUndefined (ProjectId)
  , "region" :: NullOrUndefined.NullOrUndefined (ProjectRegion)
  , "state" :: NullOrUndefined.NullOrUndefined (ProjectState)
  , "createdDate" :: NullOrUndefined.NullOrUndefined (Date)
  , "lastUpdatedDate" :: NullOrUndefined.NullOrUndefined (Date)
  , "consoleUrl" :: NullOrUndefined.NullOrUndefined (ConsoleUrl)
  , "resources" :: NullOrUndefined.NullOrUndefined (Resources)
  }
derive instance newtypeProjectDetails :: Newtype ProjectDetails _
derive instance repGenericProjectDetails :: Generic ProjectDetails _
instance showProjectDetails :: Show ProjectDetails where
  show = genericShow
instance decodeProjectDetails :: Decode ProjectDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProjectDetails :: Encode ProjectDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ProjectDetails from required parameters
newProjectDetails :: ProjectDetails
newProjectDetails  = ProjectDetails { "consoleUrl": (NullOrUndefined Nothing), "createdDate": (NullOrUndefined Nothing), "lastUpdatedDate": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "projectId": (NullOrUndefined Nothing), "region": (NullOrUndefined Nothing), "resources": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing) }

-- | Constructs ProjectDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProjectDetails' :: ( { "name" :: NullOrUndefined.NullOrUndefined (ProjectName) , "projectId" :: NullOrUndefined.NullOrUndefined (ProjectId) , "region" :: NullOrUndefined.NullOrUndefined (ProjectRegion) , "state" :: NullOrUndefined.NullOrUndefined (ProjectState) , "createdDate" :: NullOrUndefined.NullOrUndefined (Date) , "lastUpdatedDate" :: NullOrUndefined.NullOrUndefined (Date) , "consoleUrl" :: NullOrUndefined.NullOrUndefined (ConsoleUrl) , "resources" :: NullOrUndefined.NullOrUndefined (Resources) } -> {"name" :: NullOrUndefined.NullOrUndefined (ProjectName) , "projectId" :: NullOrUndefined.NullOrUndefined (ProjectId) , "region" :: NullOrUndefined.NullOrUndefined (ProjectRegion) , "state" :: NullOrUndefined.NullOrUndefined (ProjectState) , "createdDate" :: NullOrUndefined.NullOrUndefined (Date) , "lastUpdatedDate" :: NullOrUndefined.NullOrUndefined (Date) , "consoleUrl" :: NullOrUndefined.NullOrUndefined (ConsoleUrl) , "resources" :: NullOrUndefined.NullOrUndefined (Resources) } ) -> ProjectDetails
newProjectDetails'  customize = (ProjectDetails <<< customize) { "consoleUrl": (NullOrUndefined Nothing), "createdDate": (NullOrUndefined Nothing), "lastUpdatedDate": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "projectId": (NullOrUndefined Nothing), "region": (NullOrUndefined Nothing), "resources": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing) }



-- | <p> Unique project identifier. </p>
newtype ProjectId = ProjectId String
derive instance newtypeProjectId :: Newtype ProjectId _
derive instance repGenericProjectId :: Generic ProjectId _
instance showProjectId :: Show ProjectId where
  show = genericShow
instance decodeProjectId :: Decode ProjectId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProjectId :: Encode ProjectId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Name of the project. </p>
newtype ProjectName = ProjectName String
derive instance newtypeProjectName :: Newtype ProjectName _
derive instance repGenericProjectName :: Generic ProjectName _
instance showProjectName :: Show ProjectName where
  show = genericShow
instance decodeProjectName :: Decode ProjectName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProjectName :: Encode ProjectName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Default region to use for AWS resource creation in the AWS Mobile Hub project. </p>
newtype ProjectRegion = ProjectRegion String
derive instance newtypeProjectRegion :: Newtype ProjectRegion _
derive instance repGenericProjectRegion :: Generic ProjectRegion _
instance showProjectRegion :: Show ProjectRegion where
  show = genericShow
instance decodeProjectRegion :: Decode ProjectRegion where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProjectRegion :: Encode ProjectRegion where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Synchronization state for a project. </p>
newtype ProjectState = ProjectState String
derive instance newtypeProjectState :: Newtype ProjectState _
derive instance repGenericProjectState :: Generic ProjectState _
instance showProjectState :: Show ProjectState where
  show = genericShow
instance decodeProjectState :: Decode ProjectState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProjectState :: Encode ProjectState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> List of projects. </p>
newtype ProjectSummaries = ProjectSummaries (Array ProjectSummary)
derive instance newtypeProjectSummaries :: Newtype ProjectSummaries _
derive instance repGenericProjectSummaries :: Generic ProjectSummaries _
instance showProjectSummaries :: Show ProjectSummaries where
  show = genericShow
instance decodeProjectSummaries :: Decode ProjectSummaries where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProjectSummaries :: Encode ProjectSummaries where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Summary information about an AWS Mobile Hub project. </p>
newtype ProjectSummary = ProjectSummary 
  { "name" :: NullOrUndefined.NullOrUndefined (ProjectName)
  , "projectId" :: NullOrUndefined.NullOrUndefined (ProjectId)
  }
derive instance newtypeProjectSummary :: Newtype ProjectSummary _
derive instance repGenericProjectSummary :: Generic ProjectSummary _
instance showProjectSummary :: Show ProjectSummary where
  show = genericShow
instance decodeProjectSummary :: Decode ProjectSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProjectSummary :: Encode ProjectSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ProjectSummary from required parameters
newProjectSummary :: ProjectSummary
newProjectSummary  = ProjectSummary { "name": (NullOrUndefined Nothing), "projectId": (NullOrUndefined Nothing) }

-- | Constructs ProjectSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProjectSummary' :: ( { "name" :: NullOrUndefined.NullOrUndefined (ProjectName) , "projectId" :: NullOrUndefined.NullOrUndefined (ProjectId) } -> {"name" :: NullOrUndefined.NullOrUndefined (ProjectName) , "projectId" :: NullOrUndefined.NullOrUndefined (ProjectId) } ) -> ProjectSummary
newProjectSummary'  customize = (ProjectSummary <<< customize) { "name": (NullOrUndefined Nothing), "projectId": (NullOrUndefined Nothing) }



-- | <p> Information about an instance of an AWS resource associated with a project. </p>
newtype Resource = Resource 
  { "type" :: NullOrUndefined.NullOrUndefined (ResourceType)
  , "name" :: NullOrUndefined.NullOrUndefined (ResourceName)
  , "arn" :: NullOrUndefined.NullOrUndefined (ResourceArn)
  , "feature" :: NullOrUndefined.NullOrUndefined (Feature)
  , "attributes" :: NullOrUndefined.NullOrUndefined (Attributes)
  }
derive instance newtypeResource :: Newtype Resource _
derive instance repGenericResource :: Generic Resource _
instance showResource :: Show Resource where
  show = genericShow
instance decodeResource :: Decode Resource where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResource :: Encode Resource where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Resource from required parameters
newResource :: Resource
newResource  = Resource { "arn": (NullOrUndefined Nothing), "attributes": (NullOrUndefined Nothing), "feature": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs Resource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResource' :: ( { "type" :: NullOrUndefined.NullOrUndefined (ResourceType) , "name" :: NullOrUndefined.NullOrUndefined (ResourceName) , "arn" :: NullOrUndefined.NullOrUndefined (ResourceArn) , "feature" :: NullOrUndefined.NullOrUndefined (Feature) , "attributes" :: NullOrUndefined.NullOrUndefined (Attributes) } -> {"type" :: NullOrUndefined.NullOrUndefined (ResourceType) , "name" :: NullOrUndefined.NullOrUndefined (ResourceName) , "arn" :: NullOrUndefined.NullOrUndefined (ResourceArn) , "feature" :: NullOrUndefined.NullOrUndefined (Feature) , "attributes" :: NullOrUndefined.NullOrUndefined (Attributes) } ) -> Resource
newResource'  customize = (Resource <<< customize) { "arn": (NullOrUndefined Nothing), "attributes": (NullOrUndefined Nothing), "feature": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



-- | <p> AWS resource name which uniquely identifies the resource in AWS systems. </p>
newtype ResourceArn = ResourceArn String
derive instance newtypeResourceArn :: Newtype ResourceArn _
derive instance repGenericResourceArn :: Generic ResourceArn _
instance showResourceArn :: Show ResourceArn where
  show = genericShow
instance decodeResourceArn :: Decode ResourceArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceArn :: Encode ResourceArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Name of the AWS resource (e.g., for an Amazon S3 bucket this is the name of the bucket). </p>
newtype ResourceName = ResourceName String
derive instance newtypeResourceName :: Newtype ResourceName _
derive instance repGenericResourceName :: Generic ResourceName _
instance showResourceName :: Show ResourceName where
  show = genericShow
instance decodeResourceName :: Decode ResourceName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceName :: Encode ResourceName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Simplified name for type of AWS resource (e.g., bucket is an Amazon S3 bucket). </p>
newtype ResourceType = ResourceType String
derive instance newtypeResourceType :: Newtype ResourceType _
derive instance repGenericResourceType :: Generic ResourceType _
instance showResourceType :: Show ResourceType where
  show = genericShow
instance decodeResourceType :: Decode ResourceType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceType :: Encode ResourceType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> List of AWS resources associated with a project. </p>
newtype Resources = Resources (Array Resource)
derive instance newtypeResources :: Newtype Resources _
derive instance repGenericResources :: Generic Resources _
instance showResources :: Show Resources where
  show = genericShow
instance decodeResources :: Decode Resources where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResources :: Encode Resources where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> The service is temporarily unavailable. The request should be retried after some time delay. </p>
newtype ServiceUnavailableException = ServiceUnavailableException 
  { "retryAfterSeconds" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  , "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeServiceUnavailableException :: Newtype ServiceUnavailableException _
derive instance repGenericServiceUnavailableException :: Generic ServiceUnavailableException _
instance showServiceUnavailableException :: Show ServiceUnavailableException where
  show = genericShow
instance decodeServiceUnavailableException :: Decode ServiceUnavailableException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceUnavailableException :: Encode ServiceUnavailableException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceUnavailableException from required parameters
newServiceUnavailableException :: ServiceUnavailableException
newServiceUnavailableException  = ServiceUnavailableException { "message": (NullOrUndefined Nothing), "retryAfterSeconds": (NullOrUndefined Nothing) }

-- | Constructs ServiceUnavailableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceUnavailableException' :: ( { "retryAfterSeconds" :: NullOrUndefined.NullOrUndefined (ErrorMessage) , "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"retryAfterSeconds" :: NullOrUndefined.NullOrUndefined (ErrorMessage) , "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ServiceUnavailableException
newServiceUnavailableException'  customize = (ServiceUnavailableException <<< customize) { "message": (NullOrUndefined Nothing), "retryAfterSeconds": (NullOrUndefined Nothing) }



-- | <p> URL which can be shared to allow other AWS users to create their own project in AWS Mobile Hub with the same configuration as the specified project. This URL pertains to a snapshot in time of the project configuration that is created when this API is called. If you want to share additional changes to your project configuration, then you will need to create and share a new snapshot by calling this method again. </p>
newtype ShareUrl = ShareUrl String
derive instance newtypeShareUrl :: Newtype ShareUrl _
derive instance repGenericShareUrl :: Generic ShareUrl _
instance showShareUrl :: Show ShareUrl where
  show = genericShow
instance decodeShareUrl :: Decode ShareUrl where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeShareUrl :: Encode ShareUrl where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Unique identifier for the exported snapshot of the project configuration. This snapshot identifier is included in the share URL. </p>
newtype SnapshotId = SnapshotId String
derive instance newtypeSnapshotId :: Newtype SnapshotId _
derive instance repGenericSnapshotId :: Generic SnapshotId _
instance showSnapshotId :: Show SnapshotId where
  show = genericShow
instance decodeSnapshotId :: Decode SnapshotId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSnapshotId :: Encode SnapshotId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Too many requests have been received for this AWS account in too short a time. The request should be retried after some time delay. </p>
newtype TooManyRequestsException = TooManyRequestsException 
  { "retryAfterSeconds" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  , "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where
  show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: TooManyRequestsException
newTooManyRequestsException  = TooManyRequestsException { "message": (NullOrUndefined Nothing), "retryAfterSeconds": (NullOrUndefined Nothing) }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ( { "retryAfterSeconds" :: NullOrUndefined.NullOrUndefined (ErrorMessage) , "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"retryAfterSeconds" :: NullOrUndefined.NullOrUndefined (ErrorMessage) , "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> TooManyRequestsException
newTooManyRequestsException'  customize = (TooManyRequestsException <<< customize) { "message": (NullOrUndefined Nothing), "retryAfterSeconds": (NullOrUndefined Nothing) }



-- | <p> Credentials of the caller are insufficient to authorize the request. </p>
newtype UnauthorizedException = UnauthorizedException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeUnauthorizedException :: Newtype UnauthorizedException _
derive instance repGenericUnauthorizedException :: Generic UnauthorizedException _
instance showUnauthorizedException :: Show UnauthorizedException where
  show = genericShow
instance decodeUnauthorizedException :: Decode UnauthorizedException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnauthorizedException :: Encode UnauthorizedException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UnauthorizedException from required parameters
newUnauthorizedException :: UnauthorizedException
newUnauthorizedException  = UnauthorizedException { "message": (NullOrUndefined Nothing) }

-- | Constructs UnauthorizedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnauthorizedException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> UnauthorizedException
newUnauthorizedException'  customize = (UnauthorizedException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p> Request structure used for requests to update project configuration. </p>
newtype UpdateProjectRequest = UpdateProjectRequest 
  { "contents" :: NullOrUndefined.NullOrUndefined (Contents)
  , "projectId" :: (ProjectId)
  }
derive instance newtypeUpdateProjectRequest :: Newtype UpdateProjectRequest _
derive instance repGenericUpdateProjectRequest :: Generic UpdateProjectRequest _
instance showUpdateProjectRequest :: Show UpdateProjectRequest where
  show = genericShow
instance decodeUpdateProjectRequest :: Decode UpdateProjectRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateProjectRequest :: Encode UpdateProjectRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateProjectRequest from required parameters
newUpdateProjectRequest :: ProjectId -> UpdateProjectRequest
newUpdateProjectRequest _projectId = UpdateProjectRequest { "projectId": _projectId, "contents": (NullOrUndefined Nothing) }

-- | Constructs UpdateProjectRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateProjectRequest' :: ProjectId -> ( { "contents" :: NullOrUndefined.NullOrUndefined (Contents) , "projectId" :: (ProjectId) } -> {"contents" :: NullOrUndefined.NullOrUndefined (Contents) , "projectId" :: (ProjectId) } ) -> UpdateProjectRequest
newUpdateProjectRequest' _projectId customize = (UpdateProjectRequest <<< customize) { "projectId": _projectId, "contents": (NullOrUndefined Nothing) }



-- | <p> Result structure used for requests to updated project configuration. </p>
newtype UpdateProjectResult = UpdateProjectResult 
  { "details" :: NullOrUndefined.NullOrUndefined (ProjectDetails)
  }
derive instance newtypeUpdateProjectResult :: Newtype UpdateProjectResult _
derive instance repGenericUpdateProjectResult :: Generic UpdateProjectResult _
instance showUpdateProjectResult :: Show UpdateProjectResult where
  show = genericShow
instance decodeUpdateProjectResult :: Decode UpdateProjectResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateProjectResult :: Encode UpdateProjectResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateProjectResult from required parameters
newUpdateProjectResult :: UpdateProjectResult
newUpdateProjectResult  = UpdateProjectResult { "details": (NullOrUndefined Nothing) }

-- | Constructs UpdateProjectResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateProjectResult' :: ( { "details" :: NullOrUndefined.NullOrUndefined (ProjectDetails) } -> {"details" :: NullOrUndefined.NullOrUndefined (ProjectDetails) } ) -> UpdateProjectResult
newUpdateProjectResult'  customize = (UpdateProjectResult <<< customize) { "details": (NullOrUndefined Nothing) }

