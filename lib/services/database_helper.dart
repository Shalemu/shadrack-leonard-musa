import 'package:mauzoApp/models/account.dart';
import 'package:mauzoApp/models/account_category';
import 'package:mauzoApp/models/audit.dart';
import 'package:mauzoApp/models/bank.dart';
import 'package:mauzoApp/models/brand.dart';
import 'package:mauzoApp/models/bundle.dart';
import 'package:mauzoApp/models/business_category.dart';
import 'package:mauzoApp/models/business_type.dart';
import 'package:mauzoApp/models/department.dart';
import 'package:mauzoApp/models/designation.dart';
import 'package:mauzoApp/models/employee_assigned_shop.dart';
import 'package:mauzoApp/models/event.dart';
import 'package:mauzoApp/models/event_template.dart';
import 'package:mauzoApp/models/expenses.dart';
import 'package:mauzoApp/models/expenses_category';
import 'package:mauzoApp/models/failed_job.dart';
import 'package:mauzoApp/models/general_setting.dart';
import 'package:mauzoApp/models/invoice.dart';
import 'package:mauzoApp/models/item.dart';
import 'package:mauzoApp/models/item_category.dart';
import 'package:mauzoApp/models/item_image.dart';
import 'package:mauzoApp/models/item_sub_category.dart';
import 'package:mauzoApp/models/item_transfer.dart';
import 'package:mauzoApp/models/item_variants.dart';
import 'package:mauzoApp/models/job.dart';
import 'package:mauzoApp/models/job_batch.dart';
import 'package:mauzoApp/models/migration.dart';
import 'package:mauzoApp/models/product.dart';
import 'package:mauzoApp/models/purchase_order.dart';
import 'package:mauzoApp/models/quotation.dart';
import 'package:mauzoApp/models/quotationitem.dart';
import 'package:mauzoApp/models/role.dart';
import 'package:mauzoApp/models/session.dart';
import 'package:mauzoApp/models/shop.dart';
import 'package:mauzoApp/models/tax_type.dart';
import 'package:mauzoApp/models/transaction.dart';
import 'package:mauzoApp/models/transaction_on_hold.dart';
import 'package:mauzoApp/models/unit.dart';
import 'package:mauzoApp/models/user.dart';
import 'package:mauzoApp/models/warranties.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:mauzoApp/models/cart_model.dart';
import 'package:mauzoApp/models/user_detail.dart';
 // Import the Item model
 // Import the ItemCategory model

class DatabaseHelper {
  static const int _version = 1;
  static const String _dbName = "Cart.db";

