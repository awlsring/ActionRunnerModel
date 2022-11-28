$version: "2.0"

namespace awlsring.actionrunner

use aws.protocols#restJson1
@title("ActionRunner")

@restJson1
@httpApiKeyAuth(scheme: "ApiKey", name: "Authorization", in: "header")
@paginated(
    inputToken: "nextToken",
    outputToken: "nextToken",
    pageSize: "pageSize"
)
service ActionRunner {
    version: "2022-10-01",
    resources: [Execution, Action]
}