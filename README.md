# 🛒 Zepto E-commerce SQL + Dashboard Analytics Project

This project is a complete, real-world **Data Analyst portfolio project** based on an e-commerce inventory dataset scraped from Zepto. It simulates how analysts work in quick-commerce environments by combining **SQL, data cleaning, and dashboard visualization** to generate business insights.

---

## 📊 Project Highlights

- Built a structured SQL database from raw e-commerce data  
- Performed **Exploratory Data Analysis (EDA)**  
- Cleaned and transformed inconsistent pricing data  
- Wrote **business-driven SQL queries**  
- Created an **interactive dashboard** for insights  

---

## 🖥️ Dashboard Overview

![Dashboard](dashboard.png)

### 🔍 Features:
- **KPI Cards**
  - Total Products: **3,732**
  - Average MRP: **₹157**
  - Out-of-Stock Products: **453**

- **Category Insights**
  - Product distribution by category  
  - Average pricing trends  
  - Discount comparison  

- **Product Analysis**
  - Top products by MRP  
  - Value-for-money insights  

- **Filters**
  - Category  
  - Discount %  
  - Price range  

---

## 🎯 Business Problem

Quick-commerce platforms require efficient:
- Pricing strategies  
- Inventory management  
- Product positioning  

This project answers:
- Which categories drive revenue?
- Which products are out of stock?
- Where are pricing inefficiencies?
- How do discounts vary?

---

## 📁 Dataset Overview

- Source: Kaggle (Zepto Inventory Dataset)
- Each row represents a **SKU (Stock Keeping Unit)**

### 🧾 Columns:
- `sku_id` – Unique identifier  
- `name` – Product name  
- `category` – Product category  
- `mrp` – Maximum Retail Price (₹)  
- `discountPercent` – Discount applied  
- `discountedSellingPrice` – Final price  
- `availableQuantity` – Inventory count  
- `weightInGms` – Product weight  
- `outOfStock` – Availability flag  
- `quantity` – Units per package  

---

## 🔧 Project Workflow

### 1. Database Creation
Created SQL table with appropriate data types.

### 2. Data Import
- Imported CSV into PostgreSQL  
- Fixed UTF-8 encoding issues  

### 3. Data Exploration
- Total records count  
- Category distribution  
- Stock availability  
- Duplicate product analysis  

### 4. Data Cleaning
- Removed invalid rows (MRP = 0)  
- Converted paise → ₹  
- Handled null values  

### 5. Business Analysis
- Top discounted products  
- Revenue by category  
- Out-of-stock analysis  
- Price-per-gram insights  

---

## 📈 Key Insights

- Some categories dominate product listings  
- High-value products often go out of stock  
- Discounts vary significantly across categories  
- Bulk products offer better value per gram  

---

## 🛠️ Tools & Technologies

- SQL (PostgreSQL)  
- Excel / CSV  
- Tableau  
- GitHub  

---

## 🚀 How to Run

1. Clone repository:
```bash
git clone https://github.com/RuchiG369/zepto-SQL-data-analysis-project.git
cd zepto-SQL-data-analysis-project
