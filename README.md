Balaniuc Rodion


## Task 1 Detecția anomaliilor


1. estimate_gaussian reprezinta o implementare a functiei pentru estimarea mediei si matricei de covariatie a unui set de date primit. In aceasta functie, media este calculata pentru fiecare element al dataset-ului (din matrice X), rezultand un vector μ. Matricea de covariatie este calculata folosind deviatiile si este obtinuta prin inmultirea a trasnpusei deviatiei si impartita la numarul total de linii m.

2. multivariate_gaussian calculeaza probabilitatile pentru fiecare exemplu din X, luand in considerare media si matricea de covariatie. In primul rand fucntia calculeaza factorul de normalizare, care este utilizat pentru a asigura ca distributia este normalizata. Calcului deviations reprezinta deviatiile de la medie pentru fiecare exemplu din dataset-ul X. Se calculeaza si exponentul din functia de densitate a probabilitatii pentru fiecare element. Probabilitatea se afla utilizand normalizarea si exponentul calculat, returnand un vector de probabbilitati.

3. optimal_treshold determina cel mai bun prag(epsilon_best) pentru detectarea anomaliilor in functie de probabilitatile calculate si intoarce best_F1 ,precision si recall. Se intializeaza valorile epsilon_best, best_F1 si si precision cu 0. Pentru fiecare valoare de prag din intervalul calculat se efectueaza urmatoarele actiuni:
    1. Se fac predictii pe baza probabilitatilor si a pragului curent.
    2. Se calculeaza numarul de true positives (TP), false positives (FP) și false negatives (FN).
    3. Se calculeaza precision, reamintirea și F1 score pentru pragul curent.
    4. Daca F1 score-ul pentru pragul curent este mai mare decât cel mai bun F1 score anterior, se actualizeaza valorile pentru cel mai bun prag, cel mai bun F1 score și precizia și recall-ul asociat acestui prag (epsilon).


## Task 2 Kernel Regression


1. linear_kernel este o functie de calcul a produsului scalar dintre vectorii x si y.

2. polynomial_kernel este o functie ce aplica formula de calcul produs scalar intre x si y + 1 ridicat la puterea d (gradul polinomului) pentru a obtine kernelul polinomial.

3. gaussian_kernel este o functie ce calculeza norma euclidiana a diferentei dintre vectorii x si y, apoi aplica functia expoentiala k = exp(-norm(x - y)^2 / (2 * sigma^2)).

4. split_dataset primeste un se de date X si etichetele corespunzatoare y. Separa setul de date si etichetele intr-un set de date de antrenare X_train si y_train si un set de date de predictie X_pred si y_pred utilizand procentajul specificat.
Functia returneaza aceste patru seturi de date si variabilele corespunzatoare, impartite in conformitate cu procentajul specificat.

5. build_kernel contruieste o matricea kernel K, pe baza unui set de date X si functiei kernel. Se itereaza prin matrice prin toate perechile de date din X si se aplica fucntia kernel pentru a construi matricea kernel. Rezultatul este o matrice simetrica K, unde elementul de pe linia i si coloana j reprezinta rezulatul aplicarii functiei de kernel asupra exemplelor X(i,:) si X(j,:).

6. cholesky returneaza matricea L, careia ii sunt aplicate algoritmul de factorizare Cholesky, care descompune matricea simetrica si pozitiv definita intr-o matrice inferior triunghiulara.

7. get_lower_inverse primeste ca parametru matricea L inferior triunghiulara si se returneaza matricea  P - inversa, cu ajutorul functiei predefinite inv().

8. get_prediction_params aceasta functie primeste matricea kernel, vectorul de date y si parametrul de regularizare lambda. In primul rand se aplica regularizarea la matricea kernel, apoi se calculeaza factorizarea Cholesky a matricei rezultate. Astfel prin Cholesky, se rezolva sistemul de ecuatii a = L' \ (L \ y), a reprezentand paranetrii de predictie obtinuti.

9. conjugate_gradient in aceasta functie algoritmul incepe de la un vector de pornire, si se calculeaza succesiv solutia aproximativa x. In fiecare iteratie se actualizeaza solutia si directia de cautare pe baza gradientului si a unei metode de cautare a pasului optim. In momentul in care reziduul devine suficient de mic sau cand se atinge numarul maxim de iteratii algoritmul se opreste.

10. get_prediction_params_iterative primeste matricea kernel K, vectorul de date y si parametrul de regularizare lambda. Se aplica regularizarea la matricea kernel. Apoi, se intializeaza vectorul de parametri de predictie cu zero si se utilizeaza algoritmul conjugate_gradient pentru a obtine acesti parametri de predictie, utilizand matricea K regularizata. In rezultat vom avea parametrii de predixtie obtinuti iterativ.

11. eval_value utilizeaza pentru evaluarea valorii functiei de predictie pentru un nou punct de date x folosind un model bazat pe regresie cu kernel. Se calculeaza valoarea predictiei pentru noul punct x folosind parametrii de predictiei a si functia de kernel f, permitand estimarea valorii pentru un nou punct de date pe baza informatiilor din setul de antrenare si a parametrilor de predictie.


## Task 3 Generare de text 


1. distinct_words este functia ce returneaza un vector retval continand cuvinte disntincte dintr-o lista de tokens, utilizand functia unique.

2.  k_secv este functia ce imăarte un sir de caractere in secvente de lungime k. Se intializeaza un vector de celule egal cu lenght(A) - k. Apoi, pentru fiecare pozitie i de la 1 la lenght(A) - k, k_secv selecteaza elemente incepand de la pozitia i pana la i+k-1 pentru a forma o secventa si apoi e convertita folosind functia strjoin. Sirul rezultat este stocat in celula din vectorul B.

3. distinct_k_secv este fucntia care returneaza un vector unique_cell_array de celule care contine doar secventele unice.

4. word_idx este functia care construieste un obiect de tip 'containers.Map' ce mapeaza cuvintele distincte la indici.
keys - contine cuvintele distincte;
values - contine indicii corespunzatori fiecarui cuvant disctinct; Astfel se returneza rezultatul in variabila 'retval'.

5. k_secv_idx este functia care construieste un obiect de tip 'containers.Map' care mapeaza secventee distincte la indici.
keys - contine cuvintele distincte;
values - contine indicii corespunzatori fiecarui cuvant disctinct; Astfel se returneza rezultatul in variabila 'retval'.
