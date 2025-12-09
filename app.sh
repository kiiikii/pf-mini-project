#!/bin/bash

merah="\e[31m✗"
hijau="\e[32m✓ "
bold="\e[1m"
reset="\e[0m"

# deklarasi variabel array
declare -a todo_list
declare -a task_name
declare -a task_status # untuk pending/done

# function untuk menampilan daftar tugas
display_todo() {
   if [ ${#todo_list[@]} -eq 0 ]; then
      echo "Tidak ada tugas."
      return
   fi

   echo "------ List Tugas ------"

   for i in "${!todo_list[@]}"; do
      echo "(( i+1 )). ${todo_list[$i]}"
   done

   echo "------------------------"
}

# function tambah tugas
add_task() {
   # untuk input nama tugas dengan validasi kosong dan duplikasi nama
   while true; do
      read -p "Masukan tugas baru: " task
      if [[ -n "$task" ]]; then
         task_name += ("$task")
         task_status += ("Pending")
         todo_list += ("$task - Pending")
         echo "${hijau}Tugas '$task' berhasil ditambah.${reset}"
