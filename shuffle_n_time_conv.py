#!/usr/bin/python
import pandas as pd
import datetime
import time
from sklearn.utils import shuffle



def get_sec(time_str):
    """Get seconds from time."""
    h, m, s = time_str.split(':')
    return int(h) * 3600 + int(m) * 60 + int(s)
	

ds = pd.read_csv('dataset/dataset.csv')

ds = shuffle(ds)


ds['time'] = ds['time'].apply(lambda x: get_sec(x))

ds.to_csv('dataset/dataset.csv')

