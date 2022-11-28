$version: "2.0"

namespace awlsring.actionrunner

@readonly
@http(method: "GET", uri: "/execution/{id}/detailed", code: 200)
operation GetDetailedExecution {
    input: GetDetailedExecutionInput,
    output: GetDetailedExecutionOutput,
    errors: [
        InvalidInputError,
        ExecutionNotFoundError,
        InternalServerError
    ]
}

@input
structure GetDetailedExecutionInput {
    @httpLabel
    @required
    id: ExecutionId
}

@output
structure GetDetailedExecutionOutput {
    @required
    summary: DetailedExecutionSummary
}

structure DetailedExecutionSummary {
    @required
    id: ExecutionId,
    @required
    action: ActionName,
    @required
    status: ExecutionStatus,
    @required
    startTime: Integer,
    @required
    targets: Targets,
    endTime: Integer,
    stats: ExecutionStatsList,
    plays: PlaysExtended
}

structure PlayExtended {
    @required
    id: PlayId,
    @required
    name: String,
    @required
    startTime: Integer,
    @required
    endTime: Integer,
    @required
    tasks: Tasks,
}

list PlaysExtended {
    member: PlayExtended
}