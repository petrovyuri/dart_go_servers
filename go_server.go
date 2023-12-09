package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprint(w, "Я Go сервер!")
	})
	http.ListenAndServe(":9001", nil)
}
