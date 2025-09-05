package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"net"
)

func main() {
	listener, err := net.Listen("tcp", "localhost:4000")
	if err != nil {
		log.Fatal(err.Error())
	}
	log.Println("Server is listening on port :4000")
	// Now we need to accept the connection to a seperate goroutine.
	for {
		conn, err := listener.Accept()
		if err != nil {
			log.Printf("ERROR: Failed to accept the connection, %v\n", err.Error())
			continue
		}

		// If we get the connection we will handle that connection to a go-routine.
		go handleConn(conn)
	}
}

func handleConn(conn net.Conn) {
	defer conn.Close()
	// Here we need to read the messages from the conn.
	reader := bufio.NewReader(conn)
	for {
		msg, err := reader.ReadString('\n')
		if err != nil {
			if err == io.EOF {
				log.Println("Client disconnected.")
				return
			}
			log.Printf("Read error: %v\n", err.Error())
			return
		}

		fmt.Printf("Message from %s: %s\n", conn.RemoteAddr(), msg)
	}
}