# 🚀 Welcome to the Burger App Demo (Flutter Task) repository! 

Recreate a Mobile App Screen (Using AI Assistance)


# 🔧 Overview:

* **Built with Dart & Flutter Framework for seamless performance and stunning UI.**<br>
* **State Management :** [provider](https://pub.dev/packages/provider)
* **Local Database :** [sqflite](https://pub.dev/packages/sqflite)
* **Path File :** [path](https://pub.dev/packages/path)


# 🔧 ProxyAI Prompts Used:

### Prompt 1:
Create a Dart model class called Product with fields: id, name, price, imagePass, and quantity (default 0). Include toMap() and fromMap() methods for SQLite use

* **Applied to: lib\models\product.dart**

### Prompt 2:
Create a Flutter ChangeNotifier class called ProductProvider that manages a list of Product objects using SQLite. Initialize the database using sqflite. Create a table named products with columns: id, name, price, imageUrl, and quantity. Insert mock product data after the table is created. Fetch products from the database and store them in a private _products list. Expose a getter products to access the list. Implement incrementQty and decrementQty methods to update quantity and reflect changes in the database. Add a method updateProduct to update a single product's data. Include a totalPrice getter to calculate the total based on quantities. Use notifyListeners() after any update to notify the UI.

* **Applied to: lib\viewmodel\product_provider.dart**

### Prompt 3:
Write a mock list of type List  named mockProducts that contains fake data like id, name, price, and imageUrl.

* **Applied to: lib\data\product_mock_data.dart**

### Prompt 4:
I want to convert these texts (SAR - 'Quantity reduced' - 'Quantity increased' - 'Search for a product', - 'Categories', - Total: - 'View cart' ) to a file class AppStrings

* **Applied to: lib\helper\app_strings.dart**


# 🔧 Project Structure:

<img src="https://github.com/user-attachments/assets/5a76e630-c921-45d2-9476-cf555ed5c70f" width="600">


# 🎨 UI
<img src="https://github.com/user-attachments/assets/95818be9-60a6-41f9-8644-71008cae2004" width="200">
<img src="https://github.com/user-attachments/assets/a9148c76-1652-440d-9b63-d750cd6efbce" width="200">


# 🌟 Interact with the page
<img src="https://github.com/user-attachments/assets/9fadefb2-5cce-4256-bf37-15940187109c" width="200">
<img src="https://github.com/user-attachments/assets/2b9a04d6-d646-4a9e-886a-6c5f89df6f9d" width="200">
<img src=https://github.com/user-attachments/assets/087c3cfb-fdee-4172-88b6-b688575c806c width="200">
<img src="https://github.com/user-attachments/assets/e23dd9ad-58b1-4851-8a0e-9dff3f2ab3bf" width="200">
<img src="https://github.com/user-attachments/assets/8f6c74e7-6e99-419c-af09-0ff15025c002" width="200">


# 🌟 App demo video

### [YouTube](https://www.youtube.com/watch?v=15UF9vRm0Z8)

