# 🗄️ Database Design: Entity-Relationship Modeling

## 📄 Description
This repository contains a collection of **Entity-Relationship (ER) Diagrams** and database schemas designed to solve real-world business requirements. The project covers a range of complexities, from retail inventory management to social media platform structures. The primary goal is to master data normalization, relationship mapping (1:1, 1:N, N:M), and attribute definition in relational databases.



## 📚 Exercise Details

### Level 1: Retail and Hospitality Systems

**Exercise 1: "Cul d'Ampolla" Optical Store**
The goal is to design a database to manage customers, sales, and inventory for an optical boutique.
* **Suppliers:** Tracks NIF, name, telephone, fax, and detailed address (street, number, floor, door, city, postal code, and country).
* **Brands & Glasses:** Logic ensures each brand is purchased from a unique supplier. Tracks specifics like frame type (floating, acetate, or metallic), frame color, lens graduation, lens color, and price.
* **Customers:** Stores personal data, contact info, and registration dates.
* **Referral System:** Includes logic to record if an existing customer recommended the store to a new client.
* **Sales Tracking:** Every transaction records the specific glasses sold and the employee who managed the sale.

**Exercise 2: Pizzeria Delivery Service**
Model a web-based system for online food orders and home delivery.
* **Geographic Hierarchy:** Normalizes data by separating Provinces and Localities (Provinces have many Localities).
* **Orders:** Records the date/time, delivery type (home delivery vs. in-store pickup), product quantities, and total price.
* **Product Management:** Handles diverse products including Pizzas, Burgers, and Drinks. Pizzas are further organized into dynamic categories.
* **Staff & Logistics:** Differentiates between "Cooks" and "Delivery Drivers." For home deliveries, the system tracks the specific driver and the exact delivery timestamp.



---

### Level 2: Social Media Architecture

**Exercise 1: YouTube Lite**
A simplified structural model of a video-sharing platform.
* **Users & Channels:** Manages user profiles (email, password, DOB, country) and the creation of personal channels with subscription logic.
* **Video Content:** Stores metadata (title, size, filename, duration, thumbnails) and visibility states (Public, Hidden, Private). Includes support for multiple tags.
* **User Interactions:** * **Feedback:** Tracks "Likes" and "Dislikes" on videos with specific timestamps.
    * **Playlists:** Users can organize videos into Public or Private playlists.
    * **Comments:** Users can comment on videos and "Like/Dislike" other users' comments.



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
