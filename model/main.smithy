$version: "2.0"

namespace dws.api.actionrunner

use aws.protocols#restJson1
@title("ActionRunner")

@restJson1
@paginated(
    inputToken: "nextToken",
    outputToken: "nextToken",
    pageSize: "pageSize"
)
service ActionRunner {
    version: "2022-10-01",
    resources: [Execution, Action]
}