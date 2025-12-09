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
         echo -e "${bold}${merah}Tugas tidak boleh kosong !${reset}"
         continue
      else
         # validasi ada duplikasi atau tidak
         duplikasi=0
         for tidaksama in "${task_name[@]}"; then
            if [["tidaksama" == "$task"]]; then
               echo -e "${bold}${merah}Nama sudah ada silahkan ganti !${reset}"
               duplikasi=1
               break
            fi
         done

         # retry jika ada duplikasi tapi kalau tidak ada duplikasi akan keluar 
         if [[ "$duplikasi" -eq 1]]; then
            continue
         else
            task_name+=("$task")
            task_status+=("Pending")
            todo_list+=("$task - Pending")
            echo -e "${bold}${hijau}Tugas '$name' berhasil ditambahkan"
            break
         fi
      fi
   done
}


