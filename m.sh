#!/bin/sh

ProgName=$(basename $0)
GIT="/usr/bin/git"

sub_help() {
    printf "
Usage:
  ./$ProgName <subcommand> [options]

  Subcommands:
    add <GIT ADDRESS> <short name>    [Add a new submodule]
    remove <short name>               [Deletes a submodule from the repository]
    update                            [Initializes and updates submodules]

  For help with each subcommand run:
  ./$ProgName <subcommand> -h|--help\n\n"
}

sub_add() {
    $GIT submodule add "$1" "bundle/vim-$2"
    sub_update
}

sub_remove() {
    echo "NOT IMPLEMENTED YET"
}

sub_update() {
    $GIT submodule update --init --recursive
}

sub_add_help() {
    printf "
Subcommand 'add' is used to add new submodules to the repository. The update subcommand will be called after new module is added
This command takes two paramters.
  First paramter is the git repository of the submodule to add
  Second paramter is the short name you want to call the new submodule

Usage:
  ./$ProgName https://github.com/<USER>/<REPO> <NAME>
  This command will add a submodule from <USER> <REPO> repository to the ./bundle/vim-<NAME> submodule location.\n\n"
}

sub_remove_help() {
    printf "
        "
}

sub_update_help() {
    printf "
Subcommand 'update' takes no paramters. Calling this subcommand will run the 'git submodule update' command.
Usage:
  ./$ProgName update\n\n"
}

subcommand=$1
case $subcommand in
    "" | "-h" | "--help")
        sub_help
        ;;
    *)
        # Drop the argument that is the name of the script
        shift

        if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
            sub_${subcommand}_help
        else
            sub_$subcommand $@
        fi

        # Report Failure
        if [ $? = 127 ]; then
            printf "Error: '$subcommand' is not a known subcommand.\n" >&2
            printf "  Run './$ProgName --help' for a list of known subcommands.\n" >&2
            exit 1
        fi
        ;;
esac
