import ballerina/http;
import ballerina/io;
import ballerina/os;

public function main() {
    string key = os:getEnv("MY_API_KEY");
    io:println( key );
}

service /fin\-track on new http:Listener(9090) {

    resource function get income(boolean summary = true) returns http:Ok {
        return {};
    }

    resource function get expenses(boolean summary = true) returns http:Ok {
        return {};
    }
}
