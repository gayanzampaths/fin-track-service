import ballerina/http;
import ballerina/io;
import ballerina/os;

public function main() {

}

service /fin\-track on new http:Listener(9090) {

    resource function get income(boolean summary = true) returns http:Ok {

        string key = os:getEnv("MY_API_KEY");

        return { headers: { "Content-Type": "application/json" }, body: key };
    }

    resource function get expenses(boolean summary = true) returns http:Ok {
        return {};
    }
}
