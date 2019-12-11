# Points-selles

> Kata tiré (encore !) de l'excellent site [Exercism.io](https://exercism.io/)

Trouver les points-selles dans une matrice

Avec une matrice comme celle-ci:

```text
    0  1  2
  |---------
0 | 9  8  7
1 | 5  3  2     <--- point-selle en (1,0) de valeur 5
2 | 6  6  7
```

Elle a un point-selle en (1, 0) (abscisse (x): 1, ordonnée (y): 0).

On appelle point-selle (ou point minimax) un emplacement dans une 
matrice tel que sa valeur soit la plus grande dans sa ligne et la 
plus petite dans sa colonne.  
Plus précisement, un "point-selle" est
supérieur ou égal à tous les élèments de sa ligne et inférieur ou égal
à tous les élèments de sa colonne.  

Dans notre exemple 5 fait partie de la seconde ligne `5 3 2` et 5 
est bien la plus grande valeur de cette ligne (5 >= 3 et et 5 >= 2)
et, de même pour la première colonne,  `9 5 6`, 5 est bien la plus 
petite valeur (5 =< 9 et 5 =< 6)


Une matrice peut avoir zéro ou plusieurs points-selles.

Pour les curieux, ces points-selles ont une autre utilité que celle de 
fournir la matière à un bon kata (!), par exemple en 
[théorie des jeux](https://fr.wikipedia.org/wiki/Th%C3%A9or%C3%A8me_du_minimax_de_von_Neumann#Points-selles_dans_les_matrices_de_gain)

Votre code doit être capable de fournir la liste (potentiellemnt vide) de
tous les points-selles four n'importe quelle matrice donnée gracieusement 
(on vous gâte) par l'équipe !

Les matrices peuvent ne pas être carrées, c'est-à-dire, ne pas avoir le 
même nombre de lignes que de colonnes, par exemple une matrice de 3 lignes
 et 2 colonnes.

Notez que vous pouvez trouver sur le Net d'autres définitions d'un point-selle
mais les tests (là encore gracieusement fournis !) pour cet exo suivent
la définition non ambigüe énoncée ci-dessus.

Pour nos amis anglophone: 

# Saddle Points

Detect saddle points in a matrix.

So say you have a matrix like so:

```text
    0  1  2
  |---------
0 | 9  8  7
1 | 5  3  2     <--- saddle point at (1,0)
2 | 6  6  7
```

It has a saddle point at (1, 0).

It's called a "saddle point" because it is greater than or equal to
every element in its row and less than or equal to every element in
its column.

A matrix may have zero or more saddle points.

Your code should be able to provide the (possibly empty) list of all the
saddle points for any given matrix.

The matrix can have a different number of rows and columns (Non square).

Note that you may find other definitions of matrix saddle points online,
but the tests for this exercise follow the above unambiguous definition.

* * * *

For installation and learning resources, refer to the
[Ruby resources page](http://exercism.io/languages/ruby/resources).

For running the tests provided, you will need the Minitest gem. Open a
terminal window and run the following command to install minitest:

    gem install minitest

If you would like color output, you can `require 'minitest/pride'` in
the test file, or note the alternative instruction, below, for running
the test file.

Run the tests from the exercise directory using the following command:

    ruby saddle_points_test.rb

To include color from the command line:

    ruby -r minitest/pride saddle_points_test.rb


## Source

J Dalbey's Programming Practice problems [http://users.csc.calpoly.edu/~jdalbey/103/Projects/ProgrammingPractice.html](http://users.csc.calpoly.edu/~jdalbey/103/Projects/ProgrammingPractice.html)

## Submitting Incomplete Solutions
It's possible to submit an incomplete solution so you can see how others have completed the exercise.
