#!/system/bin/sh

while true; do
    clear
    echo "=================================="
    echo "   ZAFRAN APP REPOSITORY SERVER   "
    echo "=================================="
    echo "1. APK by zafran Server "
    echo "2. Update Menu from GitHub"
    echo "3. Keluar"
    echo "----------------------------------"
    echo -n "Pilih menu [1-3]: "
    read pilihan_utama

    case "$pilihan_utama" in
        1)
            while true; do
                clear
                echo "=================================="
                echo "      PILIH APLIKASI UTK INSTAL   "
                echo "=================================="
                echo "1. B860-TOOL"
                echo "2. useetv"
                echo "3. MovieBox"
                echo "9. Kembali ke Menu Utama"
                echo "----------------------------------"
                echo -n "Pilih aplikasi [1-2]: "
                read pilihan_apk

                case "$pilihan_apk" in
                    1)
                        echo "Mengunduh b80 tool..."
                        wget -O /data/local/tmp/tool.apk "http://zafrandroid.my.id/tool.apk"
                        if [ $? -eq 0 ]; then
                            echo "Menginstall b80 tool..."
                            pm install -r /data/local/tmp/tool.apk
                            echo "Instalasi Selesai!"
                        else
                            echo "Gagal mengunduh! Periksa koneksi."
                        fi
                        echo ""
                        echo "Tekan Enter untuk melanjutkan..."
                        read enter
                        ;;
                    2)
                        echo "Mengunduh b80 tool..."
                        wget -O /data/local/tmp/useetv.apk "http://zafrandroid.my.id/useetv.apk"
                        if [ $? -eq 0 ]; then
                            echo "Menginstall useetv..."
                            pm install -r /data/local/tmp/useetv.apk
                            echo "Instalasi Selesai!"
                        else
                            echo "Gagal mengunduh! Periksa koneksi."
                        fi
                        echo ""
                        echo "Tekan Enter untuk melanjutkan..."
                        read enter
                        ;;
                     3)
                        echo "Mengunduh b80 tool..."
                        wget -O /data/local/tmp/moviebox.apk "http://download3626.sfile.co/downloadfile/2415375/75981/d957c7f9610b5b24721a08d29d52ebda/movieboxtv-v1.1.10.0901.03-50040016mod.apk&k=fdf1e50a1fbc1d1693098b32fd9d7235"
                        if [ $? -eq 0 ]; then
                            echo "Menginstall useetv..."
                            pm install -r /data/local/tmp/moviebox.apk
                            echo "Instalasi Selesai!"
                        else
                            echo "Gagal mengunduh! Periksa koneksi."
                        fi
                        echo ""
                        echo "Tekan Enter untuk melanjutkan..."
                        read enter
                        ;;
                    9)
                        break
                        ;;
                    *)
                        echo "Pilihan tidak valid!"
                        sleep 1
                        ;;
                esac
            done
            ;;
       2)
            echo "Mengunduh pembaruan menu dari GitHub..."
            wget -q -O /data/local/tmp/menu_live.sh "https://raw.githubusercontent.com/zafrandroidgo/zafran-repo/main/menu.sh"
            if [ $? -eq 0 ]; then
                tr -d '\r' < /data/local/tmp/menu_live.sh > /data/local/tmp/menu.sh
                chmod 755 /data/local/tmp/menu.sh
                rm -f /data/local/tmp/menu_live.sh
                rm -f /data/local/tmp/menu.sh
                rm -f /data/local/tmp/menu_live.sh
                rm -f /sdcard/menu.sh
                rm -f /system/bin/menu.sh
                echo ""
                echo "Pembaruan Berhasil! Memuat ulang menu..."
                sleep 2
                # Langsung jalankan ulang menu yang baru tanpa harus keluar
                exec sh /data/local/tmp/menu.sh
            else
                echo ""
                echo "Gagal mengunduh pembaruan! Periksa koneksi internet."
                echo ""
                echo "Tekan Enter untuk melanjutkan..."
                read enter
            fi
            ;;
       3)
            echo "Keluar dari menu..."
        
            break
            ;;
        *)
            echo "Pilihan tidak valid!"
            sleep 1
            ;;
    esac
done
