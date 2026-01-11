# Employee Salary Tracking System (ESTS)

PHP ve MySQL tabanlı çalışan maaş takip sistemi.

## Özellikler

- Çalışan bilgilerini yönetme
- Maaş kayıtlarını takip etme
- Raporlama ve analiz
- Kullanıcı dostu arayüz

## Teknolojiler

- **Backend:** PHP
- **Database:** MySQL/SQL
- **Frontend:** HTML, CSS, JavaScript

## Kurulum

### Gereksinimler

- PHP 7.4 veya üzeri
- MySQL 5.7 veya üzeri
- Apache/Nginx web sunucusu

### Adımlar

1. Projeyi klonlayın:
```bash
git clone https://github.com/Cankinali/employee-salary-tracking-system.git
```

2. Veritabanını oluşturun ve import edin:
```sql
CREATE DATABASE ests_db;
USE ests_db;
SOURCE database.sql;
```

3. Veritabanı bağlantı ayarlarını yapılandırın:
   - `config.php` dosyasını düzenleyin
   - Veritabanı bilgilerinizi girin

4. Web sunucunuzu başlatın ve tarayıcıda açın:
```
http://localhost/employee-salary-tracking-system
```

## Lisans

Bu proje kişisel kullanım içindir.

## İletişim

Sorularınız için GitHub Issues kullanabilirsiniz.
