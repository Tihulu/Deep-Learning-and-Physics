#!/bin/bash
files="notebooks/BinaryClassifierSolution.ipynb notebooks/CurveFittingWithMLPSolution.ipynb"

for f in $files; do
   echo "encryping $f"
   openssl enc -pbkdf2 -salt -pass file:password.txt -in $f -out "$f.enc"
done
