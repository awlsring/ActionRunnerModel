$version: "2.0"

namespace awlsring.actionrunner

@http(method: "POST", uri: "/action/{actionName}", code: 200)
operation RunAction {
    input: RunActionInput,
    output: RunActionOutput,
    errors: [
        InvalidInputError,
        ActionNotFoundError,
        InternalServerError
    ]
}

@input
structure RunActionInput {
    @httpLabel
    @required
    actionName: String,
    @required
    machines: Machines,
}

@output
structure RunActionOutput {
    @required
    executionId: String
}