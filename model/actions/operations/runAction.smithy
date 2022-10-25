$version: "2.0"

namespace dws.api.actionrunner

@http(method: "POST", uri: "/action/{actionName}", code: 200)
operation RunAction {
    input: RunActionInput,
    output: RunActionOutput,
    errors: [InvalidInputError]
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