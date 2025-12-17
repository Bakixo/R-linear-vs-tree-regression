# Linear vs Decision Tree Regression (Swiss Fertility Dataset)

This repository presents a **regression model comparison** using the built-in **Swiss Fertility dataset** in R.  
The goal is to predict **Fertility rates** based on socio-economic indicators and compare the performance of:

- **Multiple Linear Regression**
- **Decision Tree Regression (CART)**

The project follows a clean and reproducible machine learning workflow.

---

## 📌 Project Objectives

- Build regression models to predict fertility rates
- Compare linear and non-linear modeling approaches
- Evaluate models using standard regression metrics
- Generate predictions for new, unseen data

---

## 📊 Dataset

- **Name:** `swiss`
- **Source:** Built-in R dataset (`data(swiss)`)
- **Observations:** 47 Swiss provinces
- **Target Variable:** `Fertility`
- **Features:**
  - Agriculture
  - Examination
  - Education
  - Catholic
  - Infant.Mortality

No external data files are required.

---

## 🧠 Methodology

1. **Data Exploration**
   - Summary statistics and structure inspection

2. **Train–Test Split**
   - 80% training, 20% testing
   - Stratified partition using `caret`

3. **Linear Regression**
   - Multiple linear regression using all features
   - Model interpretation via coefficients and R²

4. **Decision Tree Regression**
   - CART model using `rpart`
   - Custom tree depth and split controls
   - Visual interpretation of decision rules

5. **Model Evaluation**
   - Mean Squared Error (MSE)
   - Root Mean Squared Error (RMSE)
   - Mean Absolute Error (MAE)
   - R² (train and test)

6. **New Data Prediction**
   - Fertility estimation for a new hypothetical region

---

## 📦 Requirements

This project requires the following R packages:

- caret
- rpart
- rpart.plot
- dplyr

You can install them using:

```r
install.packages(c("caret", "rpart", "rpart.plot", "dplyr"))