  // Open or create the database
  static Future<Database> _getDB() async {
    return openDatabase(
      join(await getDatabasesPath(), _dbName),
      onCreate: (db, version) async {
        await db.execute(
          '''
          CREATE TABLE cart_items(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            transaction_id INTEGER NOT NULL,
            item_id INTEGER NOT NULL,
            item_name TEXT NOT NULL,
            sale_price REAL NOT NULL,
            quantity INTEGER NOT NULL,
            total REAL,
            discount_value REAL DEFAULT 0.00,
            price REAL,
            img TEXT,
            deleted_at TEXT,
            created_at TEXT,
            updated_at TEXT
          );
          '''
        );

        await db.execute(
          '''
          CREATE TABLE items(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            barcode TEXT,
            invoice TEXT,
            type INTEGER NOT NULL,
            name TEXT NOT NULL,
            img TEXT NOT NULL DEFAULT 'default.jpg',
            item_image_id INTEGER,
            product_id INTEGER,
            variant_id INTEGER,
            purchase_price REAL NOT NULL,
            sale_price REAL NOT NULL,
            sale_robo_price TEXT,
            sale_nusu_price TEXT,
            sale_nusurobo_price TEXT,
            can_expire INTEGER NOT NULL DEFAULT 0,
            has_warrante INTEGER NOT NULL DEFAULT 0,
            show_manufacturer INTEGER NOT NULL DEFAULT 0,
            warrante_time TEXT,
            unit TEXT NOT NULL,
            status INTEGER NOT NULL,
            expr_date TEXT,
            origin_product INTEGER NOT NULL DEFAULT 0,
            variant_value TEXT,
            variant_quantity TEXT,
            manufacture_date TEXT,
            deleted_at TEXT,
            created_at TEXT,
            updated_at TEXT
          );
          '''
        );
         await db.execute(
          '''
          CREATE TABLE users(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            username TEXT NOT NULL,
            phone TEXT NOT NULL,
            email TEXT NOT NULL,
            password TEXT NOT NULL,
            code TEXT NOT NULL,
            expires_at TEXT NOT NULL,
            verified INTEGER NOT NULL DEFAULT 0,
            super_user INTEGER NOT NULL DEFAULT 1,
            password_reset INTEGER NOT NULL DEFAULT 0,
            login_trials INTEGER NOT NULL DEFAULT 0,
            admin_id TEXT DEFAULT NULL,
            profile_image TEXT DEFAULT NULL,
            deleted_at TEXT,
            verified_at TEXT DEFAULT NULL,
            role_id INTEGER NOT NULL,
            user_type TEXT NOT NULL DEFAULT 'Retailer',
            created_at TEXT DEFAULT NULL,
            updated_at TEXT DEFAULT NULL
          );
          '''
        );
           await db.execute(
          '''
          CREATE TABLE user_details(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            last_login TEXT,
            active INTEGER NOT NULL DEFAULT 1,
            first_time INTEGER NOT NULL DEFAULT 1,
            expiring_date TEXT,
            postal_address TEXT,
            physical_address TEXT,
            photo TEXT,
            payment_status INTEGER NOT NULL DEFAULT 0, 
            lang INTEGER NOT NULL DEFAULT 0,
            owner_id INTEGER NOT NULL DEFAULT 0,
            email_sub INTEGER NOT NULL DEFAULT 1,
            bundle_id INTEGER NOT NULL DEFAULT 0,
            bundle_qty INTEGER NOT NULL DEFAULT 0,
            last_pay TEXT,
            shop_limit INTEGER NOT NULL DEFAULT 1,
            deleted_at TEXT,
            user_id INTEGER NOT NULL,
            created_at TEXT,
            updated_at TEXT
          );
          '''
        );
    

        await db.execute(
          '''
          CREATE TABLE item_categories(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            admin_id INTEGER,
            deleted_at TEXT,
            created_at TEXT,
            updated_at TEXT
          );
          '''
        );
             await db.execute(
          '''
          CREATE TABLE warranties(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            discription TEXT,
            duration TEXT NOT NULL,
            status INTEGER NOT NULL DEFAULT 0,
            period TEXT NOT NULL,
            admin_id INTEGER NOT NULL,
            deleted_at TEXT,
            created_at TEXT,
            updated_at TEXT
          );
          '''
        );
        await db.execute(
          '''
          CREATE TABLE units(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            symbol TEXT DEFAULT NULL,
            admin_id INTEGER DEFAULT NULL,
            deleted_at TEXT DEFAULT NULL,
            created_at TEXT DEFAULT NULL,
            updated_at TEXT DEFAULT NULL
          );
          '''
        );
         await db.execute(
          '''
          INSERT INTO units (id, name, symbol) VALUES 
          (1, 'Piece', 'pc'),
          (2, 'Kilogram', 'kg'),
          (3, 'Gram', 'g'),
          (4, 'Liter', 'L'),
          (5, 'Milliliter', 'mL'),
          (6, 'Pack', 'pk'),
          (7, 'Box', 'bx'),
          (8, 'Dozen', 'dz'),
          (9, 'Meter', 'm'),
          (10, 'Centimeter', 'cm'),
          (11, 'Inch', 'in'),
          (12, 'Foot', 'ft'),
          (13, 'Yard', 'yd'),
          (14, 'Gallon', 'gal'),
          (15, 'Quart', 'qt'),
          (16, 'Pint', 'pt'),
          (17, 'Ounce', 'oz'),
          (18, 'Pound', 'lb'),
          (19, 'Millimeter', 'mm'),
          (20, 'Square Meter', 'm²'),
          (21, 'Cubic Meter', 'm³');
          '''
        );
         await db.execute(
          '''
          CREATE TABLE transaction_on_holds(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            transaction_id INTEGER NOT NULL,
            payment_hold_reference TEXT DEFAULT NULL,
            status INTEGER NOT NULL DEFAULT 0,
            deleted_at TEXT DEFAULT NULL,
            created_at TEXT DEFAULT NULL,
            updated_at TEXT DEFAULT NULL
          );
          '''
        );
         await db.execute('''
          CREATE TABLE transactions (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            total_bill DECIMAL(18, 2) NOT NULL,
            payment_mode TEXT NOT NULL,
            phone TEXT,
            delivery_mode TEXT,
            description TEXT,
            discount_value DECIMAL(8, 2),
            discount DECIMAL(18, 2),
            tax_percentage TEXT,
            gst_tax DECIMAL(18, 2),
            shipping_value DECIMAL(8, 2),
            shipping DECIMAL(18, 2),
            due DECIMAL(18, 2),
            amount_change DECIMAL(10, 2),
            total_payable DECIMAL(18, 2),
            sub_total DECIMAL(18, 2),
            transaction_id TEXT NOT NULL,
            status TEXT DEFAULT 'pending',
            sold_by INTEGER,
            supplied_by INTEGER,
            sold_to INTEGER,
            deleted_at TEXT,
            created_at TEXT,
            updated_at TEXT
          );
        ''');
         await db.execute('''
          CREATE TABLE tax_types (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            admin_id INTEGER,
            deleted_at TEXT,
            created_at TEXT,
            updated_at TEXT
          );
        ''');

        // Insert default tax types data
        await db.execute('''
          INSERT INTO tax_types (id, name, admin_id, deleted_at, created_at, updated_at) VALUES
          (1, 'Income tax', NULL, NULL, NULL, NULL),
          (2, 'Property tax', NULL, NULL, NULL, NULL),
          (3, 'Sales tax', NULL, NULL, NULL, NULL),
          (4, 'Ad Valorem And Specific tax', NULL, NULL, NULL, NULL),
          (5, 'Donation tax', NULL, NULL, NULL, NULL),
          (6, 'Indirect tax', NULL, NULL, NULL, NULL),
          (7, 'Proportional tax', NULL, NULL, NULL, NULL),
          (8, 'Other tax', NULL, NULL, NULL, NULL);
        ''');
         await db.execute('''
          CREATE TABLE shops (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            type INTEGER NOT NULL DEFAULT 1,
            business_category INTEGER,
            address TEXT,
            status INTEGER NOT NULL DEFAULT 1,
            admin_id INTEGER,
            deleted_at TEXT,
            created_at TEXT,
            updated_at TEXT
          );
        ''');

        // Insert sample data into the shops table
        await db.execute('''
          INSERT INTO shops (id, name, type, business_category, address, status, admin_id, deleted_at, created_at, updated_at) VALUES
          (1, 'test1', 1, 2, 'Dar es salaam', 1, 1, NULL, '2024-09-01 22:38:45', '2024-09-01 22:38:45'),
          (2, 'test2', 1, 1, 'Dar es salaam', 1, 1, NULL, '2024-09-01 22:39:02', '2024-09-01 22:39:02'),
          (3, 'test 3', 1, 1, 'Dar', 1, 1, NULL, '2024-09-01 22:39:12', '2024-09-01 22:39:12'),
          (4, 'test 4', 1, 1, 'Mbeya', 1, 1, NULL, '2024-09-01 22:39:27', '2024-09-01 22:39:27');
        ''');
         await db.execute('''
          CREATE TABLE sessions (
            id TEXT PRIMARY KEY,
            user_id INTEGER,
            ip_address TEXT,
            user_agent TEXT,
            payload TEXT NOT NULL,
            last_activity INTEGER NOT NULL
          );
        ''');

        // Insert sample data into the sessions table
          await db.execute('''
          CREATE TABLE role_has_permissions (
            permission_id INTEGER UNSIGNED NOT NULL,
            role_id INTEGER UNSIGNED NOT NULL
          );
        ''');
              await db.execute('''
          CREATE TABLE roles (
            id INTEGER UNSIGNED PRIMARY KEY,
            name TEXT NOT NULL,
            shop_id INTEGER,
            type INTEGER NOT NULL DEFAULT 1,
            admin_id INTEGER,
            guard_name TEXT NOT NULL,
            deleted_at TIMESTAMP,
            created_at TIMESTAMP,
            updated_at TIMESTAMP
          );
        ''');
         await db.execute('''
          CREATE TABLE quotation_items (
            id INTEGER UNSIGNED PRIMARY KEY,
            quotation_id INTEGER,
            item_id INTEGER,
            quantity INTEGER NOT NULL,
            purchase_price DECIMAL(10,2) NOT NULL,
            discount DECIMAL(10,2) NOT NULL DEFAULT 0.00,
            tax_rate DECIMAL(10,2) NOT NULL DEFAULT 0.00,
            tax_amount DECIMAL(10,2) NOT NULL DEFAULT 0.00,
            total_cost DECIMAL(10,2) NOT NULL,
            created_at TIMESTAMP,
            updated_at TIMESTAMP,
            deleted_at TIMESTAMP
          );
        ''');
           await db.execute('''
          CREATE TABLE quotations (
            id INTEGER UNSIGNED PRIMARY KEY,
            supplier_id INTEGER,
            retailer_id INTEGER,
            issue_date DATE NOT NULL,
            quotation_number TEXT NOT NULL,
            order_tax DECIMAL(10,2) NOT NULL DEFAULT 0.00,
            discount DECIMAL(10,2) NOT NULL DEFAULT 0.00,
            shipping DECIMAL(10,2) NOT NULL DEFAULT 0.00,
            total_amount DECIMAL(10,2) NOT NULL DEFAULT 0.00,
            status ENUM('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending',
            description TEXT,
            created_at TIMESTAMP,
            updated_at TIMESTAMP,
            deleted_at TIMESTAMP
          );
        ''');
         await db.execute('''
          CREATE TABLE purchase_orders (
            id INTEGER UNSIGNED PRIMARY KEY,
            quotation_id INTEGER,
            total_amount DECIMAL(18,2) NOT NULL,
            status ENUM('Pending','Confirmed','Shipped') NOT NULL DEFAULT 'Pending',
            created_at TIMESTAMP,
            updated_at TIMESTAMP,
            deleted_at TIMESTAMP
          );
        ''');
          await db.execute('''
          CREATE TABLE products (
            id INTEGER UNSIGNED PRIMARY KEY,
            name TEXT NOT NULL,
            item_code TEXT,
            barcode_symbology TEXT,
            description TEXT,
            discount_type TEXT,
            discount_value TEXT,
            product_type INTEGER NOT NULL,
            brand_id INTEGER NOT NULL,
            category_id INTEGER,
            subcategory_id INTEGER,
            min_stock INTEGER NOT NULL DEFAULT 1,
            store_id INTEGER,
            shop_id INTEGER UNSIGNED,
            admin_id INTEGER NOT NULL,
            tax_type INTEGER,
            quantity INTEGER,
            quantity_alert INTEGER,
            selling_type TEXT,
            deleted_at TIMESTAMP,
            created_at TIMESTAMP,
            updated_at TIMESTAMP
          );
        ''');


          await db.execute('''
          CREATE TABLE password_reset_tokens (
            email TEXT NOT NULL,
            token TEXT NOT NULL,
            created_at TIMESTAMP
          );
        ''');
         await db.execute('''
          CREATE TABLE accounts (
            id INTEGER UNSIGNED PRIMARY KEY,
            account_provider TEXT NOT NULL,
            account_number TEXT NOT NULL,
            account_name TEXT,
            account_type TEXT,
            account_status TEXT NOT NULL DEFAULT '1',
            admin_id INTEGER,
            account_category INTEGER NOT NULL,
            deleted_at TIMESTAMP,
            created_at TIMESTAMP,
            updated_at TIMESTAMP
          );
        ''');
         await db.execute('''
          CREATE TABLE account_categories (
            id INTEGER UNSIGNED PRIMARY KEY,
            name TEXT NOT NULL,
            status TINYINT(1) NOT NULL DEFAULT 1,
            admin_id INTEGER,
            deleted_at TIMESTAMP,
            created_at TIMESTAMP,
            updated_at TIMESTAMP
          );
        ''');
           await db.execute('''
          CREATE TABLE audits (
            id INTEGER UNSIGNED PRIMARY KEY,
            user_type TEXT,
            user_id INTEGER UNSIGNED,
            event TEXT NOT NULL,
            auditable_type TEXT NOT NULL,
            auditable_id INTEGER UNSIGNED NOT NULL,
            old_values TEXT,
            new_values TEXT,
            url TEXT,
            ip_address TEXT,
            user_agent TEXT,
            tags TEXT,
            created_at TIMESTAMP,
            updated_at TIMESTAMP
          );
        ''');
             await db.execute('''
          CREATE TABLE banks (
            id INTEGER UNSIGNED PRIMARY KEY,
            name VARCHAR(100) NOT NULL,
            deleted_at TIMESTAMP,
            created_at TIMESTAMP,
            updated_at TIMESTAMP
          );
        ''');
         await db.execute('''
          CREATE TABLE brands (
            id INTEGER UNSIGNED PRIMARY KEY,
            name VARCHAR(255) NOT NULL,
            logo VARCHAR(255),
            admin_id INTEGER,
            deleted_at TIMESTAMP,
            created_at TIMESTAMP,
            updated_at TIMESTAMP
          );
        ''');
         await db.execute('''
          CREATE TABLE bundles (
            id INTEGER UNSIGNED PRIMARY KEY,
            name VARCHAR(100) NOT NULL,
            price VARCHAR(110) NOT NULL,
            shops INTEGER NOT NULL,
            subscribers INTEGER,
            duration VARCHAR(110) NOT NULL,
            deleted_at TIMESTAMP,
            created_at TIMESTAMP,
            updated_at TIMESTAMP
          );
        ''');
          await db.execute('''
          CREATE TABLE business_categories (
            id INTEGER UNSIGNED PRIMARY KEY,
            name VARCHAR(255) NOT NULL,
            status INTEGER NOT NULL,
            deleted_at TIMESTAMP,
            created_at TIMESTAMP,
            updated_at TIMESTAMP
          );
        ''');
        await db.execute('''
          CREATE TABLE business_types (
            id INTEGER UNSIGNED PRIMARY KEY,
            name VARCHAR(255) NOT NULL,
            status INTEGER NOT NULL,
            created_at TIMESTAMP,
            updated_at TIMESTAMP,
            deleted_at TIMESTAMP
          );
        ''');
            await db.execute('''
          CREATE TABLE cache (
            `key` VARCHAR(255) NOT NULL,
            `value` MEDIUMTEXT NOT NULL,
            `expiration` INTEGER NOT NULL,
            PRIMARY KEY (`key`)
          );
        ''');
           await db.execute('''
          CREATE TABLE cache_locks (
            `key` VARCHAR(255) NOT NULL,
            `owner` VARCHAR(255) NOT NULL,
            `expiration` INTEGER NOT NULL,
            PRIMARY KEY (`key`)
          );
        ''');
        await db.execute('''
          CREATE TABLE customer_supplier_accounts (
            id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
            name VARCHAR(255) NOT NULL,
            phone VARCHAR(15) NOT NULL,
            is_customer TINYINT(1) NOT NULL DEFAULT 1,
            email VARCHAR(255) DEFAULT NULL,
            profile_image VARCHAR(255) DEFAULT NULL,
            admin_id INT(11) NOT NULL,
            deleted_at TIMESTAMP NULL DEFAULT NULL,
            created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
            updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
            PRIMARY KEY (id)
          );
        ''');
              await db.execute('''
          CREATE TABLE departments (
            `id` BIGINT(20) UNSIGNED NOT NULL,
            `name` VARCHAR(255) NOT NULL,
            `hod` VARCHAR(255) DEFAULT NULL,
            `status` VARCHAR(255) NOT NULL DEFAULT '1',
            `admin_id` INT(11) NOT NULL,
            `deleted_at` TIMESTAMP NULL DEFAULT NULL,
            `created_at` TIMESTAMP NULL DEFAULT NULL,
            `updated_at` TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (`id`)
          );
        ''');
        await db.execute('''
          CREATE TABLE designations (
            `id` BIGINT(20) UNSIGNED NOT NULL,
            `name` VARCHAR(255) NOT NULL,
            `status` VARCHAR(255) NOT NULL DEFAULT '1',
            `admin_id` INT(11) NOT NULL,
            `deleted_at` TIMESTAMP NULL DEFAULT NULL,
            `created_at` TIMESTAMP NULL DEFAULT NULL,
            `updated_at` TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (`id`)
          );
        ''');

            await db.execute('''
          CREATE TABLE employee_assigned_shops (
            `id` BIGINT(20) UNSIGNED NOT NULL,
            `shop` INT(11) NOT NULL,
            `employee` INT(11) NOT NULL,
            `admin_id` INT(11) NOT NULL,
            `deleted_at` TIMESTAMP NULL DEFAULT NULL,
            `created_at` TIMESTAMP NULL DEFAULT NULL,
            `updated_at` TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (`id`)
          );
        ''');
             await db.execute('''
          CREATE TABLE events (
            `id` BIGINT(20) UNSIGNED NOT NULL,
            `name` VARCHAR(255) NOT NULL,
            `number_of_people` INT(11) NOT NULL,
            `is_group` TINYINT(1) NOT NULL DEFAULT 0,
            `status` TINYINT(1) NOT NULL DEFAULT 1,
            `phone_number` VARCHAR(255) NOT NULL,
            `event_date` VARCHAR(255) NOT NULL,
            `otp` INT(11) DEFAULT NULL,
            `admin_id` INT(11) DEFAULT NULL,
            `deleted_at` TIMESTAMP NULL DEFAULT NULL,
            `created_at` TIMESTAMP NULL DEFAULT NULL,
            `updated_at` TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (`id`)
          );
        ''');
           await db.execute('''
          CREATE TABLE event_templates (
            `id` BIGINT(20) UNSIGNED NOT NULL,
            `card_image` VARCHAR(255) NOT NULL,
            `status` TINYINT(1) NOT NULL DEFAULT 0,
            `number_of_like` VARCHAR(255) DEFAULT NULL,
            `number_of_dislike` VARCHAR(255) DEFAULT NULL,
            `admin_id` INT(11) DEFAULT NULL,
            `deleted_at` TIMESTAMP NULL DEFAULT NULL,
            `created_at` TIMESTAMP NULL DEFAULT NULL,
            `updated_at` TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (`id`)
          );
        ''');
        await db.execute('''
          CREATE TABLE expenses (
            `id` BIGINT(20) UNSIGNED NOT NULL,
            `name` VARCHAR(255) NOT NULL,
            `date` DATE NOT NULL,
            `amount` BIGINT(20) NOT NULL,
            `description` TEXT DEFAULT NULL,
            `shop` INT(11) NOT NULL,
            `expense_category` INT(11) NOT NULL,
            `admin_id` INT(11) NOT NULL,
            `deleted_at` TIMESTAMP NULL DEFAULT NULL,
            `created_at` TIMESTAMP NULL DEFAULT NULL,
            `updated_at` TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (`id`)
          );
        ''');
           await db.execute('''
          CREATE TABLE expense_categories (
            `id` BIGINT(20) UNSIGNED NOT NULL,
            `name` VARCHAR(255) NOT NULL,
            `description` VARCHAR(255) DEFAULT NULL,
            `admin_id` INT(11) NOT NULL,
            `deleted_at` TIMESTAMP NULL DEFAULT NULL,
            `created_at` TIMESTAMP NULL DEFAULT NULL,
            `updated_at` TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (`id`)
          );
        ''');
                await db.execute('''
          CREATE TABLE failed_jobs (
            `id` BIGINT(20) UNSIGNED NOT NULL,
            `uuid` VARCHAR(255) NOT NULL,
            `connection` TEXT NOT NULL,
            `queue` TEXT NOT NULL,
            `payload` LONGTEXT NOT NULL,
            `exception` LONGTEXT NOT NULL,
            `failed_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
            PRIMARY KEY (`id`)
          );
        ''');
             await db.execute('''
          CREATE TABLE general_settings (
            `id` BIGINT(20) UNSIGNED NOT NULL,
            `business_name` VARCHAR(255) NOT NULL,
            `business_type` TEXT NOT NULL,
            `business_category` VARCHAR(255) NOT NULL,
            `number_of_shops` INT(11) NOT NULL,
            `business_address` VARCHAR(255) DEFAULT NULL,
            `business_phone` VARCHAR(255) DEFAULT NULL,
            `business_website` VARCHAR(255) DEFAULT NULL,
            `admin_id` INT(11) DEFAULT NULL,
            `created_at` TIMESTAMP NULL DEFAULT NULL,
            `updated_at` TIMESTAMP NULL DEFAULT NULL,
            `deleted_at` TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (`id`)
          );
        ''');
             await db.execute('''
          CREATE TABLE invoices (
            `id` BIGINT(20) UNSIGNED NOT NULL,
            `purchase_order_id` INT(11) DEFAULT NULL,
            `total_amount` DECIMAL(18,2) NOT NULL,
            `status` ENUM('Paid','Unpaid','Overdue') NOT NULL DEFAULT 'Paid',
            `created_at` TIMESTAMP NULL DEFAULT NULL,
            `updated_at` TIMESTAMP NULL DEFAULT NULL,
            `deleted_at` TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (`id`)
          );
        ''');
         await db.execute('''
          CREATE TABLE item_images (
            `id` BIGINT(20) UNSIGNED NOT NULL,
            `item_id` INT(11) NOT NULL,
            `files` TEXT NOT NULL,
            `deleted_at` TIMESTAMP NULL DEFAULT NULL,
            `created_at` TIMESTAMP NULL DEFAULT NULL,
            `updated_at` TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (`id`)
          );
        ''');
       await db.execute('''
          CREATE TABLE item_sub_categories (
            `id` BIGINT(20) UNSIGNED NOT NULL,
            `name` VARCHAR(255) NOT NULL,
            `admin_id` INT(11) DEFAULT NULL,
            `item_category_id` INT(11) NOT NULL,
            `deleted_at` TIMESTAMP NULL DEFAULT NULL,
            `created_at` TIMESTAMP NULL DEFAULT NULL,
            `updated_at` TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (`id`)
          );
        ''');
          await db.execute('''
          CREATE TABLE item_transfers (
            `id` BIGINT(20) UNSIGNED NOT NULL,
            `from_warehouse` VARCHAR(255) NOT NULL,
            `to_warehouse` VARCHAR(255) NOT NULL,
            `total_number_product` INT(11) NOT NULL,
            `quantity_transfered` INT(11) NOT NULL,
            `stock_after_transfer` INT(11) NOT NULL,
            `ref_number` VARCHAR(255) NOT NULL,
            `date_transfer` VARCHAR(255) DEFAULT NULL,
            `description` VARCHAR(255) DEFAULT NULL,
            `item` INT(11) NOT NULL,
            `admin_id` INT(11) DEFAULT NULL,
            `deleted_at` TIMESTAMP NULL DEFAULT NULL,
            `created_at` TIMESTAMP NULL DEFAULT NULL,
            `updated_at` TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (`id`)
          );
        ''');
              await db.execute('''
          CREATE TABLE item_variants (
            `id` BIGINT(20) UNSIGNED NOT NULL,
            `name` VARCHAR(255) NOT NULL,
            `value` VARCHAR(255) NOT NULL,
            `product_id` INT(11) DEFAULT NULL,
            `admin_id` INT(11) NOT NULL,
            `deleted_at` TIMESTAMP NULL DEFAULT NULL,
            `created_at` TIMESTAMP NULL DEFAULT NULL,
            `updated_at` TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (`id`)
          );
        ''');
         await db.execute('''
          CREATE TABLE jobs (
            `id` BIGINT(20) UNSIGNED NOT NULL,
            `queue` VARCHAR(255) NOT NULL,
            `payload` LONGTEXT NOT NULL,
            `attempts` TINYINT(3) UNSIGNED NOT NULL,
            `reserved_at` INT(10) UNSIGNED DEFAULT NULL,
            `available_at` INT(10) UNSIGNED NOT NULL,
            `created_at` INT(10) UNSIGNED NOT NULL,
            PRIMARY KEY (`id`)
          );
        ''');
         await db.execute('''
          CREATE TABLE job_batches (
            `id` VARCHAR(255) NOT NULL,
            `name` VARCHAR(255) NOT NULL,
            `total_jobs` INT(11) NOT NULL,
            `pending_jobs` INT(11) NOT NULL,
            `failed_jobs` INT(11) NOT NULL,
            `failed_job_ids` LONGTEXT NOT NULL,
            `options` MEDIUMTEXT DEFAULT NULL,
            `cancelled_at` INT(11) DEFAULT NULL,
            `created_at` INT(11) NOT NULL,
            `finished_at` INT(11) DEFAULT NULL,
            PRIMARY KEY (`id`)
          );
        ''');
            await db.execute('''
          CREATE TABLE migrations (
            `id` INT(10) UNSIGNED NOT NULL,
            `migration` VARCHAR(255) NOT NULL,
            `batch` INT(11) NOT NULL,
            PRIMARY KEY (`id`)
          );
        ''');
         await db.execute('''
          CREATE TABLE mobile_payments (
            id BIGINT(20) UNSIGNED NOT NULL,
            name VARCHAR(100) NOT NULL,
            created_at TIMESTAMP NULL DEFAULT NULL,
            updated_at TIMESTAMP NULL DEFAULT NULL,
            deleted_at TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (id)
          );
        ''');
              await db.execute('''
          CREATE TABLE model_has_permissions (
            permission_id BIGINT(20) UNSIGNED NOT NULL,
            model_type VARCHAR(255) NOT NULL,
            model_id BIGINT(20) UNSIGNED NOT NULL,
            PRIMARY KEY (permission_id, model_type, model_id)
          );
        ''');
          await db.execute('''
          CREATE TABLE model_has_roles (
            role_id BIGINT(20) UNSIGNED NOT NULL,
            model_type VARCHAR(255) NOT NULL,
            model_id BIGINT(20) UNSIGNED NOT NULL,
            PRIMARY KEY (role_id, model_type, model_id)
          );
        ''');
        await db.execute('''
          CREATE TABLE notification_centers (
            id BIGINT(20) UNSIGNED NOT NULL,
            status TINYINT(1) NOT NULL DEFAULT 1,
            admin_id INT(11) DEFAULT NULL,
            deleted_at TIMESTAMP NULL DEFAULT NULL,
            created_at TIMESTAMP NULL DEFAULT NULL,
            updated_at TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (id)
          );
        ''');
         await db.execute('''
          CREATE TABLE paper_sizes (
            id BIGINT(20) UNSIGNED NOT NULL,
            name VARCHAR(255) NOT NULL,
            deleted_at TIMESTAMP NULL DEFAULT NULL,
            created_at TIMESTAMP NULL DEFAULT NULL,
            updated_at TIMESTAMP NULL DEFAULT NULL,
            PRIMARY KEY (id)
          );
        ''');
      
      },
      version: _version,
    );
    
  }

