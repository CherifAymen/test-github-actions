package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

func handleRequests() {
	fmt.Println("* Running on http://localhost:8080/ (Press CTRL+C to quit)")
	myRouter := mux.NewRouter().StrictSlash(true)
	myRouter.HandleFunc("/testHealth", HealthHandler)
	myRouter.HandleFunc("/hello", SayHello)
	log.Fatal(http.ListenAndServe(":8080", myRouter))
}

// HealthHandler returns a succesful status and a message.
// For use by Consul or other processes that need to verify service health.
func HealthHandler(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(http.StatusOK)
	fmt.Fprintf(w, "Hello, you've hit %s\n", r.URL.Path)
}

// SayHello returns a msg
func SayHello(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(http.StatusOK)
	fmt.Fprintf(w, "Bonjour Aymen From Go!\n")
}

func main() {
	handleRequests()
}
