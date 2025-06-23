# importar las librerías necesarias para el análisis
import pandas as pd
from sqlalchemy import create_engine
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score
from sklearn.impute import SimpleImputer  # Para manejar valores faltantes (opcional)

# Conexión a la base de datos Classicmodels
engine = create_engine('mysql+pymysql://root:Pa33w0rd@localhost/classicmodels')

# Consulta SQL para obtener los datos
query = """SELECT  t1.productCode, t1.productName AS producto, t1.productLine,SUM(t2.quantityOrdered*t2.priceEach) AS total_ventas, (SUM(t2.quantityOrdered*t2.priceEach) - SUM(t2.quantityOrdered*t1.buyPrice)) AS margen_ganancia FROM products as t1 JOIN orderdetails as t2 ON t1.productCode = t2.productCode JOIN orders as t3 ON t2.orderNumber = t3.orderNumber WHERE t3.status = "Shipped" GROUP BY t1.productCode, t1.productName"""

# Obtener los datos
df = pd.read_sql(query, engine)

# Asignar categorías ABC manualmente (inicialmente)
df['category'] = pd.qcut(df['total_ventas'], q=3, labels=['C', 'B', 'A'])

# Seleccionar características y etiqueta
X = df[['total_ventas', 'margen_ganancia']]
y = df['category']

# **Asumiendo que queremos predecir para todos los datos en el DataFrame**

# Crear y entrenar el modelo
clf = DecisionTreeClassifier(random_state=42, max_depth=3)
clf.fit(X, y)

# Predecir categorías para todos los datos
y_pred = clf.predict(X)

# Reemplazar la columna 'category' con las predicciones del modelo
df['category'] = y_pred

# Evaluar el modelo (opcional, si quieres evaluar en un conjunto de prueba separado)
# X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
# y_pred_test = clf.predict(X_test)
# accuracy = accuracy_score(y_test, y_pred_test)
# print("Accuracy:", accuracy)

# Visualizar el árbol de decisión (opcional)
from sklearn import tree
import matplotlib.pyplot as plt

plt.figure(figsize=(15,10))
tree.plot_tree(clf, filled=True, feature_names=['total_ventas', 'margen_ganancia'], class_names=['C', 'B', 'A'])
plt.show()
