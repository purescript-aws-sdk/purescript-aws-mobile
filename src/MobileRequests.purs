
module AWS.Mobile.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.Mobile as Mobile
import AWS.Mobile.Types as MobileTypes


-- | <p> Creates an AWS Mobile Hub project. </p>
createProject :: forall eff. Mobile.Service -> MobileTypes.CreateProjectRequest -> Aff (exception :: EXCEPTION | eff) MobileTypes.CreateProjectResult
createProject (Mobile.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createProject"


-- | <p> Delets a project in AWS Mobile Hub. </p>
deleteProject :: forall eff. Mobile.Service -> MobileTypes.DeleteProjectRequest -> Aff (exception :: EXCEPTION | eff) MobileTypes.DeleteProjectResult
deleteProject (Mobile.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteProject"


-- | <p> Get the bundle details for the requested bundle id. </p>
describeBundle :: forall eff. Mobile.Service -> MobileTypes.DescribeBundleRequest -> Aff (exception :: EXCEPTION | eff) MobileTypes.DescribeBundleResult
describeBundle (Mobile.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeBundle"


-- | <p> Gets details about a project in AWS Mobile Hub. </p>
describeProject :: forall eff. Mobile.Service -> MobileTypes.DescribeProjectRequest -> Aff (exception :: EXCEPTION | eff) MobileTypes.DescribeProjectResult
describeProject (Mobile.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeProject"


-- | <p> Generates customized software development kit (SDK) and or tool packages used to integrate mobile web or mobile app clients with backend AWS resources. </p>
exportBundle :: forall eff. Mobile.Service -> MobileTypes.ExportBundleRequest -> Aff (exception :: EXCEPTION | eff) MobileTypes.ExportBundleResult
exportBundle (Mobile.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "exportBundle"


-- | <p> Exports project configuration to a snapshot which can be downloaded and shared. Note that mobile app push credentials are encrypted in exported projects, so they can only be shared successfully within the same AWS account. </p>
exportProject :: forall eff. Mobile.Service -> MobileTypes.ExportProjectRequest -> Aff (exception :: EXCEPTION | eff) MobileTypes.ExportProjectResult
exportProject (Mobile.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "exportProject"


-- | <p> List all available bundles. </p>
listBundles :: forall eff. Mobile.Service -> MobileTypes.ListBundlesRequest -> Aff (exception :: EXCEPTION | eff) MobileTypes.ListBundlesResult
listBundles (Mobile.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listBundles"


-- | <p> Lists projects in AWS Mobile Hub. </p>
listProjects :: forall eff. Mobile.Service -> MobileTypes.ListProjectsRequest -> Aff (exception :: EXCEPTION | eff) MobileTypes.ListProjectsResult
listProjects (Mobile.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listProjects"


-- | <p> Update an existing project. </p>
updateProject :: forall eff. Mobile.Service -> MobileTypes.UpdateProjectRequest -> Aff (exception :: EXCEPTION | eff) MobileTypes.UpdateProjectResult
updateProject (Mobile.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateProject"
