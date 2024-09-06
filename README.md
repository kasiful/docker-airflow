# Proyek Data Science dan Orkestrasi

## Deskripsi

Proyek ini menyediakan lingkungan kerja terintegrasi untuk pengembangan data science dan orkestrasi alur kerja menggunakan Docker. Lingkungan ini mencakup:

- **JupyterLab**: Platform notebook interaktif untuk analisis data dan eksperimen.
- **Apache Airflow**: Alat orkestrasi alur kerja untuk menjadwalkan dan mengelola tugas-tugas.
- **MySQL**: Sistem manajemen basis data relasional.
- **phpMyAdmin**: Alat antarmuka web untuk mengelola MySQL.

Dengan setup ini, Anda dapat mengembangkan, menjalankan, dan memantau pipeline data dengan mudah.

## Struktur Proyek

- **Dockerfile**: Konfigurasi untuk membangun image dengan JupyterLab dan Apache Airflow.
- **docker-compose.yml**: File konfigurasi untuk menjalankan semua layanan menggunakan Docker Compose.
- **config/jupyter_notebook_config.py**: File konfigurasi JupyterLab untuk pengaturan token.
- **data/**: Direktori untuk menyimpan data JupyterLab, DAGs Airflow, dan data MySQL.
