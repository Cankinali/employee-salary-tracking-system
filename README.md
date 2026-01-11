Employee Salary Tracking System (ESTS)
PHP ve MySQL tabanlı çalışan maaş takip sistemi.
Özellikler

Çalışan bilgilerini yönetme
Maaş kayıtlarını takip etme
Raporlama ve analiz
Kullanıcı dostu arayüz

Teknolojiler

Backend: PHP
Database: MySQL/SQL
Frontend: HTML, CSS, JavaScript

Kurulum
Gereksinimler

PHP 7.4 veya üzeri
MySQL 5.7 veya üzeri
Apache/Nginx web sunucusu

Adımlar

Projeyi klonlayın:

bashgit clone https://github.com/Cankinali/employee-salary-tracking-system.git

Veritabanını oluşturun ve import edin:

sqlCREATE DATABASE ests_db;
USE ests_db;
SOURCE database.sql;

Veritabanı bağlantı ayarlarını yapılandırın:

config.php dosyasını düzenleyin
Veritabanı bilgilerinizi girin


Web sunucunuzu başlatın ve tarayıcıda açın:

http://localhost/employee-salary-tracking-system
