#!/bin/sh

ProgName=$(basename $0)
GIT="/usr/bin/git"

sub_help() {
    printf "
Usage:
  ./$ProgName <subcommand> [options]

  Subcommands:
    add <GIT ADDRESS> <short name>    [Add a new submodule]
    update                            [Initializes and updates submodules]

  For help with each subcommand run:
  ./$ProgName <subcommand> -h|--help\n"
}

sub_update() {
    if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
        printf "
Subcommand 'update' takes no paramters. Calling this subcommand will run the 'git submodule update' command.
Usage:
  ./$ProgName update\n"
        return
    fi
    $GIT submodule update --init --recursive
}

sub_add() {
    if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
        printf "Adding submodule\n"
        printf "arg1 %s\n" $1
        printf "arg2 %s\n" $2
        printf "\n"
        return
    fi

    printf "Doing add work\n"
}

subcommand=$1
case $subcommand in
    "" | "-h" | "--help")
        sub_help
        ;;
    *)
        # Drop the argument that is the name of the script
        shift

        # Run subcommand passing remaining arguments
        sub_$subcommand $@

        # Report Failure
        if [ $? = 127 ]; then
            printf "Error: '$subcommand' is not a known subcommand.\n" >&2
            printf "  Run './$ProgName --help' for a list of known subcommands.\n" >&2
            exit 1
        fi
        ;;
esac
