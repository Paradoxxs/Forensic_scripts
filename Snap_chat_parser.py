import json
import pandas as pd
import glob
df = pd.DataFrame()
files = glob.glob('**/chat_history.json', recursive=True)

for file in files:
    json_data = open(file)
data = json.load(json_data)
for key, value in data.items() :
    temp = pd.DataFrame(data[key])
    if "Sent" in key:
        temp.columns = temp.columns.str.replace('To','Contact')
        temp.insert(1, "Direction","Sent")
    else:
        temp.columns = temp.columns.str.replace('From','Contact')
        temp.insert(1, "Direction","Received")
    df = df.append(temp, ignore_index=True) 
df.to_csv("Parsed_snap_chat.csv", index=False)