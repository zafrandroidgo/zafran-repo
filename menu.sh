#!/system/bin/sh
REPO_URL="https://raw.githubusercontent.com/zafrandroidgo/zafran-repo/main"

while true; do
    clear
    echo "=================================="
    echo "   ZAFRAN APP REPOSITORY SERVER   "
    echo "=================================="
    echo "1. Daftar & Install Aplikasi"
    echo "2. Keluar"
    echo "----------------------------------"
    echo -n "Pilih menu [1-2]: "
    read pilihan_utama

    case "$pilihan_utama" in
        1)
            while true; do
                clear
                echo "=================================="
                echo "      PILIH APLIKASI UTK INSTAL   "
                echo "=================================="
                echo "1. Adiryu APK"
                echo "2. Kembali ke Menu Utama"
                echo "----------------------------------"
                echo -n "Pilih aplikasi [1-2]: "
                read pilihan_apk

                case "$pilihan_apk" in
                    1)
                        echo "Mengunduh Adiryu APK..."
                        wget --no-check-certificate -O /data/local/tmp/adiryu.apk "https://files.catbox.moe/oll2cu.apk"
                        if [ $? -eq 0 ]; then
                            echo "Menginstall Adiryu APK..."
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
            echo "Keluar dari menu..."
            break
            ;;
        *)
            echo "Pilihan tidak valid!"
            sleep 1
            ;;
    esac
done
