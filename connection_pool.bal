import ballerina/sql;
import ballerinax/mysql;

// Sample configuration - adjust as needed 
public const DB_URL = "jdbc:mysql://localhost:3306/your_database_name";
public const DB_USERNAME = "your_username";
public const DB_PASSWORD = "your_password";

// Shared connection pool for optimal reuse
public sql:ConnectionPool poolOptions = {
    maxOpenConnections: 10,
    minIdleConnections: 5
};

// Creates a MySQL client with the shared pool
public function createClient() returns mysql:Client|sql:Error {
    return new (DB_URL, DB_USERNAME, DB_PASSWORD, connectionPool = poolOptions);
}
