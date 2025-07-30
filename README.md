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

<img src="https://github.com/user-attachments/assets/5a76e630-c921-45d2-9476-cf555ed5c70f" width="500">


# 🎨 UI
<img src="https://github.com/user-attachments/assets/95818be9-60a6-41f9-8644-71008cae2004" width="200">
<img src="https://github.com/user-attachments/assets/04128208-4f6c-482d-807d-16eb06248d16" width="200">


# 🌟 Interact with the page
<img src="https://github.com/user-attachments/assets/91821933-293d-40bd-960a-c084dba4d9bd" width="200">
<img src="https://github.com/user-attachments/assets/66dffe35-435a-455d-85ad-cedbe916cf2e" width="200">
<img src="https://github.com/user-attachments/assets/24f1b016-c904-4f1b-a235-e52e8bc26517" width="200">
<img src="https://github.com/user-attachments/assets/e81f723f-a96b-45df-8f00-c6434efbf28b" width="200">
<img src="https://github.com/user-attachments/assets/1129f669-b1fb-4167-9fc2-f1a2c973fe07" width="200">







