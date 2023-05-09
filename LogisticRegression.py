import pandas as pd
import numpy as nu
import matplotlib.pyplot as plt
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
from sklearn.metrics import classification_report


data = pd.DataFrame()

data['idade']=[35,48,27,52,46,39,31,22,37,42,36,57,46,31,25,62,64,29,50,68,44]
data['renda']=[50000,80000,22000,150000,120000,70000,28000,10000,70470,37000,10680,73584,135302,45007,91659,121845,29684,106731,55926,138299,84567]
data['pontuacao_credito']=[700,750,600,800,700,650,550,653,524,673,728,787,611,677,752,562,598,766,679,590,726]
data['indice_endividamento']=[0.3,0.5,1.2,0.2,0.8,0.6,1.5,0.6,0.4,0.6,1.0,0.6,1.3,0.9,0.2,0.6,0.3,1.2,0.5,0.4,1.1]
data['fraude']=[0,0,1,0,0,0,1,1,0,1,0,1,1,0,1,1,1,0,0,1,0]

# Pré-processamento dos dados
X = data.drop('fraude',axis=1)
y = data['fraude']

# Divide os dados em conjunto de treinamento e conjunto de teste
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=42)

# Treina o modelo de regressão logística
model = LogisticRegression()
model.fit(X_train, y_train)

# Faz previsões no conjunto de teste
y_pred = model.predict(X_test)

# Avalia a precisão do modelo
accuracy = accuracy_score(y_test, y_pred)
plt.show()
print("Precisão do modelo: ", accuracy)

print(classification_report(y_test, y_pred))




#teste = {'idade':35,'renda':50000,'pontuacao_credito':700,'indice_endividamento':0.3}
#dft = pd.DataFrame(data = teste,index=[0])
#print(dft)

#resultado = model.predict(dft)
#print(resultado)