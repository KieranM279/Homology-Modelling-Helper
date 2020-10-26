# -*- coding: utf-8 -*-
"""
Created on Sun Oct 25 19:34:27 2020

@author: kiera
"""

import os
os.chdir('C:/Users/kiera/Documents/GitHub/Homology-Modelling-Helper')
from Bio.PDB import PDBParser
from Bio.PDB import Dice

parser = PDBParser()
structure = parser.get_structure("model", "H1_ACP_KS1.pdb")


SE_Dict = {'KSAT1a':  {'start':1,    'end':883},
           'KSAT1b':  {'start':2353, 'end':3253},
           'KR_ACPa': {'start':884,  'end':1472},
           'KR_ACPb': {'start':3236, 'end':3824},
           'KSAT2a':  {'start':1473, 'end':2352},
           'KSAT2b':  {'start':3825, 'end':4704}}

for i in SE_Dict:
    
    if (i[-1]=='a'):
        chain_id = 'A'
    elif (i[-1]=='b'):
        chain_id = 'B'
        
    start = SE_Dict[i]['start']
    end = SE_Dict[i]['end']
    filename = i

    Dice.extract(structure, chain_id, start, end, filename)

