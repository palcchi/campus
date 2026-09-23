# Klinik Tim Malam 26

Project menggunakan:

- CodeIgniter 4.7.4+
- Bootstrap 5
- PHP 8.3
- MariaDB 11.4
- phpMyAdmin
- Docker Compose

## Jalankan di GitHub Codespaces

Dari root repository:

```bash
git pull origin main
cd klinik_timalam26
cp -n env .env
docker compose up --build
```

Jika `.env` sudah ada, perintah `cp -n` tidak akan menimpanya.

## Akses

- CodeIgniter: port **8080**
- phpMyAdmin: port **8081**
- MariaDB: port **3306**

Di Codespaces buka tab **Ports**, lalu buka port 8080 atau 8081.

## Database

Database default:

```text
Host: db
Database: klinik
Username: klinik
Password: klinik123
Port: 3306
```

Login phpMyAdmin:

```text
Server: db
Username: klinik
Password: klinik123
```

Root database:

```text
Username: root
Password: root
```

## Perintah penting

Menjalankan:

```bash
docker compose up --build
```

Menjalankan di background:

```bash
docker compose up -d --build
```

Mematikan:

```bash
docker compose down
```

Cek CodeIgniter:

```bash
docker compose exec app php spark --version
```

Cek ekstensi PHP:

```bash
docker compose exec app php -m | grep -E "intl|mysqli|pdo_mysql"
```

## Bootstrap

Bootstrap sudah dimuat melalui CDN di:

```text
app/Views/home.php
```
