#!/bin/sh

ProgName=$(basename $0)
GIT="/usr/bin/git"

sub_add() {
    if [ "$1" = "" ] || [ "$2" = "" ]; then
        printf "Missing parameters. Call add --help for more information\n\n"
        return 1
    fi

    path="bundle/vim-$2"
    $GIT submodule add "$1" "$path"
    sub_update
}

sub_pull() {
    $GIT pull
    sub_update
}

sub_remove() {
    if [ "$1" = "" ]; then
        printf "Missing parameters. Call remove --help for more information\n\n"
        return 1
    fi

    path="bundle/vim-$1"
    $GIT submodule deinit $path
    $GIT rm $path
    rm -rf ".git/modules/$path"
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

sub_pull_help() {
    printf "
Subcommand 'pull' is used to update the local repository with the latest vim configuration. The update subcommand will be called after loading updated code is finished. This subcommand takes no paramters.

Usage:
  ./$ProgName pull\n\n"
}

sub_remove_help() {
    printf "
Subcommand 'remove' is used to remove a submodule from the repository.
This command takes one paramter.
  First paramter is the short name submodule is called

Usage:
  ./$ProgName <NAME>
  This command will delete the submodule from ./bundle/vim-<NAME>.\n\n"
}

sub_update_help() {
    printf "
Subcommand 'update' takes no paramters. Calling this subcommand will run the 'git submodule update' command.
Usage:
  ./$ProgName update\n\n"
}

sub_help() {
    printf "
Usage:
  ./$ProgName <subcommand> [options]

  Subcommands:
    add <GIT ADDRESS> <short name>    [Add a new submodule]
    pull                              [Updates local repository]
    remove <short name>               [Deletes a submodule from the repository]
    update                            [Initializes and updates submodules]

  For help with each subcommand run:
  ./$ProgName <subcommand> -h|--help\n\n"
}

subcommand=$1
case $subcommand in
    "" | "-h" | "--help")
        sub_help
        ;;
    *)
        # Drop the argument that is the name of the subcommand
        shift

        if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
            sub_${subcommand}_help
        else
            sub_$subcommand $@
        fi

        # Report unknown subcommands
        if [ $? = 127 ]; then
            printf "Error: '$subcommand' is not a known subcommand.\n" >&2
            printf "  Run './$ProgName --help' for a list of known subcommands.\n" >&2
            exit 1
        fi
        ;;
esac
