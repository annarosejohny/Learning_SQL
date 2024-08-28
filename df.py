import pandas as pd

df1 = pd.read_excel("/Users/annarosejohny/Downloads/Tables.xlsx", sheet_name="Sheet1")
df2 = pd.read_excel("/Users/annarosejohny/Downloads/Tables.xlsx", sheet_name="Sheet2")

print(df1)
print(df2)


df = pd.merge(df1, df2, on=['retailer','retailer_code'], how='inner')
print(df)
