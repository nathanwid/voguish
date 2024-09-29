## Run the application
**Note**: Make sure you have installed Composer, PHP, and XAMPP on your device. If you haven't, follow the instructions below:
- [Composer](https://www.geeksforgeeks.org/how-to-install-php-composer-on-windows/).
- [XAMPP](https://www.apachefriends.org/download.html).
- [PHP](https://www.geeksforgeeks.org/how-to-install-php-in-windows-10/).

If you have Composer, PHP, and XAMPP installed on your device, follow the instructions below:
1. Clone the repository

```bash
git clone https://github.com/dimasutamaa/voguish-online-shop.git
```

3. Download and import voguish_online_shop.sql database to phpmyadmin

4. Install composer to your project repository

```bash
composer install
```

4. Copy the `.env` file:

```bash
cp .env.example .env
```

5. Update the `.env` database section with your voguish_online_shop database credentials:

```bash
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=voguish_online_shop
DB_USERNAME=root
DB_PASSWORD=
```

6. Generate Application Key

```bash
php artisan key:generate
```

7. Run the migrations:

```bash
php artisan migrate
```

8. Start the server:

```bash
php artisan serve
```

9. Go to [http://localhost:8000](http://localhost:8000)


## Accounts
**Customer**:
- john@example.com
- mark@example.com
```bash
password: 12345
```

**Admin**:
- admin@voguish.com
```bash
password: admin
```
Go to [http://localhost:8000/admin/login](http://localhost:8000/admin/login) to access the admin panel.


## Mailing features
- Contact Us
- Sending the order invoice to the customer's email after clicking 'Pay Now'
- Manually sending the order invoice to the admin's email in 'Order Detail' on the admin panel
- Sending a changing password link from the forgot password feature to the customer's email
  
**Note**: To be able to perform the mailing features, you need to manually configure the mailing settings.
