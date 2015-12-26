module SpecificDB where
import Database.HDBC
import Database.HDBC.MySQL
import Test.HUnit

config :: MySQLConnectInfo
config = defaultMySQLConnectInfo {
              mysqlUser     = "tester"
            , mysqlPassword = ""
            , mysqlDatabase = "TEST"
            , mysqlHost     = "127.0.0.1"
            }

connectDB =
    handleSqlError (connectMySQL config)
