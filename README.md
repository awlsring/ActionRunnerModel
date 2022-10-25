# ActionRunnerModel

## What

This is the Smithy model for [ActionRunner](https://github.com/awlsring/ActionRunner). This is used to build the request and response for the api server and clients.

## How

To build this package, run the following...

```shell
gradle build
```

This will produce a `build` folder that will contain the models json output and an openapi projection.

To generate a client from this, use `openapi-generator` and run something like...

```shell
openapi-generator generate \
-i ./ActionRunnerModel/build/smithyprojections/ActionRunnerModel/open-api/openapi/ActionRunner.openapi.json \
-g go -o <output_path> \
--git-user-id awlsring --git-repo-id action-runner \
--additional-properties packageName=runner
```