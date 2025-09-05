package main

import (
	"bufio"
	"fmt"
	"log"
	"net"
)

func main() {
	lstnr, err := net.Listen("tcp", "localhost:4000")
	fmt.Println("Server is listening to port :4000")
	if err != nil {
		log.Fatalf("Failed to start the tcp server: %v", err)
	}
	conn, err := lstnr.Accept()
	if err != nil {
		log.Fatal(err.Error())
	}
	fmt.Println("Connection established...")
	defer conn.Close()

	reader := bufio.NewReader(conn)
	data, err := reader.ReadString('\n')
	fmt.Printf("Readed Data: %s\n", data)

	// Now we need to send the data.
	_, err = conn.Write([]byte("Sending the data from the golang program"))
	if err != nil {
		log.Fatalf("Failed to write: %v", err)
	}
}
