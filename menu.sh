#!/system/bin/sh
# URL dasar repository GitHub Anda
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

    case $pilihan_utama in
        1)
            while true; do
                clear
                echo "=================================="
                echo "      PILIH APLIKASI UTK INSTAL   "
                echo "=================================="
                echo "1. Zafran APK (Aplikasi Utama)"
                echo "2. Aplikasi Kedua (Contoh: YouTube Vanced/Lainnya)"
                echo "3. Aplikasi Ketiga"
                echo "4. Kembali ke Menu Utama"
                echo "----------------------------------"
                echo -n "Pilih aplikasi [1-4]: "
                read pilihan_apk

                case $pilihan_apk in
                    1)
                        echo "Mengunduh Zafran APK..."
                        curl -L -o /data/local/tmp/adiryu.apk "https://github.com/zafrandroidgo/zafran-repo/releases/download/v1.0.0/adiryu.apk"
                        if [ $? -eq 0 ]; then
                            echo "Menginstall Zafran APK..."
                            pm install -r /data/local/tmp/zafran.apk
                            echo "Instalasi Selesai!"
                        else
                            echo "Gagal mengunduh! Periksa koneksi."
                        fi
                        echo ""
                        echo "Tekan Enter untuk melanjutkan..."
                        read enter
                        ;;
                    2)
                        echo "Mengunduh Aplikasi Kedua..."
                        # Ganti 'appkedua.apk' dengan nama file apk kedua Anda di GitHub
                        curl -L -o /data/local/tmp/appkedua.apk "$REPO_URL/appkedua.apk"
                        if [ $? -eq 0 ]; then
                            echo "Menginstall Aplikasi Kedua..."
                            pm install -r /data/local/tmp/appkedua.apk
                            echo "Instalasi Selesai!"
                        else
                            echo "Gagal mengunduh! Periksa koneksi."
                        fi
                        echo ""
                        echo "Tekan Enter untuk melanjutkan..."
                        read enter
                        ;;
                    3)
                        echo "Mengunduh Aplikasi Ketiga..."
                        # Ganti 'appketiga.apk' dengan nama file apk ketiga Anda di GitHub
                        curl -L -o /data/local/tmp/appketiga.apk "$REPO_URL/appketiga.apk"
                        if [ $? -eq 0 ]; then
                            echo "Menginstall Aplikasi Ketiga..."
                            pm install -r /data/local/tmp/appketiga.apk
                            echo "Instalasi Selesai!"
                        else
                            echo "Gagal mengunduh! Periksa koneksi."
                        fi
                        echo ""
                        echo "Tekan Enter untuk melanjutkan..."
                        read enter
                        ;;
                    4)
                        # Keluar dari sub-menu kembali ke menu utama
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
