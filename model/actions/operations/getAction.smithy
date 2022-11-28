$version: "2.0"

namespace awlsring.actionrunner

@readonly
@http(method: "GET", uri: "/action/{actionName}", code: 200)
operation GetAction {
    input: GetActionInput,
    output: GetActionOutput,
    errors: [
        InvalidInputError,
        ActionNotFoundError,
        InternalServerError
    ]
}

@input
structure GetActionInput {
    @httpLabel
    @required
    actionName: ActionName,
}

@output
structure GetActionOutput {
    @required
    summary: ActionSummary
}

structure ActionSummary {
    @required
    name: ActionName,
    @required
    file: String,
    description: String,
}