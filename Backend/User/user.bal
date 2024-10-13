import ballerina/http;



type User record {|
    int id;
    string first_name;
    string last_name;
    string number;
|};

service /user on new http:Listener(9090) {
    resource function get login() returns User[]|error {
        User newUser= {id:1, first_name: "pinil", last_name: "dissanayaka", number: "0786450938"};

        return [newUser];
    }
}
