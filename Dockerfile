# PHP와 Apache가 포함된 베이스 이미지 사용
FROM php:7.4-apache

# PHP MySQL 확장 설치
RUN docker-php-ext-install mysqli pdo pdo_mysql

# 로컬의 www 디렉토리를 컨테이너의 /var/www/html 디렉토리로 복사
COPY . /var/www/html/

# Apache 설정
# RUN a2enmod rewrite

# Apache를 실행
CMD ["apache2-foreground"]
