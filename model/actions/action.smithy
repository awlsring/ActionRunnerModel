$version: "2.0"

namespace awlsring.actionrunner

resource Action {
    identifiers: { actionName: ActionName },
    create: RunAction,
    read: GetAction,
    list: ListAction,
}

@pattern("^[A-Za-z0-9 ]+$")
string ActionName