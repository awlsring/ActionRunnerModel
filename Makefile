default: install

install:
	gradle build
	openapi-generator generate -i ./build/smithyprojections/ActionRunnerModel/open-api/openapi/ActionRunner.openapi.json -g go -o ./build/output/ActionRunnerGo --git-user-id awlsring --git-repo-id action-runner