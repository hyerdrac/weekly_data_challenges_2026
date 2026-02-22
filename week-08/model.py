import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

from sklearn.linear_model import LogisticRegression
from sklearn.ensemble import RandomForestClassifier

from sklearn.metrics import accuracy_score, classification_report, confusion_matrix


data = pd.read_csv("WA_Fn-UseC_-Telco-Customer-Churn.csv")

mapping = {
    "Male" : 1,
    "Female" : 0
}

data["gender"] = data["gender"].map(mapping)

mapping = {
    "Yes" : 1,
    "No" : 0
}

# Mapping all Yes/No data

data["Partner"] = data["Partner"].map(mapping)
data["Dependents"] = data["Dependents"].map(mapping)
data["PhoneService"] = data["PhoneService"].map(mapping)
data["PaperlessBilling"] = data["PaperlessBilling"].map(mapping)
data["Churn"] = data["Churn"].map(mapping)

mapping = {
    "Yes" : 1,
    "No" : 0,
    "No internet service" : 0
}

# Some variables has three option Yes/No/No internet service. I count "No internet service" as zero

data["OnlineBackup"] = data["OnlineBackup"].map(mapping)
data["OnlineSecurity"] = data["OnlineSecurity"].map(mapping)
data["DeviceProtection"] = data["DeviceProtection"].map(mapping)
data["TechSupport"] = data["TechSupport"].map(mapping)
data["StreamingTV"] = data["StreamingTV"].map(mapping)
data["StreamingMovies"] = data["StreamingMovies"].map(mapping)


mapping = {
    "Yes" : 1,
    "No" : 0,
    "No phone service" : 0
}

data["MultipleLines"] = data["MultipleLines"].map(mapping)

data["TotalCharges"] = pd.to_numeric(data["TotalCharges"], errors="coerce")

cols_to_encode = ["InternetService","Contract","PaymentMethod"]

encoded_df = pd.get_dummies(
    data[cols_to_encode],
    prefix=cols_to_encode,
    drop_first=False,
    dtype=int
)

data = pd.concat([data.drop(columns=cols_to_encode), encoded_df], axis=1)

data = data.drop("customerID",axis=1)

data.columns = (
    data.columns
      .str.lower()
      .str.strip()
      .str.replace(r"\s+", "_", regex=True)
)

data = data.dropna()

target_column = "churn"

X = data.drop(columns=[target_column])
y = data[target_column]

X_train, X_test, y_train, y_test = train_test_split(
    X, y,
    test_size=0.3,
    random_state=0,
    stratify=y
)

scaler = StandardScaler()

X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)

model = LogisticRegression(max_iter=1000, class_weight="balanced")

model.fit(X_train_scaled, y_train)

y_pred = model.predict(X_test_scaled)

print("------------------------------------------------------------------------")
print("Accuracy:", accuracy_score(y_test, y_pred))
print("\nConfusion Matrix:\n", confusion_matrix(y_test, y_pred))
print("\nClassification Report:\n", classification_report(y_test, y_pred))
print("------------------------------------------------------------------------")

rf_model = RandomForestClassifier(
    n_estimators=1000,
    max_depth=None,
    random_state=0,
    class_weight="balanced"
)

rf_model.fit(X_train, y_train)

y_pred = rf_model.predict(X_test)

print("------------------------------------------------------------------------")
print("Accuracy:", accuracy_score(y_test, y_pred))
print("\nConfusion Matrix:\n", confusion_matrix(y_test, y_pred))
print("\nClassification Report:\n", classification_report(y_test, y_pred))
print("------------------------------------------------------------------------")


new_data = data[["tenure",
                 "contract_month-to-month",
                 "contract_one_year",
                 "contract_two_year",
                 "monthlycharges",
                 "totalcharges",
                 "internetservice_dsl",
                 "internetservice_fiber_optic",
                 "onlinesecurity",
                 "techsupport",
                 "churn"
                ]]

target_column = "churn"

X = new_data.drop(columns=[target_column])
y = new_data[target_column]

X_train, X_test, y_train, y_test = train_test_split(
    X, y,
    test_size=0.3,
    random_state=0,
    stratify=y
)

model = LogisticRegression(max_iter=1000)

model.fit(X_train, y_train)

y_pred = model.predict(X_test)

print("------------------------------------------------------------------------")
print("Accuracy:", accuracy_score(y_test, y_pred))
print("\nConfusion Matrix:\n", confusion_matrix(y_test, y_pred))
print("\nClassification Report:\n", classification_report(y_test, y_pred))
print("------------------------------------------------------------------------")


target_column = "churn"

X = new_data.drop(columns=[target_column])
y = new_data[target_column]

X_train, X_test, y_train, y_test = train_test_split(
    X, y,
    test_size=0.3,
    random_state=0,
    stratify=y
)

rf_model = RandomForestClassifier(
    n_estimators=1000,
    max_depth=None,
    random_state=0
)

rf_model.fit(X_train, y_train)

y_pred = rf_model.predict(X_test)

print("------------------------------------------------------------------------")
print("Accuracy:", accuracy_score(y_test, y_pred))
print("\nConfusion Matrix:\n", confusion_matrix(y_test, y_pred))
print("\nClassification Report:\n", classification_report(y_test, y_pred))
print("------------------------------------------------------------------------")