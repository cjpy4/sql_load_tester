package main

import (
	"database/sql"
	"fmt"
	"log"

	"github.com/go-sql-driver/mysql"
	//_ "github.com/go-sql-driver/mysql"
)

var db *sql.DB

func connectToDB(usr, pw, addr, dbName string) {
	// Capture connection properties.
	cfg := mysql.Config{
		User:                 usr,
		Passwd:               pw,
		Net:                  "tcp",
		Addr:                 addr,
		DBName:               dbName,
		AllowNativePasswords: true,
	}

	// fmt.Println(cfg.FormatDSN())
	// Get a database handle.
	var err error
	db, err = sql.Open("mysql", cfg.FormatDSN())
	// db, err = sql.Open("mysql", "test_user:password@tcp(104.155.161.82:3306)/SQL_Mastery")
	if err != nil {
		log.Fatal(err)
	}

	pingErr := db.Ping()
	if pingErr != nil {
		log.Fatal(pingErr)
	}
	fmt.Println("Connected!")
}

func runQuery(query string, numRoutines int) {

	rows, err := db.Query("SELECT * FROM Employees")

	if err != nil {
		log.Fatal(err)
	}

	defer rows.Close()
}

func main() {

	connectToDB("test_user", "passwordhere", "104.155.161.82:3306", "SQL_Mastery")

	//res, err := stmt.Exec()

	fmt.Println("Query Succesful, Booyah!")
	//fmt.Println(rows.Execute)
	//fmt.Println(err)
}

/*

// Create a struct to hold the database connection and other parameters
type loadTest struct {
	db                   *sql.DB
	wg                   *sync.WaitGroup
	queriesPerConnection int
	connections          int
}

// Get command line inputs

var (
	numUsers int
)

func init() {
	flag.IntVar(&numUsers, "numUsers", 10, "Number of simulated users")
	flag.Parse()
}

// Function to establish a connection to the database
func (lt *loadTest) connect() {
	dsn := fmt.Sprintf("test_user:password@tcp(104.155.161.82:3306)/SQL_Mastery")
	db, err := sql.Open("mysql", dsn)
	if err != nil {
		log.Fatalf("Error connecting to database: %v", err)
	}
	lt.db = db
}

// Function to simulate a user connection and perform queries
func (lt *loadTest) simulateConnection() {
	defer lt.wg.Done()
	for i := 0; i < lt.queriesPerConnection; i++ {
		//_, err := lt.db.Exec("SELECT * FROM Employees")
		//_, err := lt.db.Exec("SELECT * FROM Expenses WHERE `Employee` = 'blabeet@jlha.net'")
		//_, err := lt.db.Exec("SELECT * FROM Expenses")
		_, err := lt.db.Exec("SELECT * FROM Time_Card")
		if err != nil {
			log.Printf("Error executing query: %v", err)
		}
		time.Sleep(1 * time.Millisecond)
	}
}

func tmain() {
	lt := &loadTest{
		wg:                   &sync.WaitGroup{},
		queriesPerConnection: 100,
		connections:          numUsers,
	}
	lt.connect()
	defer lt.db.Close()

	// Start the load test
	start := time.Now()
	lt.wg.Add(lt.connections)
	for i := 0; i < lt.connections; i++ {
		go lt.simulateConnection()
	}
	lt.wg.Wait()
	elapsed := time.Since(start)
}
*/
