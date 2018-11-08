#!/usr/bin/env python

import os
from datasets.imdb import imdb
import numpy as np


class DAVIS(imdb):
  def evaluate_vos(self):
    pass

  def prepareBoundingBoxs(self):
    pass

  #prepare training data
  def prepare_data(self):
    pass