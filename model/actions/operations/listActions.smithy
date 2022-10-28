$version: "2.0"

namespace dws.api.actionrunner

@readonly
@http(method: "GET", uri: "/action", code: 200)
operation ListAction {
    output: ListActionOutput,
    errors: [
        InvalidInputError,
        InternalServerError
    ]
}

@output
structure ListActionOutput {
    @required
    actions: Actions
}

list Actions {
    member: ActionName
}