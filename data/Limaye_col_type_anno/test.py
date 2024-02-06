# read test.json and print the first 5 lines
import pandas as pd
import json
with open('test.json') as f:
    data = json.load(f)
df = pd.DataFrame(data)
print(df.head())

# print the number of non-zero elements of the third column
print(df.iloc[:, 2].astype(bool).sum(axis=0))

# print total number of lines and columns
print(df.shape)

# print number of duplicates of line 1 in the first column
print(df.iloc[:, 0].duplicated().sum())