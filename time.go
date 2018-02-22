package main

import (
	"fmt"
	"time"
)

func main() {
	c := time.Tick(1 * time.Second)
	for now := range c {
        	fmt.Printf("%s\n", now.Format("2006-01-02 15:04:05"))
	}
}

