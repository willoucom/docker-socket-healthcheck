package main

import (
	"fmt"
	"time"
	"github.com/fsouza/go-dockerclient"
)

func main() {
	for {
		client, err := docker.NewClientFromEnv()
		if err != nil {
			panic(err)
		}
		
		err = client.Ping()
		if err != nil {
			panic(err)
		}
		fmt.Println("docker server ok")
		time.Sleep(10 * time.Second)
	}
}