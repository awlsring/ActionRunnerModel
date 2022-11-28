$version: "2.0"

namespace awlsring.actionrunner

string MachineId

@pattern("^(?:[0-9]{1,3}.){3}[0-9]{1,3}$")
string IPv4

structure Machine {
    @required
    ip: IPv4,
    id: MachineId,
    ansibleHost: String,
    ansiblePort: Integer
    ansibleUser: String,
    ansiblePassword: String,
    ansibleSudoPassword: String
}

list Machines {
    member: Machine
}