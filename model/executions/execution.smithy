$version: "2.0"

namespace dws.api.actionrunner

resource Execution {
    identifiers: { id: ExecutionId },
    read: GetExecution,
    list: ListExecutions,
    operations: [GetDetailedExecution]
}

@pattern("^e-[a-zA-Z0-9\b]{32}$")
string ExecutionId

enum ExecutionStatus {
    RUNNING,
    TIMEOUT,
    SUCCESS,
    FAILED,
}

structure ExecutionStats {
    @required
    machine: String,
    changed: Integer,
    failures: Integer,
    ignored: Integer,
    ok: Integer,
    rescued: Integer,
    skipped: Integer,
    unreachable: Integer,
}

list ExecutionStatsList {
    member: ExecutionStats
}

structure ExecutionSummary {
    @required
    id: ExecutionId,
    @required
    action: ActionName,
    @required
    status: ExecutionStatus,
    @required
    targets: Targets,
    @required
    startTime: Integer,
    endTime: Integer,
    stats: ExecutionStatsList,
    plays: StringList,
}

list Targets {
    member: String,
}

list ExecutionSummaries {
    member: ExecutionSummary
}

@pattern("^p-[a-zA-Z0-9\b]{32}$")
string PlayId

structure Play {
    @required
    id: PlayId,
    @required
    name: String,
    @required
    startTime: Integer,
    @required
    endTime: Integer,
    @required
    tasks: StringList,
}

list Plays {
    member: Play
}

@pattern("^t-[a-zA-Z0-9\b]{32}$")
string TaskId

structure Task {
    @required
    id: String,
    @required
    name: String,
    @required
    startTime: Integer,
    @required
    endTime: Integer,
    @required
    targets: TargetResults,
}

list Tasks {
    member: Task
}

structure TargetResult {
    @required
    machine: String,
    @required
    action: ActionName,
    changed: Boolean,
    stdout: StringList,
    stderr: StringList,
    failed: Boolean,
    failedWhenResult: Boolean,
    skipped: Boolean,
    skippedReason: String,
    unreachable: Boolean
}

list TargetResults {
    member: TargetResult
}
