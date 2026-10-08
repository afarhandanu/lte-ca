# Force LTE CA Reporting — GitHub Actions builder

Bahan build modul Magisk khusus framework.jar yang diberikan pengguna (ROM dilaporkan LineageOS 23.2). Model HP belum diketahui. Ini bukan modul universal.

## Cara build

1. Ekstrak paket proyek ini. Buat repository GitHub, sebaiknya private.
2. Upload seluruh isi proyek ke root repository, termasuk folder tersembunyi `.github`. Jangan upload ZIP proyek sebagai satu file.
3. Framework disertakan sebagai `input/framework.jar.gz` (sekitar 16 MB). Upload file ini apa adanya, jangan diekstrak lagi. Workflow mengekstraknya dan memeriksa SHA-256 otomatis. Pastikan `.github/workflows/build.yml` ikut terunggah; jika folder tersembunyi tidak muncul, buat file melalui Add file → Create new file dengan path tersebut dan salin isinya. Tidak perlu framework.jar utuh atau file .part. Jangan gunakan Git LFS dengan workflow ini.
4. Di tab Actions, pilih **Build Magisk ZIP**, lalu **Run workflow**. Workflow harus ada di default branch.
5. Setelah sukses, unduh artifact **Force-LTE-CA-…**. Ekstrak pembungkus artifact tersebut; file instalasinya adalah `Force-LTE-CA-<hash>-<run>-<attempt>-<unique>.zip`.
6. Instal ZIP modul melalui aplikasi Magisk, lalu reboot. Jangan flash ZIP proyek atau ZIP pembungkus artifact.

## Perubahan

Hanya `NetworkRegistrationInfo.setAccessNetworkTechnology(int)` pada `classes4.dex` yang dipatch. DEX lain dan seluruh entri JAR lainnya dipertahankan. Smali/baksmali 3.0.10 (fork com.android.tools.smali) digunakan untuk DEX 039; parameter API 30 memilih format bytecode yang sama, bukan mengubah versi ROM menjadi Android 11.

Saat properti `persist.sys.radio.force_lte_ca` aktif, input LTE (13) menetapkan flag CA menjadi true. Input LTE_CA (19) tetap dinormalisasi ke LTE dengan flag CA true, seperti kode awal. Perilaku tanpa reset flag eksplisit dipertahankan dari bahan patch. Modul mengaktifkan properti saat boot melalui `system.prop` Magisk; tidak menyediakan switch baru dalam Settings dan tidak mengedit Settings.apk.

Tidak mengunci LTE, mengubah APN/band, mengaktifkan VoLTE, atau memerintahkan modem melakukan CA. Ikon LTE+/4G+ maupun peningkatan kecepatan tidak dijamin.

## Kecocokan dan pemulihan

SHA-256 input dihitung otomatis dari framework.jar yang diunggah setiap build. Tidak ada checksum sumber yang perlu diedit manual. Nilai hasil perhitungan disimpan pada build-report.json dan ditanam dalam installer Magisk.

Installer membandingkan framework yang sedang terlihat di `/system/framework/framework.jar` dengan hash ini. Perbedaan menyebabkan instalasi dibatalkan. Pemeriksaan ini bukan jaminan bisa boot: boot-image/ART, optimisasi vendor, dan konflik modul lain tetap bisa berpengaruh. Belum diuji pada HP.

**Hapus/nonaktifkan modul dan reboot sebelum OTA atau mengganti ROM.** Pemeriksaan hash berlangsung saat instalasi, bukan proteksi otomatis terhadap OTA. Jangan menimpa modul framework lain. Build sengaja tidak menghapus cache ART, memodifikasi boot image, atau menonaktifkan verifikasi sistem.

Jika sistem masih bisa boot: nonaktifkan/hapus modul di Magisk, lalu reboot. Jika bootloop dan recovery dapat mengakses/dekripsi `/data`, buat file `/data/adb/modules/force_lte_ca_exact/disable`, lalu reboot. Jika recovery tidak bisa mengakses `/data`, prosedur pemulihan harus mengikuti perangkat/Magisk yang dipakai; siapkan akses pemulihan sebelum mencoba.

## Validasi build

Pipeline menghitung hash input, memeriksa integritas JAR dan checksum DEX, melakukan disassembly ulang hasil kompilasi, dan membandingkan seluruh kelas di DEX target. Build gagal jika ada perubahan di luar method target. Laporan checksum dan method asli tersedia di artifact. Ini validasi statis, bukan pengujian boot.

Paket proyek disiapkan dan diperiksa secara lokal, tetapi kompilasi Java/DEX belum dijalankan di lingkungan pembuat karena akses jaringan untuk dependency tidak tersedia. Hasil GitHub Actions perlu diperiksa; jangan menganggap ZIP modul sudah diuji pada perangkat.

Referensi: https://topjohnwu.github.io/Magisk/guides.html dan https://github.com/JesusFreke/smali/wiki


Untuk mengganti framework, upload input/framework.jar.gz baru dan jalankan workflow baru. Checksum otomatis tidak menjamin kompatibilitas patch dengan ROM lain; target tetap kelas NetworkRegistrationInfo pada classes4.dex. Installer tetap menolak framework HP yang berbeda dari sumber build.


Setiap build menggunakan subfolder build dan dist yang unik. Folder lama tidak dihapus dan tidak ikut diunggah sebagai artifact. Nama ZIP/artifact memuat hash framework, run ID, attempt, dan suffix acak. ID modul Magisk tetap force_lte_ca_exact agar pembaruan menggantikan modul lama, bukan memasang dua pengganti framework sekaligus.
