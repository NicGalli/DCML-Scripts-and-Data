#!/usr/bin/python
import pandas as pd
	
top = pd.read_csv('dataset/top_final.csv')
ts = pd.read_csv('dataset/tshark_final.csv')
top = top.drop_duplicates(subset='time', keep="first")
ts = ts.drop_duplicates(subset='time', keep="first")

ds = pd.merge(top, ts, on='time', how='left')
ds.fillna(0, inplace=True)

ds.sort_values(by=['time'], inplace=True)

ds['multilabel'] = 'normal'



ds.to_csv('dataset/dataset.csv')



