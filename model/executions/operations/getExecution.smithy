$version: "2.0"

namespace dws.api.actionrunner

@readonly
@http(method: "GET", uri: "/execution/{id}", code: 200)
operation GetExecution {
    input: GetExecutionInput,
    output: GetExecutionOutput,
    errors: [
        InvalidInputError,
        ExecutionNotFoundError,
        InternalServerError
    ]
}

@input
structure GetExecutionInput {
    @httpLabel
    @required
    id: ExecutionId
}

@output
structure GetExecutionOutput {
    @required
    summary: ExecutionSummary
}