package main

import "github.com/inkeliz/gowebview"

func main() {
	w, err := gowebview.New(&gowebview.Config{URL: "https://google.com", WindowConfig: &gowebview.WindowConfig{Title: "Hello World"}})
	if err != nil {
		panic(err)
	}

	defer w.Destroy()
	w.Run()
}