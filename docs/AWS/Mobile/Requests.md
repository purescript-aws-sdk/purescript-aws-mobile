## Module AWS.Mobile.Requests

#### `createProject`

``` purescript
createProject :: forall eff. Service -> CreateProjectRequest -> Aff (exception :: EXCEPTION | eff) CreateProjectResult
```

<p> Creates an AWS Mobile Hub project. </p>

#### `deleteProject`

``` purescript
deleteProject :: forall eff. Service -> DeleteProjectRequest -> Aff (exception :: EXCEPTION | eff) DeleteProjectResult
```

<p> Delets a project in AWS Mobile Hub. </p>

#### `describeBundle`

``` purescript
describeBundle :: forall eff. Service -> DescribeBundleRequest -> Aff (exception :: EXCEPTION | eff) DescribeBundleResult
```

<p> Get the bundle details for the requested bundle id. </p>

#### `describeProject`

``` purescript
describeProject :: forall eff. Service -> DescribeProjectRequest -> Aff (exception :: EXCEPTION | eff) DescribeProjectResult
```

<p> Gets details about a project in AWS Mobile Hub. </p>

#### `exportBundle`

``` purescript
exportBundle :: forall eff. Service -> ExportBundleRequest -> Aff (exception :: EXCEPTION | eff) ExportBundleResult
```

<p> Generates customized software development kit (SDK) and or tool packages used to integrate mobile web or mobile app clients with backend AWS resources. </p>

#### `exportProject`

``` purescript
exportProject :: forall eff. Service -> ExportProjectRequest -> Aff (exception :: EXCEPTION | eff) ExportProjectResult
```

<p> Exports project configuration to a snapshot which can be downloaded and shared. Note that mobile app push credentials are encrypted in exported projects, so they can only be shared successfully within the same AWS account. </p>

#### `listBundles`

``` purescript
listBundles :: forall eff. Service -> ListBundlesRequest -> Aff (exception :: EXCEPTION | eff) ListBundlesResult
```

<p> List all available bundles. </p>

#### `listProjects`

``` purescript
listProjects :: forall eff. Service -> ListProjectsRequest -> Aff (exception :: EXCEPTION | eff) ListProjectsResult
```

<p> Lists projects in AWS Mobile Hub. </p>

#### `updateProject`

``` purescript
updateProject :: forall eff. Service -> UpdateProjectRequest -> Aff (exception :: EXCEPTION | eff) UpdateProjectResult
```

<p> Update an existing project. </p>


