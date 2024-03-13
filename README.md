# Tutorial 3 Gamedev
## Inaya Rahmanisa - 2106708330
### Proses Pengerjaan Latihan Mandiri: Eksplorasi Mekanika Pergerakan

Pada project.godot, saya membuat beberapa fitur tambahan, diantaranya:
- Double Jump
> Double jump dilakukan dengan menambah variabel  `maxjump = 2` dan  `currentjump = 0`. Lalu, setiap kali karakter melakukan jump maka `currentjump` ditambah 1. Dan setiap kali pemain kembali ke tanah (`is_on_floor()` bernilai true) maka `currentjump` di-reset menjadi 0. Untuk mengecek bahwa jump hanya bisa dilakukan 2 kali, setiap kali pemain menekan tombol up untuk jump, ada pengecekan untuk memastikan `currentjump < maxjump`.
- Animasi dan pergerakan arah ke kanan dan kiri
> Untuk menggerakkan karakter ke kanan dan ke kiri beserta animasinya, saya menggunakan `AnimatedSprite2D` daripada `Sprite2D`. Lalu, saya membuat animasi left dan right, di mana animasi left untuk memutar animasi karakter ketika berjalan ke kiri dan right untuk berjalan ke kanan. Hal ini dilakukan dengan membuat SpriteFrames baru pada frame di AnimatedSprite2D, lalu memasukkan gambar png ber-grid untuk kemudian dipilih dari grid-grid tersebut. Cara menjalankannya dengan membuat function baru, yaitu `animate_walk` di mana setiap kali pemain menekan tombol right atau left maka sprite akan memutar animasi sesuai arahnya

# Tutorial 5 Gamedev
## Inaya Rahmanisa - 2106708330
### Proses Pengerjaan Latihan dan Latihan Mandiri

- Latihan: Membuat Animasi dengan AnimatedSprite<br>
Untuk latihan ini saya membuat animasi player ketika berjalan ke kanan dan ke kiri menggunakan AnimatedSprite2D dan asset dari Kenney. 

- Latihan: Merekam dan Menggubah Suara<br>
Untuk latihan dengan Audacity, saya merekam ambience perpucil dan menaruhnya di /assets

- Latihan: Menambahkan Audio ke Game<br>
Menggunakan AudioStreamPlayer2D, saya menambahkan audio dan menyambungkan dengan code ketika player berjalan dan melompat.

- Latihan Mandiri: Membuat dan Menambah Variasi Aset<br>
Animasi<br>
Selain player, ada pula beberapa items dalam game yang menggunakan AnimatedSprite2D ini yaitu:
    - Fountain: di-play ketika game mulai dimainkan
    - Money: di-play ketika game mulai dimainkan dan berganti animasi ketika dilewati oleh player menjadi card dan sebaliknya
    - Flag: di-play ketika game mulai dimainkan dan diberhentikan ketika player mencapai sana.
Audio SFX<br>
Selain berjalan dan melompat pada Latihan, saya menambahkan audio sfx ketika player berinteraksi dengan Money. 

Audio BGM<br>
Background music ditambahkan menggunakan bgm yang tersedia pada lab ini serta tambahan background music dari free asset di internet.

Interaksi antara objek baru dengan pemain<br>
Pada objek Money, pemain dapat berinteraksi dengan cara melewatinya dan animasinya akan berubah dari Money menjadi Card dan sebaliknya. Begitu pula pada Flag, animasinya akan berhenti ketika player mencapai Flag.

Audio Feedback<p>
Audio feedback yang diimplementasi adalah ketika player bergerak melewati Money, ada suara uang yang dikeluarkan ketika Money berubah wujud menjadi Card.
