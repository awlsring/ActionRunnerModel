$version: "2.0"

namespace awlsring.actionrunner

@readonly
@paginated(items: "summaries", inputToken: "nextToken", outputToken: "nextToken", pageSize: "pageSize")
@http(method: "GET", uri: "/execution", code: 200)
operation ListExecutions {
    input: ListExecutionsInput,
    output: ListExecutionsOutput,
    errors: [InvalidInputError, InternalServerError]
}

@input
structure ListExecutionsInput {
    @httpQuery("nextToken")
    nextToken: String,
    @httpQuery("pageSize")
    pageSize: Integer
}

@output
structure ListExecutionsOutput {
    @required
    summaries: ExecutionSummaries,
    nextToken: String
}