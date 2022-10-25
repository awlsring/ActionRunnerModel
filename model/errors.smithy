$version: "2.0"

namespace dws.api.actionrunner

@error("client")
structure InvalidInputError {
    @required
    message: String
}