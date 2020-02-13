#!/bin/bash

do_build() {
    docker-compose build
}

do_start() {
    docker-compose up -d
}

do_stop() {
    docker-compose down
}

do_bash() {
    docker-compose exec web bash
}

do_help() {
    echo "CTFHub测试脚本"
    echo "tesh.sh [run|build|start|stop|bash]"
}

case "$1" in
    test)
        do_stop
        do_build
        do_start
        do_bash
        ;;
    build)
        do_build
        ;;
    start)
        do_start
        ;;
    stop)
        do_stop
        ;;
    bash)
        do_bash
        ;;
    *)
        do_help
        ;;
esac

exit 0
