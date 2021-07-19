\
\ Copyright © 2021 huangrt all rights reserved.
\
\ @author: huangrt
\ @date: 4 Jul 2021
\
\ A brief description of this program.
\

: return_recom_menu
  ctx{ buttons }
  "Back to Home" backButton ctx{ home }
  q{
    <p>Here are the meals we recommended for you:</p>
    <center>
    #{buttons}
    #{home}</center>
  }q
;


include ./topics/Menu/bento_meal/Exquisite_Bento/Boite_recom.m
include ./topics/Menu/bento_meal/Exquisite_Bento/Grande_recom.m
include ./topics/Menu/bento_meal/Exquisite_Bento/Gusto_recom.m
include ./topics/Menu/bento_meal/Exquisite_Bento/Mieux_recom.m

include ./topics/Menu/bento_meal/Rainbow_Bento/Bitez_recom.m
include ./topics/Menu/bento_meal/Rainbow_Bento/Delicieux_recom.m
include ./topics/Menu/bento_meal/Rainbow_Bento/Fushion_recom.m
include ./topics/Menu/bento_meal/Rainbow_Bento/Saveur_recom.m
\ 
include ./topics/Menu/mini_feast/Appetit_recom.m
include ./topics/Menu/mini_feast/Valueur_recom.m
include ./topics/Menu/mini_feast/Merveille_recom.m
include ./topics/Menu/mini_feast/Superieur_recom.m
include ./topics/Menu/mini_feast/Joyeux_recom.m

\ include ./topics/Menu/refreshment/Rainbow_Snack_Box/Bouchees_recom.m
\ include ./topics/Menu/refreshment/Rainbow_Snack_Box/Patisserie_recom.m
\ include ./topics/Menu/refreshment/Rainbow_Snack_Box/Fraiche_recom.m
\ include ./topics/Menu/refreshment/Rainbow_Snack_Box/Bouffee_recom.m
\ include ./topics/Menu/refreshment/Rainbow_Snack_Box/Emballee_recom.m
\ 5 files above are combined as this
include ./topics/Menu/refreshment/Rainbow_Snack_Box/recom-rr.m

\ include ./topics/Menu/refreshment/High_Tea_Express/Valeur_recom.m
\ include ./topics/Menu/refreshment/High_Tea_Express/Merveille_recom.m
\ include ./topics/Menu/refreshment/High_Tea_Express/Superieur_recom.m
\ 3 files above are combined as this
include ./topics/Menu/refreshment/High_Tea_Express/recom-rh.m

\ include ./topics/Menu/wedding/Le_Amour_Mini_Wedding/Matrimony_recom.m
\ include ./topics/Menu/wedding/Le_Amour_Mini_Wedding/Nuptial_recom.m
\ 2 files above are combined as this
include ./topics/Menu/wedding/Le_Amour_Mini_Wedding/recom-wl.m

include ./topics/Menu/wedding/Wedding_Reception/Romance_recom.m
include ./topics/Menu/wedding/Wedding_Reception/Destino_recom.m
include ./topics/Menu/wedding/Wedding_Reception/Eternite_recom.m
include ./topics/Menu/wedding/Wedding_Reception/Charme_recom.m
include ./topics/Menu/wedding/Wedding_Reception/Beaute_recom.m
include ./topics/Menu/wedding/Wedding_Reception/Amore_recom.m



