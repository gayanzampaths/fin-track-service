import ballerina/http;

public function main() {

}

service /fin\-track on new http:Listener(9090) {

    resource function get income(boolean summary = true) returns http:Ok {

        return {headers: {"Content-Type": "application/json"}, body: "test"};
    }

    resource function get expenses(boolean summary = true) returns http:Ok {
        return {};
    }

    resource function get fetchUsers() returns http:Ok {
        return {headers: {"Content-Type": "application/json"}, body: []};
    }
}
