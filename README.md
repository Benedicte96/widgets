#1 widgets stack
>Un widget qui positionne ses enfants par rapport aux bords de sa boîte.
Cette classe est utile si vous souhaitez superposer plusieurs enfants de manière simple

>2)AnimatedIcon:
Utiliser avec la classe AnimatedIcon pour afficher une icône animée spécifique

>3)AnimatedPadding:
Version animée de Padding qui transforme automatiquement l'indentation sur une durée donnée à chaque changement d'inset.

>4)Slider:
Un widget qui effectue par défaut une FadeTransition entre un nouveau widget et le widget précédemment défini sur le AnimatedSwitcher en tant qu'enfant.
S'ils sont permutés assez rapidement (c'est-à-dire avant la fin de la durée), plusieurs enfants précédents peuvent exister et effectuer la transition pendant que le dernier en arrive à la transition.
Si le "nouveau" enfant est du même type et de la même clé que le "vieux" enfant, mais avec des paramètres différents

>5)Flexible:
Un widget qui contrôle le comportement d'un enfant d'une ligne, d'une colonne ou d'un flex.
L’utilisation d’un widget Flexible donne à l’enfant d’une rangée, d’une colonne ou d’un Flex la possibilité de se développer pour remplir l’espace disponible dans l’axe principal (par exemple, horizontalement pour une rangée ou verticalement pour une colonne), mais contrairement à Expanded, Flexible ne fonctionne pas. obliger l'enfant à remplir l'espace disponible.

>6)Draggabale:
Un widget qui peut être déplacé vers un DragTarget.
Lorsqu'un widget déplaçable reconnaît le début d'un geste de glisser, il affiche un widget de commentaire qui suit le doigt de l'utilisateur sur l'écran.

>7)Mediaquary:
Établit une sous-arborescence dans laquelle les requêtes de média résolvent les données données.

>8)Spacer:
Spacer crée un espaceur vide ajustable pouvant être utilisé pour ajuster l'espacement entre les widgets d'un conteneur Flex, tel que Ligne ou Colonne

>9)LimitedBox:
Une boîte qui limite sa taille uniquement lorsqu'elle n'est pas contrainte.
Si la largeur maximale de ce widget n'est pas contrainte, la largeur de son enfant est limitée à maxWidth. De même, si la hauteur maximale de ce widget n'est pas contrainte, la hauteur de son enfant est limitée à maxHeight.

>10)Placeolder:
Un widget qui dessine une boîte qui représente l'endroit où d'autres widgets seront un jour ajoutés.

>11)AspactRation:
Un widget qui tente de dimensionner l'enfant à un rapport d'aspect spécifique.

Le widget essaie d'abord la plus grande largeur autorisée par les contraintes de présentation. La hauteur du widget est déterminée en appliquant le rapport de format donné à la largeur, exprimé en tant que rapport largeur / hauteur.

>12)ReorderableList:
Liste dont les éléments peuvent être réorganisés de manière interactive par l'utilisateur en les faisant glisser.
Cette classe est appropriée pour les vues avec un petit nombre d'enfants car la construction de la liste nécessite un travail pour chaque enfant susceptible de s'afficher dans la vue liste au lieu des seuls enfants réellement visionnés.

>13)RichText:
Le widget RichText affiche du texte qui utilise plusieurs styles différents.

>14)ConstraintedBox:
Un widget qui impose des contraintes supplémentaires à son enfant.

>15)IndexedStack:
Une pile qui montre un seul enfant parmi une liste d’enfants.
L'enfant affiché est celui avec l'index donné. La pile est toujours aussi grosse que le plus grand des enfants.

>16)AnimetedSwitch:
Un widget qui effectue par défaut une FadeTransition entre un nouveau widget et le widget précédemment défini sur le AnimatedSwitcher en tant qu'enfant.

>17)AnimatedOpacity:
Un widget qui rend son enfant partiellement transparent.

>18)Semantics:
>19)Inherit:
Les widgets hérités, lorsqu'ils sont référencés de cette manière, vont entraîner la reconstruction du consommateur lorsque le widget hérité lui-même changera d'état.

>20)AnimatedList:
Conteneur de défilement qui anime les éléments lorsqu'ils sont insérés ou supprimés.

