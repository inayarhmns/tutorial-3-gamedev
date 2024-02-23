# Tutorial 3 Gamedev
## Inaya Rahmanisa - 2106708330
### Proses Pengerjaan Latihan Mandiri: Eksplorasi Mekanika Pergerakan

Pada project.godot, saya membuat beberapa fitur tambahan, diantaranya:
- Double Jump
> Double jump dilakukan dengan menambah variabel  `maxjump = 2` dan  `currentjump = 0`. Lalu, setiap kali karakter melakukan jump maka `currentjump` ditambah 1. Dan setiap kali pemain kembali ke tanah (`is_on_floor()` bernilai true) maka `currentjump` di-reset menjadi 0. Untuk mengecek bahwa jump hanya bisa dilakukan 2 kali, setiap kali pemain menekan tombol up untuk jump, ada pengecekan untuk memastikan `currentjump < maxjump`.
- Animasi dan pergerakan arah ke kanan dan kiri
> Untuk menggerakkan karakter ke kanan dan ke kiri beserta animasinya, saya menggunakan `AnimatedSprite2D` daripada `Sprite2D`. Lalu, saya membuat animasi left dan right, di mana animasi left untuk memutar animasi karakter ketika berjalan ke kiri dan right untuk berjalan ke kanan. Hal ini dilakukan dengan membuat SpriteFrames baru pada frame di AnimatedSprite2D, lalu memasukkan gambar png ber-grid untuk kemudian dipilih dari grid-grid tersebut. Cara menjalankannya dengan membuat function baru, yaitu `animate_walk` di mana setiap kali pemain menekan tombol right atau left maka sprite akan memutar animasi sesuai arahnya
