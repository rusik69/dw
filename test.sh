#!/usr/bin/env bash
set -x
etcdctl rm /dw/hosts/pi1
etcdctl rm /dw/pods/sleep
curl -X POST -k -s http://localhost:5000/add_host -d '{"port": "7777", "cpus": "4", "disk": "25", "memory": "1000", "containers": [], "host": "pi1"}'
curl -X POST -k -s http://localhost:5000/add_pod -d '{"disk": "1", "running_containers": 0, "cpus": "1", "memory": "100", "image": "sleep", "state": "stopped", "containers": "4", "containers_list": []}'
