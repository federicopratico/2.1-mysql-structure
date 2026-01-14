# 🗄️ Database Design: Entity-Relationship Modeling

## 📄 Description
This repository contains a collection of **Entity-Relationship (ER) Diagrams** and database schemas designed to solve simplified real-world business requirements. The project covers a range of complexities, from retail inventory management to social media platform structures. The primary goal is to master data normalization, relationship mapping (1:1, 1:N, N:M), and attribute definition in relational databases.


## 📚 Exercise Details

**Exercise 1: "Cul d'Ampolla" Optical Store**
An optical store named "Cul d'Ampolla" wants to computerize the management of customers and sales of glasses.
* **Suppliers:** The store wants to know the supplier for each pair of glasses. Specifically, for each supplier, they need: Name, Address (street, number, floor, door, city, postal code, and country), Telephone, Fax, and NIF.
* **Brands & Purchases:** The purchase policy is based on the fact that glasses of a specific brand will be bought from a single supplier (to get better prices), but they can buy various brands from one supplier.
* **Glasses Info:** Brand, graduation of each lens, frame type (floating, plastic, or metallic), frame color, color of each lens, and price.
* **Customers:** Store the name, postal address, telephone, email, and registration date.
* **Referrals:** When a new customer arrives, store the customer who recommended the establishment (provided someone recommended it).
* **Sales:** The system must indicate which employee sold each pair of glasses.

**Exercise 2: Pizzeria**
You have been hired to design a website that allows online food delivery orders.
* **Customers:** Store a unique identifier: Name, Surnames, Address, Postal Code, Locality, Province, and Telephone number.
* **Geography:** Locality and Province data will be stored in separate tables. A locality belongs to a single province, and a province can have many localities. Each locality and province needs a unique ID and a name.
* **Orders:** A person can place many orders, but a single order can only be placed by one person. For each order: Unique ID, Date/Time, type (delivery or in-store pickup), the quantity of products selected from each type, and total price.
* **Products:** Products can be pizzas, burgers, and drinks. For each: Unique ID, Name, Description, Image, and Price.
* **Pizza Categories:** For pizzas, there are various categories that can change names throughout the year. A pizza can only be in one category, but a category can have many pizzas.
* **Shops & Employees:** An order is managed by a single shop. For each shop: Unique ID, Address, Postal Code, Locality, and Province. Many employees work in a shop, but an employee only works in one shop.
* **Employee Details:** Unique ID, Name, Surnames, NIF, Telephone, and Role (cook or delivery driver). For home delivery orders, record the driver who made the delivery and the date/time of the delivery.

**Exercise 3: YouTube**
We will create a simple model of what the database would be for a reduced version of YouTube.
* **Users:** Unique ID, Email, Password, Username, Date of Birth, Gender, Country, and Postal Code.
* **Videos:** A user publishes videos. For each: Unique ID, Title, Description, Size, Filename, Duration, Thumbnail, Number of plays, Number of likes, and Number of dislikes.
* **Video States & Tags:** A video can have three states: public, hidden, or private. A video can have many tags (Unique ID and tag name). Record which user published the video and the date/time.
* **Channels:** A user can create a channel. For each: Unique ID, Name, Description, and Creation Date.
* **Interactions:**
    * **Subscriptions:** A user can subscribe to other users' channels.
    * **Likes/Dislikes:** A user can like or dislike a video only once. Track the users who liked/disliked a video and the date/time.
    * **Playlists:** A user can create playlists. For each: Unique ID, Name, Creation Date, and Status (public or private).
    * **Comments:** A user can write comments on a video. For each: Unique ID, text, and date/time.
    * **Comment Feedback:** A user can mark a comment as like or dislike. Track the users and the date/time.


## 💻 Technologies Used
* **Database Modeling:** MySQL Workbench, draw.io, or Lucidchart.
* **SQL:** Relational schema logic.
* **Markdown:** Documentation and structure.

## 📋 Requirements
* Knowledge of **Relational Database Management Systems (RDBMS)**.
* Understanding of **Primary Keys (PK)** and **Foreign Keys (FK)**.
* Familiarity with **Cardinality** (1:1, 1:N, M:N).

## 🛠️ Installation
1.  Clone this repository:
    ```bash
    git clone https://github.com/federicopratico/2.1-mysql-structure.git
    ```
    or with SSH:
    ```bash
    git clone git@github.com:federicopratico/2.1-mysql-structure.git
    ```

2.  Navigate to the project directory:
    ```bash
    cd 2.1-mysql-structure
    ```

3.  Open the .sql file in your DBMS

## 🚀 How to View the Models
The models are organized by complexity level:
1.  Navigate to the `/Cul_ampolla` or `/Pizzeria` or `/YouTube_Simplified` directories.
2.  Visual diagrams are available in `.png` format.
3.  Check for `.sql` files if you wish to see the database creation scripts (DDL).

## 🤝 Contributions
Contributions are welcome! If you want to propose a more optimized normalization or add a new exercise:

1.  **Fork** the repository.
2.  Create a **branch** (`git checkout -b feature/NewDiagram`).
3.  **Commit** your changes.
4.  **Push** to the branch.
5.  Open a **Pull Request**.
