#!/bin/bash

# script to-do list dengan status

# ansi code warna untuk estetikan penulisan
merah="\e[38;5;196m✗ "    # Merah cerah
hijau="\e[38;5;46m✓ "     # Hijau cerah
kuning="\e[38;5;226m⚠ "   # Kuning cerah
orange="\e[38;5;214m "    # Orange/jingga
reset="\e[0m"

# deklarasi variable array
declare -a todo_list
declare -a task_status

# function untuk menambah tugas
add_task() {
   
}

# function untuk menampilkan tugas
display_todo() {

}

# function untuk menghapus tugas
delete_task() {

}

# function untuk menandai tugas selesai
mark_task() {

}

# function untuk statistik to-do
stat_todo() {

}

# main menu utama dari apliaksi
while true; do
     echo "${orange}========= To-do List - Menu =========${reset}"
     echo "1. Lihat daftar tugas"
     echo "2. Tambah tugas"
     echo "3. Tandi tugas selesai"
     echo "4. Hapus tugas"
     echo "5. Lihat statistik"
     echo "6. Keluar"
     read -p "Opsi pilihan [1-6]: " choice

     case $choice in
       1)
         display_todo
         ;;
       2)
         add_task
         ;;
       3)
         mark_task
         ;;
       4)
         delete_task
         ;;
       5)
         stat_todo
         ;;
       6)
         echo "Keluar dari aplikasi"
         ;;
