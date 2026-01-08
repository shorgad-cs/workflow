import sys
import pandas as pd

csv_path = sys.argv[1]

df = pd.read_csv(csv_path)

for _, row in df.iterrows():
    print(f"{row['a']} {row['b']} {row['image_path']}")