  // CRUD operations for paper_sizes table

  // Insert or update a paper size
  static Future<void> insertOrUpdatePaperSize(int id, String name, {DateTime? createdAt, DateTime? updatedAt, DateTime? deletedAt}) async {
    final db = await _getDB();
    await db.insert(
      'paper_sizes',
      {
        'id': id,
        'name': name,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'deleted_at': deletedAt?.toIso8601String(),
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve a paper size by ID
  static Future<Map<String, dynamic>?> getPaperSize(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'paper_sizes',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return maps.first;
    }
    return null;
  }

  // Delete a paper size by ID
  static Future<void> deletePaperSize(int id) async {
    final db = await _getDB();
    await db.delete(
      'paper_sizes',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all paper sizes
  static Future<void> clearPaperSizes() async {
    final db = await _getDB();
    await db.delete('paper_sizes');
  }


  // CRUD operations for notification_centers table

  // Insert or update a notification center
  static Future<void> insertOrUpdateNotificationCenter(
      int id, int status, {int? adminId, DateTime? createdAt, DateTime? updatedAt, DateTime? deletedAt}) async {
    final db = await _getDB();
    await db.insert(
      'notification_centers',
      {
        'id': id,
        'status': status,
        'admin_id': adminId,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'deleted_at': deletedAt?.toIso8601String(),
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve a notification center by ID
  static Future<Map<String, dynamic>?> getNotificationCenter(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'notification_centers',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return maps.first;
    }
    return null;
  }

  // Delete a notification center by ID
  static Future<void> deleteNotificationCenter(int id) async {
    final db = await _getDB();
    await db.delete(
      'notification_centers',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all notification centers
  static Future<void> clearNotificationCenters() async {
    final db = await _getDB();
    await db.delete('notification_centers');
  }


  // CRUD operations for model_has_roles table

  // Insert or update a model role
  static Future<void> insertOrUpdateModelRole(
      int roleId, String modelType, int modelId) async {
    final db = await _getDB();
    await db.insert(
      'model_has_roles',
      {
        'role_id': roleId,
        'model_type': modelType,
        'model_id': modelId,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve a model role by role_id, model_type, and model_id
  static Future<Map<String, dynamic>?> getModelRole(
      int roleId, String modelType, int modelId) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'model_has_roles',
      where: 'role_id = ? AND model_type = ? AND model_id = ?',
      whereArgs: [roleId, modelType, modelId],
    );

    if (maps.isNotEmpty) {
      return maps.first;
    }
    return null;
  }

  // Delete a model role by role_id, model_type, and model_id
  static Future<void> deleteModelRole(
      int roleId, String modelType, int modelId) async {
    final db = await _getDB();
    await db.delete(
      'model_has_roles',
      where: 'role_id = ? AND model_type = ? AND model_id = ?',
      whereArgs: [roleId, modelType, modelId],
    );
  }

  // Clear all model roles
  static Future<void> clearModelRoles() async {
    final db = await _getDB();
    await db.delete('model_has_roles');
  }


  // CRUD operations for model_has_permissions table

  // Insert or update a model permission
  static Future<void> insertOrUpdateModelPermission(
      int permissionId, String modelType, int modelId) async {
    final db = await _getDB();
    await db.insert(
      'model_has_permissions',
      {
        'permission_id': permissionId,
        'model_type': modelType,
        'model_id': modelId,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve a model permission by permission_id, model_type, and model_id
  static Future<Map<String, dynamic>?> getModelPermission(
      int permissionId, String modelType, int modelId) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'model_has_permissions',
      where: 'permission_id = ? AND model_type = ? AND model_id = ?',
      whereArgs: [permissionId, modelType, modelId],
    );

    if (maps.isNotEmpty) {
      return maps.first;
    }
    return null;
  }

  // Delete a model permission by permission_id, model_type, and model_id
  static Future<void> deleteModelPermission(
      int permissionId, String modelType, int modelId) async {
    final db = await _getDB();
    await db.delete(
      'model_has_permissions',
      where: 'permission_id = ? AND model_type = ? AND model_id = ?',
      whereArgs: [permissionId, modelType, modelId],
    );
  }

  // Clear all model permissions
  static Future<void> clearModelPermissions() async {
    final db = await _getDB();
    await db.delete('model_has_permissions');
  }

   // CRUD operations for mobile_payments table

  // Insert or update a mobile payment
  static Future<void> insertOrUpdateMobilePayment(int id, String name, {DateTime? createdAt, DateTime? updatedAt, DateTime? deletedAt}) async {
    final db = await _getDB();
    await db.insert(
      'mobile_payments',
      {
        'id': id,
        'name': name,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'deleted_at': deletedAt?.toIso8601String(),
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve a mobile payment by ID
  static Future<Map<String, dynamic>?> getMobilePayment(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'mobile_payments',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return maps.first;
    }
    return null;
  }

  // Delete a mobile payment by ID
  static Future<void> deleteMobilePayment(int id) async {
    final db = await _getDB();
    await db.delete(
      'mobile_payments',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all mobile payments
  static Future<void> clearMobilePayments() async {
    final db = await _getDB();
    await db.delete('mobile_payments');
  }

  // CRUD operations for migrations table

  // Insert or update a migration
  static Future<void> insertOrUpdateMigration(Migration migration) async {
    final db = await _getDB();
    await db.insert(
      'migrations',
      migration.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve a migration by ID
  static Future<Migration?> getMigrationById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'migrations',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Migration.fromMap(maps.first);
    }
    return null;
  }

  // Retrieve all migrations
  static Future<List<Migration>> getAllMigrations() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('migrations');

    return List.generate(maps.length, (i) {
      return Migration.fromMap(maps[i]);
    });
  }

  // Delete a migration by ID
  static Future<void> deleteMigration(int id) async {
    final db = await _getDB();
    await db.delete(
      'migrations',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all migrations
  static Future<void> clearMigrations() async {
    final db = await _getDB();
    await db.delete('migrations');
  }

  //CRUD operations for job_batches table

  // Insert or update a job batch
  static Future<void> insertOrUpdateJobBatch(JobBatch jobBatch) async {
    final db = await _getDB();
    await db.insert(
      'job_batches',
      jobBatch.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve a job batch by ID
  static Future<JobBatch?> getJobBatchById(String id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'job_batches',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return JobBatch.fromMap(maps.first);
    }
    return null;
  }

  // Retrieve all job batches
  static Future<List<JobBatch>> getAllJobBatches() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('job_batches');

    return List.generate(maps.length, (i) {
      return JobBatch.fromMap(maps[i]);
    });
  }

  // Delete a job batch by ID
  static Future<void> deleteJobBatch(String id) async {
    final db = await _getDB();
    await db.delete(
      'job_batches',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all job batches
  static Future<void> clearJobBatches() async {
    final db = await _getDB();
    await db.delete('job_batches');
  }

  // CRUD operations for jobs table

  // Insert or update a job
  static Future<void> insertOrUpdateJob(Job job) async {
    final db = await _getDB();
    await db.insert(
      'jobs',
      job.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve a job by ID
  static Future<Job?> getJobById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'jobs',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Job.fromMap(maps.first);
    }
    return null;
  }

  // Retrieve all jobs
  static Future<List<Job>> getAllJobs() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('jobs');

    return List.generate(maps.length, (i) {
      return Job.fromMap(maps[i]);
    });
  }

  // Delete a job by ID
  static Future<void> deleteJob(int id) async {
    final db = await _getDB();
    await db.delete(
      'jobs',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all jobs
  static Future<void> clearJobs() async {
    final db = await _getDB();
    await db.delete('jobs');
  }

  // CRUD operations for item_variants table

  // Insert or update an item variant
  static Future<void> insertOrUpdateItemVariant(ItemVariant itemVariant) async {
    final db = await _getDB();
    await db.insert(
      'item_variants',
      itemVariant.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve an item variant by ID
  static Future<ItemVariant?> getItemVariantById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'item_variants',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return ItemVariant.fromMap(maps.first);
    }
    return null;
  }

  // Retrieve all item variants
  static Future<List<ItemVariant>> getAllItemVariants() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('item_variants');

    return List.generate(maps.length, (i) {
      return ItemVariant.fromMap(maps[i]);
    });
  }

  // Delete an item variant by ID
  static Future<void> deleteItemVariant(int id) async {
    final db = await _getDB();
    await db.delete(
      'item_variants',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all item variants
  static Future<void> clearItemVariants() async {
    final db = await _getDB();
    await db.delete('item_variants');
  }

   // CRUD operations for item_transfers table

  // Insert or update an item transfer
  static Future<void> insertOrUpdateItemTransfer(ItemTransfer itemTransfer) async {
    final db = await _getDB();
    await db.insert(
      'item_transfers',
      itemTransfer.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve an item transfer by ID
  static Future<ItemTransfer?> getItemTransferById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'item_transfers',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return ItemTransfer.fromMap(maps.first);
    }
    return null;
  }

  // Retrieve all item transfers
  static Future<List<ItemTransfer>> getAllItemTransfers() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('item_transfers');

    return List.generate(maps.length, (i) {
      return ItemTransfer.fromMap(maps[i]);
    });
  }

  // Delete an item transfer by ID
  static Future<void> deleteItemTransfer(int id) async {
    final db = await _getDB();
    await db.delete(
      'item_transfers',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all item transfers
  static Future<void> clearItemTransfers() async {
    final db = await _getDB();
    await db.delete('item_transfers');
  }

   // CRUD operations for item_sub_categories table

  // Insert or update an item sub-category
  static Future<void> insertOrUpdateItemSubCategory(ItemSubCategory itemSubCategory) async {
    final db = await _getDB();
    await db.insert(
      'item_sub_categories',
      itemSubCategory.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve an item sub-category by ID
  static Future<ItemSubCategory?> getItemSubCategoryById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'item_sub_categories',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return ItemSubCategory.fromMap(maps.first);
    }
    return null;
  }

  // Retrieve all item sub-categories
  static Future<List<ItemSubCategory>> getAllItemSubCategories() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('item_sub_categories');

    return List.generate(maps.length, (i) {
      return ItemSubCategory.fromMap(maps[i]);
    });
  }

  // Delete an item sub-category by ID
  static Future<void> deleteItemSubCategory(int id) async {
    final db = await _getDB();
    await db.delete(
      'item_sub_categories',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all item sub-categories
  static Future<void> clearItemSubCategories() async {
    final db = await _getDB();
    await db.delete('item_sub_categories');
  }

// CRUD operations for item_images table

  // Insert or update an item image
  static Future<void> insertOrUpdateItemImage(ItemImage itemImage) async {
    final db = await _getDB();
    await db.insert(
      'item_images',
      itemImage.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve an item image by ID
  static Future<ItemImage?> getItemImageById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'item_images',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return ItemImage.fromMap(maps.first);
    }
    return null;
  }

  // Retrieve all item images
  static Future<List<ItemImage>> getAllItemImages() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('item_images');

    return List.generate(maps.length, (i) {
      return ItemImage.fromMap(maps[i]);
    });
  }

  // Delete an item image by ID
  static Future<void> deleteItemImage(int id) async {
    final db = await _getDB();
    await db.delete(
      'item_images',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all item images
  static Future<void> clearItemImages() async {
    final db = await _getDB();
    await db.delete('item_images');
  }

  // CRUD operations for invoices table

  // Insert or update an invoice
  static Future<void> insertOrUpdateInvoice(Invoice invoice) async {
    final db = await _getDB();
    await db.insert(
      'invoices',
      invoice.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve an invoice by ID
  static Future<Invoice?> getInvoiceById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'invoices',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Invoice.fromMap(maps.first);
    }
    return null;
  }

  // Retrieve all invoices
  static Future<List<Invoice>> getAllInvoices() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('invoices');

    return List.generate(maps.length, (i) {
      return Invoice.fromMap(maps[i]);
    });
  }

  // Delete an invoice by ID
  static Future<void> deleteInvoice(int id) async {
    final db = await _getDB();
    await db.delete(
      'invoices',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all invoices
  static Future<void> clearInvoices() async {
    final db = await _getDB();
    await db.delete('invoices');
  }

   // CRUD operations for general_settings table

  // Insert or update general settings
  static Future<void> insertOrUpdateGeneralSettings(GeneralSettings settings) async {
    final db = await _getDB();
    await db.insert(
      'general_settings',
      settings.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve general settings by ID
  static Future<GeneralSettings?> getGeneralSettingsById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'general_settings',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return GeneralSettings.fromMap(maps.first);
    }
    return null;
  }

  // Retrieve all general settings
  static Future<List<GeneralSettings>> getAllGeneralSettings() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('general_settings');

    return List.generate(maps.length, (i) {
      return GeneralSettings.fromMap(maps[i]);
    });
  }

  // Delete general settings by ID
  static Future<void> deleteGeneralSettings(int id) async {
    final db = await _getDB();
    await db.delete(
      'general_settings',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all general settings
  static Future<void> clearGeneralSettings() async {
    final db = await _getDB();
    await db.delete('general_settings');
  }

   // CRUD operations for failed_jobs table

  // Insert a new failed job
  static Future<void> insertFailedJob(FailedJob job) async {
    final db = await _getDB();
    await db.insert(
      'failed_jobs',
      job.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve all failed jobs
  static Future<List<FailedJob>> getFailedJobs() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('failed_jobs');

    return List.generate(maps.length, (i) {
      return FailedJob.fromMap(maps[i]);
    });
  }

  // Retrieve a failed job by ID
  static Future<FailedJob?> getFailedJobById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'failed_jobs',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return FailedJob.fromMap(maps.first);
    }
    return null;
  }

  // Delete a failed job
  static Future<void> deleteFailedJob(int id) async {
    final db = await _getDB();
    await db.delete(
      'failed_jobs',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all failed jobs
  static Future<void> clearFailedJobs() async {
    final db = await _getDB();
    await db.delete('failed_jobs');
  }

   // CRUD operations for expense_categories table

  // Insert a new expense category
  static Future<void> insertExpenseCategory(ExpenseCategory category) async {
    final db = await _getDB();
    await db.insert(
      'expense_categories',
      category.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve all expense categories
  static Future<List<ExpenseCategory>> getExpenseCategories() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('expense_categories');

    return List.generate(maps.length, (i) {
      return ExpenseCategory.fromMap(maps[i]);
    });
  }

  // Retrieve an expense category by ID
  static Future<ExpenseCategory?> getExpenseCategoryById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'expense_categories',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return ExpenseCategory.fromMap(maps.first);
    }
    return null;
  }

  // Update an expense category
  static Future<void> updateExpenseCategory(ExpenseCategory category) async {
    final db = await _getDB();
    await db.update(
      'expense_categories',
      category.toMap(),
      where: 'id = ?',
      whereArgs: [category.id],
    );
  }

  // Delete an expense category
  static Future<void> deleteExpenseCategory(int id) async {
    final db = await _getDB();
    await db.delete(
      'expense_categories',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all expense categories
  static Future<void> clearExpenseCategories() async {
    final db = await _getDB();
    await db.delete('expense_categories');
  }

  // CRUD operations for expenses table

  // Insert a new expense
  static Future<void> insertExpense(Expense expense) async {
    final db = await _getDB();
    await db.insert(
      'expenses',
      expense.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve all expenses
  static Future<List<Expense>> getExpenses() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('expenses');

    return List.generate(maps.length, (i) {
      return Expense.fromMap(maps[i]);
    });
  }

  // Retrieve an expense by ID
  static Future<Expense?> getExpenseById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'expenses',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Expense.fromMap(maps.first);
    }
    return null;
  }

  // Update an expense
  static Future<void> updateExpense(Expense expense) async {
    final db = await _getDB();
    await db.update(
      'expenses',
      expense.toMap(),
      where: 'id = ?',
      whereArgs: [expense.id],
    );
  }

  // Delete an expense
  static Future<void> deleteExpense(int id) async {
    final db = await _getDB();
    await db.delete(
      'expenses',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all expenses
  static Future<void> clearExpenses() async {
    final db = await _getDB();
    await db.delete('expenses');
  }

  // CRUD operations for event_templates table

  // Insert a new event template
  static Future<void> insertEventTemplate(EventTemplate eventTemplate) async {
    final db = await _getDB();
    await db.insert(
      'event_templates',
      eventTemplate.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve all event templates
  static Future<List<EventTemplate>> getEventTemplates() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('event_templates');

    return List.generate(maps.length, (i) {
      return EventTemplate.fromMap(maps[i]);
    });
  }

  // Retrieve an event template by ID
  static Future<EventTemplate?> getEventTemplateById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'event_templates',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return EventTemplate.fromMap(maps.first);
    }
    return null;
  }

  // Update an event template
  static Future<void> updateEventTemplate(EventTemplate eventTemplate) async {
    final db = await _getDB();
    await db.update(
      'event_templates',
      eventTemplate.toMap(),
      where: 'id = ?',
      whereArgs: [eventTemplate.id],
    );
  }

  // Delete an event template
  static Future<void> deleteEventTemplate(int id) async {
    final db = await _getDB();
    await db.delete(
      'event_templates',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all event templates
  static Future<void> clearEventTemplates() async {
    final db = await _getDB();
    await db.delete('event_templates');
  }

  
  // CRUD operations for events table

  // Insert a new event
  static Future<void> insertEvent(Event event) async {
    final db = await _getDB();
    await db.insert(
      'events',
      event.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve all events
  static Future<List<Event>> getEvents() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('events');

    return List.generate(maps.length, (i) {
      return Event.fromMap(maps[i]);
    });
  }

  // Retrieve an event by ID
  static Future<Event?> getEventById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'events',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Event.fromMap(maps.first);
    }
    return null;
  }

  // Update an event
  static Future<void> updateEvent(Event event) async {
    final db = await _getDB();
    await db.update(
      'events',
      event.toMap(),
      where: 'id = ?',
      whereArgs: [event.id],
    );
  }

  // Delete an event
  static Future<void> deleteEvent(int id) async {
    final db = await _getDB();
    await db.delete(
      'events',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all events
  static Future<void> clearEvents() async {
    final db = await _getDB();
    await db.delete('events');
  }

  // CRUD operations for employee_assigned_shops table

  // Insert a new employee assigned shop
  static Future<void> insertEmployeeAssignedShop(EmployeeAssignedShop shop) async {
    final db = await _getDB();
    await db.insert(
      'employee_assigned_shops',
      shop.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve all employee assigned shops
  static Future<List<EmployeeAssignedShop>> getEmployeeAssignedShops() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('employee_assigned_shops');

    return List.generate(maps.length, (i) {
      return EmployeeAssignedShop.fromMap(maps[i]);
    });
  }

  // Retrieve an employee assigned shop by ID
  static Future<EmployeeAssignedShop?> getEmployeeAssignedShopById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'employee_assigned_shops',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return EmployeeAssignedShop.fromMap(maps.first);
    }
    return null;
  }

  // Update an employee assigned shop
  static Future<void> updateEmployeeAssignedShop(EmployeeAssignedShop shop) async {
    final db = await _getDB();
    await db.update(
      'employee_assigned_shops',
      shop.toMap(),
      where: 'id = ?',
      whereArgs: [shop.id],
    );
  }

  // Delete an employee assigned shop
  static Future<void> deleteEmployeeAssignedShop(int id) async {
    final db = await _getDB();
    await db.delete(
      'employee_assigned_shops',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all employee assigned shops
  static Future<void> clearEmployeeAssignedShops() async {
    final db = await _getDB();
    await db.delete('employee_assigned_shops');
  }

  // CRUD operations for designations table

  // Insert a new designation
  static Future<void> insertDesignation(Designation designation) async {
    final db = await _getDB();
    await db.insert(
      'designations',
      designation.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve all designations
  static Future<List<Designation>> getDesignations() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('designations');

    return List.generate(maps.length, (i) {
      return Designation.fromMap(maps[i]);
    });
  }

  // Retrieve a designation by ID
  static Future<Designation?> getDesignationById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'designations',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Designation.fromMap(maps.first);
    }
    return null;
  }

  // Update a designation
  static Future<void> updateDesignation(Designation designation) async {
    final db = await _getDB();
    await db.update(
      'designations',
      designation.toMap(),
      where: 'id = ?',
      whereArgs: [designation.id],
    );
  }

  // Delete a designation
  static Future<void> deleteDesignation(int id) async {
    final db = await _getDB();
    await db.delete(
      'designations',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all designations
  static Future<void> clearDesignations() async {
    final db = await _getDB();
    await db.delete('designations');
  }

  // CRUD operations for departments table

  // Insert a new department
  static Future<void> insertDepartment(Department department) async {
    final db = await _getDB();
    await db.insert(
      'departments',
      department.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve all departments
  static Future<List<Department>> getDepartments() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('departments');

    return List.generate(maps.length, (i) {
      return Department.fromMap(maps[i]);
    });
  }

  // Retrieve a department by ID
  static Future<Department?> getDepartmentById(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'departments',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Department.fromMap(maps.first);
    }
    return null;
  }

  // Update a department
  static Future<void> updateDepartment(Department department) async {
    final db = await _getDB();
    await db.update(
      'departments',
      department.toMap(),
      where: 'id = ?',
      whereArgs: [department.id],
    );
  }

  // Delete a department
  static Future<void> deleteDepartment(int id) async {
    final db = await _getDB();
    await db.delete(
      'departments',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all departments
  static Future<void> clearDepartments() async {
    final db = await _getDB();
    await db.delete('departments');
  }

  // CRUD operations for customer_supplier_accounts table

  // Insert a new customer or supplier
  static Future<void> insertCustomerSupplierAccount({
    required String name,
    required String phone,
    required bool isCustomer,
    String? email,
    String? profileImage,
    required int adminId,
  }) async {
    final db = await _getDB();
    await db.insert(
      'customer_supplier_accounts',
      {
        'name': name,
        'phone': phone,
        'is_customer': isCustomer ? 1 : 0,
        'email': email,
        'profile_image': profileImage,
        'admin_id': adminId,
        'created_at': DateTime.now().toIso8601String(),
        'updated_at': DateTime.now().toIso8601String(),
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve a customer or supplier by id
  static Future<Map<String, dynamic>?> getCustomerSupplierAccount(int id) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'customer_supplier_accounts',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return maps.first;
    }
    return null;
  }

  // Update a customer or supplier
  static Future<void> updateCustomerSupplierAccount({
    required int id,
    required String name,
    required String phone,
    required bool isCustomer,
    String? email,
    String? profileImage,
    required int adminId,
  }) async {
    final db = await _getDB();
    await db.update(
      'customer_supplier_accounts',
      {
        'name': name,
        'phone': phone,
        'is_customer': isCustomer ? 1 : 0,
        'email': email,
        'profile_image': profileImage,
        'admin_id': adminId,
        'updated_at': DateTime.now().toIso8601String(),
      },
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Delete a customer or supplier by id
  static Future<void> deleteCustomerSupplierAccount(int id) async {
    final db = await _getDB();
    await db.delete(
      'customer_supplier_accounts',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Clear all customer or supplier accounts
  static Future<void> clearCustomerSupplierAccounts() async {
    final db = await _getDB();
    await db.delete('customer_supplier_accounts');
  }

  // CRUD operations for cache_locks table

  // Insert or update a cache lock
  static Future<void> insertOrUpdateCacheLock(String key, String owner, int expiration) async {
    final db = await _getDB();
    await db.insert(
      'cache_locks',
      {'key': key, 'owner': owner, 'expiration': expiration},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve a cache lock by key
  static Future<Map<String, dynamic>?> getCacheLock(String key) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'cache_locks',
      where: 'key = ?',
      whereArgs: [key],
    );

    if (maps.isNotEmpty) {
      return maps.first;
    }
    return null;
  }

  // Delete a cache lock by key
  static Future<void> deleteCacheLock(String key) async {
    final db = await _getDB();
    await db.delete(
      'cache_locks',
      where: 'key = ?',
      whereArgs: [key],
    );
  }

  // Clear all cache locks
  static Future<void> clearCacheLocks() async {
    final db = await _getDB();
    await db.delete('cache_locks');
  }

  // CRUD operations for cache table

  // Insert or update a cache entry
  static Future<void> insertOrUpdateCache(String key, String value, int expiration) async {
    final db = await _getDB();
    await db.insert(
      'cache',
      {'key': key, 'value': value, 'expiration': expiration},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Retrieve a cache entry by key
  static Future<String?> getCacheValue(String key) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'cache',
      where: 'key = ?',
      whereArgs: [key],
    );

    if (maps.isNotEmpty) {
      final Map<String, dynamic> map = maps.first;
      return map['value'] as String?;
    }
    return null;
  }

  // Delete a cache entry by key
  static Future<void> deleteCache(String key) async {
    final db = await _getDB();
    await db.delete(
      'cache',
      where: 'key = ?',
      whereArgs: [key],
    );
  }

  // Clear all cache entries
  static Future<void> clearCache() async {
    final db = await _getDB();
    await db.delete('cache');
  }

  // CRUD operations for business_types table

  // Insert a new business type
  static Future<int> addBusinessType(BusinessType type) async {
    final db = await _getDB();
    return await db.insert(
      'business_types',
      type.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Get all business types
  static Future<List<BusinessType>> getAllBusinessTypes() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('business_types');

    return List.generate(maps.length, (i) {
      return BusinessType.fromJson(maps[i]);
    });
  }

  // Update a business type
  static Future<int> updateBusinessType(BusinessType type) async {
    final db = await _getDB();
    return await db.update(
      'business_types',
      type.toJson(),
      where: "id = ?",
      whereArgs: [type.id],
    );
  }

  // Delete a business type
  static Future<int> deleteBusinessType(int id) async {
    final db = await _getDB();
    return await db.delete(
      'business_types',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // CRUD operations for business_categories table

  // Insert a new business category
  static Future<int> addBusinessCategory(BusinessCategory category) async {
    final db = await _getDB();
    return await db.insert(
      'business_categories',
      category.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Get all business categories
  static Future<List<BusinessCategory>> getAllBusinessCategories() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('business_categories');

    return List.generate(maps.length, (i) {
      return BusinessCategory.fromJson(maps[i]);
    });
  }

  // Update a business category
  static Future<int> updateBusinessCategory(BusinessCategory category) async {
    final db = await _getDB();
    return await db.update(
      'business_categories',
      category.toJson(),
      where: "id = ?",
      whereArgs: [category.id],
    );
  }

  // Delete a business category
  static Future<int> deleteBusinessCategory(int id) async {
    final db = await _getDB();
    return await db.delete(
      'business_categories',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // CRUD operations for bundles table

  // Insert a new bundle
  static Future<int> addBundle(Bundle bundle) async {
    final db = await _getDB();
    return await db.insert(
      'bundles',
      bundle.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Get all bundles
  static Future<List<Bundle>> getAllBundles() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('bundles');

    return List.generate(maps.length, (i) {
      return Bundle.fromJson(maps[i]);
    });
  }

  // Update a bundle
  static Future<int> updateBundle(Bundle bundle) async {
    final db = await _getDB();
    return await db.update(
      'bundles',
      bundle.toJson(),
      where: "id = ?",
      whereArgs: [bundle.id],
    );
  }

  // Delete a bundle
  static Future<int> deleteBundle(int id) async {
    final db = await _getDB();
    return await db.delete(
      'bundles',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // CRUD operations for brands table

  // Insert a new brand
  static Future<int> addBrand(Brand brand) async {
    final db = await _getDB();
    return await db.insert(
      'brands',
      brand.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Get all brands
  static Future<List<Brand>> getAllBrands() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('brands');

    return List.generate(maps.length, (i) {
      return Brand.fromJson(maps[i]);
    });
  }

  // Update a brand
  static Future<int> updateBrand(Brand brand) async {
    final db = await _getDB();
    return await db.update(
      'brands',
      brand.toJson(),
      where: "id = ?",
      whereArgs: [brand.id],
    );
  }

  // Delete a brand
  static Future<int> deleteBrand(int id) async {
    final db = await _getDB();
    return await db.delete(
      'brands',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // CRUD operations for banks table

  // Insert a new bank
  static Future<int> addBank(Bank bank) async {
    final db = await _getDB();
    return await db.insert(
      'banks',
      bank.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Get all banks
  static Future<List<Bank>> getAllBanks() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('banks');

    return List.generate(maps.length, (i) {
      return Bank.fromJson(maps[i]);
    });
  }

  // Update a bank
  static Future<int> updateBank(Bank bank) async {
    final db = await _getDB();
    return await db.update(
      'banks',
      bank.toJson(),
      where: "id = ?",
      whereArgs: [bank.id],
    );
  }

  // Delete a bank
  static Future<int> deleteBank(int id) async {
    final db = await _getDB();
    return await db.delete(
      'banks',
      where: "id = ?",
      whereArgs: [id],
    );
  }

   // CRUD operations for audits table

  // Insert a new audit
  static Future<int> addAudit(Audit audit) async {
    final db = await _getDB();
    return await db.insert(
      'audits',
      audit.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Get all audits
  static Future<List<Audit>> getAllAudits() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('audits');

    return List.generate(maps.length, (i) {
      return Audit.fromJson(maps[i]);
    });
  }

  // Update an audit
  static Future<int> updateAudit(Audit audit) async {
    final db = await _getDB();
    return await db.update(
      'audits',
      audit.toJson(),
      where: "id = ?",
      whereArgs: [audit.id],
    );
  }

  // Delete an audit
  static Future<int> deleteAudit(int id) async {
    final db = await _getDB();
    return await db.delete(
      'audits',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // Insert a new account category
  static Future<int> addAccountCategory(AccountCategory category) async {
    final db = await _getDB();
    return await db.insert(
      'account_categories',
      category.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Get all account categories
  static Future<List<AccountCategory>> getAllAccountCategories() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('account_categories');

    return List.generate(maps.length, (i) {
      return AccountCategory.fromJson(maps[i]);
    });
  }

  // Update an account category
  static Future<int> updateAccountCategory(AccountCategory category) async {
    final db = await _getDB();
    return await db.update(
      'account_categories',
      category.toJson(),
      where: "id = ?",
      whereArgs: [category.id],
    );
  }

  // Delete an account category
  static Future<int> deleteAccountCategory(int id) async {
    final db = await _getDB();
    return await db.delete(
      'account_categories',
      where: "id = ?",
      whereArgs: [id],
    );
  }


  // CRUD operations for accounts table

  // Insert a new account
  static Future<int> addAccount(Account account) async {
    final db = await _getDB();
    return await db.insert(
      'accounts',
      account.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Get all accounts
  static Future<List<Account>> getAllAccounts() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('accounts');

    return List.generate(maps.length, (i) {
      return Account.fromJson(maps[i]);
    });
  }

  // Update an account
  static Future<int> updateAccount(Account account) async {
    final db = await _getDB();
    return await db.update(
      'accounts',
      account.toJson(),
      where: "id = ?",
      whereArgs: [account.id],
    );
  }
  // CRUD operations for password_reset_tokens table

  // Insert a new token
  static Future<void> addPasswordResetToken(String email, String token, DateTime? createdAt) async {
    final db = await _getDB();
    await db.insert(
      'password_reset_tokens',
      {
        'email': email,
        'token': token,
        'created_at': createdAt?.toIso8601String(),
      },
      conflictAlgorithm: ConflictAlgorithm.replace, // Replace existing tokens for the same email
    );
  }

  // Get a token by email
  static Future<Map<String, dynamic>?> getTokenByEmail(String email) async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query(
      'password_reset_tokens',
      where: "email = ?",
      whereArgs: [email],
    );

    if (maps.isNotEmpty) {
      return maps.first;
    } else {
      return null;
    }
  }

  // Delete a token
  static Future<void> deleteToken(String token) async {
    final db = await _getDB();
    await db.delete(
      'password_reset_tokens',
      where: "token = ?",
      whereArgs: [token],
    );
  }

  
  // CRUD operations for products table

  // Insert a new product
  static Future<int> addProduct(Product product) async {
    final db = await _getDB();
    return await db.insert(
      'products',
      product.toJson(),
    );
  }

  // Get all products
  static Future<List<Product>> getAllProducts() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('products');

    return List.generate(maps.length, (i) {
      return Product.fromJson(maps[i]);
    });
  }

  // Update a product
  static Future<int> updateProduct(Product product) async {
    final db = await _getDB();
    return await db.update(
      'products',
      product.toJson(),
      where: "id = ?",
      whereArgs: [product.id],
    );
  }

  // Delete a product
  static Future<int> deleteProduct(int id) async {
    final db = await _getDB();
    return await db.delete(
      'products',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // CRUD operations for purchase_orders table

  // Insert a new purchase order
  static Future<int> addPurchaseOrder(PurchaseOrder purchaseOrder) async {
    final db = await _getDB();
    return await db.insert(
      'purchase_orders',
      purchaseOrder.toJson(),
    );
  }

  // Get all purchase orders
  static Future<List<PurchaseOrder>> getAllPurchaseOrders() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('purchase_orders');

    return List.generate(maps.length, (i) {
      return PurchaseOrder.fromJson(maps[i]);
    });
  }

  // Update a purchase order
  static Future<int> updatePurchaseOrder(PurchaseOrder purchaseOrder) async {
    final db = await _getDB();
    return await db.update(
      'purchase_orders',
      purchaseOrder.toJson(),
      where: "id = ?",
      whereArgs: [purchaseOrder.id],
    );
  }

  // Delete a purchase order
  static Future<int> deletePurchaseOrder(int id) async {
    final db = await _getDB();
    return await db.delete(
      'purchase_orders',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // CRUD operations for quotations table

  // Insert a new quotation
  static Future<int> addQuotation(Quotation quotation) async {
    final db = await _getDB();
    return await db.insert(
      'quotations',
      quotation.toJson(),
    );
  }

  // Get all quotations
  static Future<List<Quotation>> getAllQuotations() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('quotations');

    return List.generate(maps.length, (i) {
      return Quotation.fromJson(maps[i]);
    });
  }

  // Update a quotation
  static Future<int> updateQuotation(Quotation quotation) async {
    final db = await _getDB();
    return await db.update(
      'quotations',
      quotation.toJson(),
      where: "id = ?",
      whereArgs: [quotation.id],
    );
  }

  // Delete a quotation
  static Future<int> deleteQuotation(int id) async {
    final db = await _getDB();
    return await db.delete(
      'quotations',
      where: "id = ?",
      whereArgs: [id],
    );
  }

   // CRUD operations for quotation_items table

  // Insert a new quotation item
  static Future<int> addQuotationItem(QuotationItem item) async {
    final db = await _getDB();
    return await db.insert(
      'quotation_items',
      item.toJson(),
    );
  }

  // Get all quotation items
  static Future<List<QuotationItem>> getAllQuotationItems() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('quotation_items');

    return List.generate(maps.length, (i) {
      return QuotationItem.fromJson(maps[i]);
    });
  }

  // Update a quotation item
  static Future<int> updateQuotationItem(QuotationItem item) async {
    final db = await _getDB();
    return await db.update(
      'quotation_items',
      item.toJson(),
      where: "id = ?",
      whereArgs: [item.id],
    );
  }

  // Delete a quotation item
  static Future<int> deleteQuotationItem(int id) async {
    final db = await _getDB();
    return await db.delete(
      'quotation_items',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // CRUD operations for roles table

  // Insert a new role
  static Future<int> addRole(Role role) async {
    final db = await _getDB();
    return await db.insert(
      'roles',
      role.toJson(),
    );
  }

  // Get all roles
  static Future<List<Role>> getAllRoles() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('roles');

    return List.generate(maps.length, (i) {
      return Role.fromJson(maps[i]);
    });
  }

  // Update a role
  static Future<int> updateRole(Role role) async {
    final db = await _getDB();
    return await db.update(
      'roles',
      role.toJson(),
      where: "id = ?",
      whereArgs: [role.id],
    );
  }

  // Delete a role
  static Future<int> deleteRole(int id) async {
    final db = await _getDB();
    return await db.delete(
      'roles',
      where: "id = ?",
      whereArgs: [id],
    );
  }

   // CRUD operations for role_has_permissions table

  // Insert a new role_has_permission
  static Future<int> addRoleHasPermission(int permissionId, int roleId) async {
    final db = await _getDB();
    return await db.insert(
      'role_has_permissions',
      {
        'permission_id': permissionId,
        'role_id': roleId,
      },
    );
  }

  // Get all role_has_permissions
  static Future<List<Map<String, dynamic>>> getAllRoleHasPermissions() async {
    final db = await _getDB();
    return await db.query('role_has_permissions');
  }

  // Delete a role_has_permission
  static Future<int> deleteRoleHasPermission(int permissionId, int roleId) async {
    final db = await _getDB();
    return await db.delete(
      'role_has_permissions',
      where: 'permission_id = ? AND role_id = ?',
      whereArgs: [permissionId, roleId],
    );
  }

  
  // CRUD operations for sessions table

  // Get all sessions
  static Future<List<Session>> getAllSessions() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('sessions');

    return List.generate(maps.length, (i) {
      return Session.fromJson(maps[i]);
    });
  }

  // Insert a new session
  static Future<int> addSession(Session session) async {
    final db = await _getDB();
    return await db.insert('sessions', session.toJson());
  }

  // Update a session
  static Future<int> updateSession(Session session) async {
    final db = await _getDB();
    return await db.update(
      'sessions',
      session.toJson(),
      where: "id = ?",
      whereArgs: [session.id],
    );
  }

  // Delete a session
  static Future<int> deleteSession(String id) async {
    final db = await _getDB();
    return await db.delete(
      'sessions',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // CRUD operations for shops table

  // Get all shops
  static Future<List<Shop>> getAllShops() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('shops');

    return List.generate(maps.length, (i) {
      return Shop.fromJson(maps[i]);
    });
  }

  // Insert a new shop
  static Future<int> addShop(Shop shop) async {
    final db = await _getDB();
    return await db.insert('shops', shop.toJson());
  }

  // Update a shop
  static Future<int> updateShop(Shop shop) async {
    final db = await _getDB();
    return await db.update(
      'shops',
      shop.toJson(),
      where: "id = ?",
      whereArgs: [shop.id],
    );
  }

  // Delete a shop
  static Future<int> deleteShop(int id) async {
    final db = await _getDB();
    return await db.delete(
      'shops',
      where: "id = ?",
      whereArgs: [id],
    );
  }

   // CRUD operations for tax_types table

  // Get all tax types
  static Future<List<TaxType>> getAllTaxTypes() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('tax_types');

    return List.generate(maps.length, (i) {
      return TaxType.fromJson(maps[i]);
    });
  }

  // Insert a new tax type
  static Future<int> addTaxType(TaxType taxType) async {
    final db = await _getDB();
    return await db.insert('tax_types', taxType.toJson());
  }

  // Update a tax type
  static Future<int> updateTaxType(TaxType taxType) async {
    final db = await _getDB();
    return await db.update(
      'tax_types',
      taxType.toJson(),
      where: "id = ?",
      whereArgs: [taxType.id],
    );
  }

  // Delete a tax type
  static Future<int> deleteTaxType(int id) async {
    final db = await _getDB();
    return await db.delete(
      'tax_types',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  
  
   static Future<int> addTransactionOnHold(TransactionOnHold transactionOnHold) async {
    final db = await _getDB();
    return await db.insert(
      'transaction_on_holds',
      transactionOnHold.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Update an existing transaction on hold
  static Future<int> updateTransactionOnHold(TransactionOnHold transactionOnHold) async {
    final db = await _getDB();
    return await db.update(
      'transaction_on_holds',
      transactionOnHold.toJson(),
      where: "id = ?",
      whereArgs: [transactionOnHold.id],
    );
  }

  // Delete a transaction on hold
  static Future<int> deleteTransactionOnHold(int id) async {
    final db = await _getDB();
    return await db.delete(
      'transaction_on_holds',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // Retrieve all transactions on hold
  static Future<List<TransactionOnHold>> getAllTransactionsOnHold() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('transaction_on_holds');

    return List.generate(maps.length, (i) {
      return TransactionOnHold.fromJson(maps[i]);
    });
  }


  // Add a new cart item
  static Future<int> addCart(Cart cart) async {
    final db = await _getDB();
    // Ensure total is calculated before saving to the database
    cart = Cart(
      id: cart.id,
      transactionId: cart.transactionId,
      itemId: cart.itemId,
      itemName: cart.itemName,
      salePrice: cart.salePrice,
      quantity: cart.quantity,
      total: cart.calculateTotal(),
      discountValue: cart.discountValue,
      price: cart.price,
      img: cart.img,
      createdAt: cart.createdAt,
      updatedAt: cart.updatedAt,
    );

    return await db.insert(
      'cart_items',
      cart.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    
  }

  // Update an existing cart item
  static Future<int> updateCart(Cart cart) async {
    final db = await _getDB();
    return await db.update(
      'cart_items',
      cart.toJson(),
      where: "id = ?",
      whereArgs: [cart.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Delete a cart item
  static Future<int> deleteCart(Cart cart) async {
    final db = await _getDB();
    return await db.delete(
      'cart_items',
      where: "id = ?",
      whereArgs: [cart.id],
    );
  }

  // Retrieve all cart items
  static Future<List<Cart>> getAllCart() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('cart_items');

    return List.generate(maps.length, (index) {
      return Cart.fromJson(maps[index]);
    });
  }

  // Print all cart items (for debugging)
  static Future<void> printAllCartItems() async {
    List<Cart> cartItems = await getAllCart();

    if (cartItems.isNotEmpty) {
      for (var item in cartItems) {
        print('ID: ${item.id}, ItemName: ${item.itemName}, Quantity: ${item.quantity}, SalePrice: ${item.salePrice}, Total: ${item.total}, Discount: ${item.discountValue}');
      }
    } else {
      print('No items found in the cart.');
    }
  }

  // Add a new item
  static Future<int> addItem(Item item) async {
    final db = await _getDB();
    return await db.insert(
      'items',
      item.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Update an existing item
  static Future<int> updateItem(Item item) async {
    final db = await _getDB();
    return await db.update(
      'items',
      item.toJson(),
      where: "id = ?",
      whereArgs: [item.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Delete an item
  static Future<int> deleteItem(Item item) async {
    final db = await _getDB();
    return await db.delete(
      'items',
      where: "id = ?",
      whereArgs: [item.id],
    );
  }

  // Retrieve all items
  static Future<List<Item>> getAllItems() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('items');

    return List.generate(maps.length, (index) {
      return Item.fromJson(maps[index]);
    });
  }

  // Print all items (for debugging)
  static Future<void> printAllItems() async {
    List<Item> items = await getAllItems();

    if (items.isNotEmpty) {
      for (var item in items) {
        print('ID: ${item.id}, Name: ${item.name}, Barcode: ${item.barcode}, SalePrice: ${item.salePrice}');
      }
    } else {
      print('No items found in the database.');
    }
  }
   static Future<int> addUser(User user) async {
    final db = await _getDB();
    return await db.insert(
      'users',
      user.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Update an existing user
  static Future<int> updateUser(User user) async {
    final db = await _getDB();
    return await db.update(
      'users',
      user.toJson(),
      where: "id = ?",
      whereArgs: [user.id],
    );
  }

  // Delete a user
  static Future<int> deleteUser(int id) async {
    final db = await _getDB();
    return await db.delete(
      'users',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // Retrieve all users
  static Future<List<User>> getAllUsers() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('users');

    return List.generate(maps.length, (i) {
      return User.fromJson(maps[i]);
    });
  }

  // Print all users (for debugging)
  static Future<void> printAllUsers() async {
    List<User> users = await getAllUsers();

    if (users.isNotEmpty) {
      for (var user in users) {
        print('ID: ${user.id}, Name: ${user.name}, Email: ${user.email}');
      }
    } else {
      print('No users found.');
    }
  }

    // Add a new user detail
  static Future<int> addUserDetail(UserDetail userDetail) async {
    final db = await _getDB();
    return await db.insert(
      'user_details',
      userDetail.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Update an existing user detail
  static Future<int> updateUserDetail(UserDetail userDetail) async {
    final db = await _getDB();
    return await db.update(
      'user_details',
      userDetail.toJson(),
      where: "id = ?",
      whereArgs: [userDetail.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Delete a user detail
  static Future<int> deleteUserDetail(int id) async {
    final db = await _getDB();
    return await db.delete(
      'user_details',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // Retrieve all user details
  static Future<List<UserDetail>> getAllUserDetails() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('user_details');

    return List.generate(maps.length, (index) {
      return UserDetail.fromJson(maps[index]);
    });
  }

  // Print all user details (for debugging)
  static Future<void> printAllUserDetails() async {
    List<UserDetail> userDetails = await getAllUserDetails();

    if (userDetails.isNotEmpty) {
      for (var detail in userDetails) {
        print('ID: ${detail.id}, LastLogin: ${detail.lastLogin}, Active: ${detail.active}, FirstTime: ${detail.firstTime}');
      }
    } else {
      print('No user details found.');
    }
  }


  // Add a new item category
  static Future<int> addItemCategory(ItemCategory category) async {
    final db = await _getDB();
    return await db.insert(
      'item_categories',
      category.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Update an existing item category
  static Future<int> updateItemCategory(ItemCategory category) async {
    final db = await _getDB();
    return await db.update(
      'item_categories',
      category.toJson(),
      where: "id = ?",
      whereArgs: [category.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Delete an item category
  static Future<int> deleteItemCategory(ItemCategory category) async {
    final db = await _getDB();
    return await db.delete(
      'item_categories',
      where: "id = ?",
      whereArgs: [category.id],
    );
  }

  // Retrieve all item categories
  static Future<List<ItemCategory>> getAllItemCategories() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('item_categories');

    return List.generate(maps.length, (index) {
      return ItemCategory.fromJson(maps[index]);
    });
  }

  // Print all item categories (for debugging)
  static Future<void> printAllItemCategories() async {
    List<ItemCategory> categories = await getAllItemCategories();

    if (categories.isNotEmpty) {
      for (var category in categories) {
        print('ID: ${category.id}, Name: ${category.name}');
      }
    } else {
      print('No item categories found in the database.');
    }
  }
  static Future<int> addWarranty(Warranty warranty) async {
    final db = await _getDB();
    return await db.insert(
      'warranties',
      warranty.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Update an existing warranty
  static Future<int> updateWarranty(Warranty warranty) async {
    final db = await _getDB();
    return await db.update(
      'warranties',
      warranty.toJson(),
      where: "id = ?",
      whereArgs: [warranty.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Delete a warranty
  static Future<int> deleteWarranty(int id) async {
    final db = await _getDB();
    return await db.delete(
      'warranties',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // Retrieve all warranties
  static Future<List<Warranty>> getAllWarranties() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('warranties');

    return List.generate(maps.length, (index) {
      return Warranty.fromJson(maps[index]);
    });
  }

  // Print all warranties (for debugging)
  static Future<void> printAllWarranties() async {
    List<Warranty> warranties = await getAllWarranties();

    if (warranties.isNotEmpty) {
      for (var warranty in warranties) {
        print('ID: ${warranty.id}, Name: ${warranty.name}, Duration: ${warranty.duration}, Status: ${warranty.status}');
      }
    } else {
      print('No warranties found.');
    }
  }
  static Future<int> addUnit(Unit unit) async {
    final db = await _getDB();
    return await db.insert(
      'units',
      unit.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Update an existing unit
  static Future<int> updateUnit(Unit unit) async {
    final db = await _getDB();
    return await db.update(
      'units',
      unit.toJson(),
      where: "id = ?",
      whereArgs: [unit.id],
    );
  }

  // Delete a unit
  static Future<int> deleteUnit(int id) async {
    final db = await _getDB();
    return await db.delete(
      'units',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // Retrieve all units
  static Future<List<Unit>> getAllUnits() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('units');

    return List.generate(maps.length, (i) {
      return Unit.fromJson(maps[i]);
    });
  }
 // CRUD operations for transactions table

  // Insert a new transaction
  static Future<int> addTransaction(Transactions transactions) async {
    final db = await _getDB();
    return await db.insert(
      'transactions',
      transactions.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Update an existing transaction
  static Future<int> updateTransaction(Transactions transactions) async {
    final db = await _getDB();
    return await db.update(
      'transactions',
      transactions.toJson(),
      where: "id = ?",
      whereArgs: [transactions.id],
    );
  }

  // Delete a transaction
  static Future<int> deleteTransaction(int id) async {
    final db = await _getDB();
    return await db.delete(
      'transactions',
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // Retrieve all transactions
  static Future<List<Transactions>> getAllTransactions() async {
    final db = await _getDB();
    final List<Map<String, dynamic>> maps = await db.query('transactions');

    return List.generate(maps.length, (i) {
      return Transactions.fromJson(maps[i]);
    });
  }


}
