## Detecția anomaliilor MatLab-Octave


1. estimate_gaussian reprezinta o implementare a functiei pentru estimarea mediei si matricei de covariatie a unui set de date primit. In aceasta functie, media este calculata pentru fiecare element al dataset-ului (din matrice X), rezultand un vector μ. Matricea de covariatie este calculata folosind deviatiile si este obtinuta prin inmultirea a trasnpusei deviatiei si impartita la numarul total de linii m.

2. multivariate_gaussian calculeaza probabilitatile pentru fiecare exemplu din X, luand in considerare media si matricea de covariatie. In primul rand fucntia calculeaza factorul de normalizare, care este utilizat pentru a asigura ca distributia este normalizata. Calcului deviations reprezinta deviatiile de la medie pentru fiecare exemplu din dataset-ul X. Se calculeaza si exponentul din functia de densitate a probabilitatii pentru fiecare element. Probabilitatea se afla utilizand normalizarea si exponentul calculat, returnand un vector de probabbilitati.

3. optimal_treshold determina cel mai bun prag(epsilon_best) pentru detectarea anomaliilor in functie de probabilitatile calculate si intoarce best_F1 ,precision si recall. Se intializeaza valorile epsilon_best, best_F1 si si precision cu 0. Pentru fiecare valoare de prag din intervalul calculat se efectueaza urmatoarele actiuni:
    1. Se fac predictii pe baza probabilitatilor si a pragului curent.
    2. Se calculeaza numarul de true positives (TP), false positives (FP) și false negatives (FN).
    3. Se calculeaza precision, reamintirea și F1 score pentru pragul curent.
    4. Daca F1 score-ul pentru pragul curent este mai mare decât cel mai bun F1 score anterior, se actualizeaza valorile pentru cel mai bun prag, cel mai bun F1 score și precizia și recall-ul asociat acestui prag (epsilon).
