#!/bin/bash

# script kalkulator sederhana dengan riwayat

# ansi code warna untuk estetikan penulisan
merah="\e[31m✗ "
hijau="\e[32m✓ "
kuning="\e33m! "
biru="\e[34m "
reset="\033[0m"

# deklarasi variable array
declare -a history_calc

