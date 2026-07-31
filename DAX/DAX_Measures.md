# 📐 DAX Measures

This file contains the DAX measures and calculated columns used in the HR Analytics Dashboard.

---

# Measures

## Total Employees

```DAX
Total Employees = COUNT(hr_cleaned[EmployeeNumber])
```

---

## Attrition Count

```DAX
Attrition Count =
CALCULATE(
    COUNTROWS(hr_cleaned),
    hr_cleaned[Attrition] = "Yes"
)
```

---

## Attrition Rate

```DAX
Attrition Rate =
DIVIDE([Attrition Count],[Total Employees],0)
```

---

## Average Age

```DAX
Average Age =
AVERAGE(hr_cleaned[Age])
```

---

## Average Monthly Income

```DAX
Average Monthly Income =
AVERAGE(hr_cleaned[MonthlyIncome])
```

---

# Calculated Columns

## Age Group

```DAX
Age Group =
SWITCH(
    TRUE(),
    hr_cleaned[Age] <= 25, "18-25",
    hr_cleaned[Age] <= 35, "26-35",
    hr_cleaned[Age] <= 45, "36-45",
    hr_cleaned[Age] <= 55, "46-55",
    "56+"
)
```

---

## Income Group

```DAX
Income Group =
SWITCH(
    TRUE(),
    hr_cleaned[MonthlyIncome] < 3000, "<3K",
    hr_cleaned[MonthlyIncome] < 6000, "3K-6K",
    hr_cleaned[MonthlyIncome] < 9000, "6K-9K",
    hr_cleaned[MonthlyIncome] < 12000, "9K-12K",
    "12K+"
)
```

---

## Job Satisfaction Level

```DAX
Job Satisfaction Level =
SWITCH(
    hr_cleaned[JobSatisfaction],
    1, "Low",
    2, "Medium",
    3, "High",
    4, "Very High"
)
```

---

## Years Group

```DAX
Years Group =
SWITCH(
    TRUE(),
    hr_cleaned[YearsAtCompany] <= 2, "0-2 Years",
    hr_cleaned[YearsAtCompany] <= 5, "3-5 Years",
    hr_cleaned[YearsAtCompany] <= 10, "6-10 Years",
    hr_cleaned[YearsAtCompany] <= 20, "11-20 Years",
    "20+ Years"
)
```
