package main

import (
	"bufio"
	"log"
	"net"
	"time"
)

func main() {
	conn, err := net.Dial("tcp", "localhost:4000")
	if err != nil {
		log.Fatal(err.Error())
	}
	log.Println("Connected established.")
	defer conn.Close()
	writer := bufio.NewWriter(conn)
	_, err = writer.WriteString("This is working\n")
	if err != nil {
		log.Fatal(err.Error())
	}
	if err := writer.Flush(); err != nil {
		log.Fatal("Failed to flush")
	}
	log.Println("Data sents successfully.")
	time.Sleep(1 * time.Second) // Taking a sleep.
	// Now the whole thing stops.
}