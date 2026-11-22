mezczyzna(jan_nowak).
mezczyzna(aleksander_nowak).
mezczyzna(antoni_nowak).
mezczyzna(tomasz_kaczmarek).
mezczyzna(gabriel_piotrowski).
mezczyzna(piotr_nowak).
mezczyzna(ignacy_nowak).
mezczyzna(jakub_nowak).
mezczyzna(maksymillian_wozniak).
mezczyzna(krzystof_nowak).

kobieta(marcelina_nowak).
kobieta(zuzanna_kowalska).
kobieta(aniela_nowak).
kobieta(joanna_nowak).
kobieta(stefania_mazur).
kobieta(julia_wisniewska).
kobieta(anna_nowak).
kobieta(gabriela_nowak).
kobieta(helena_nowak).
kobieta(katarzyna_kozlowska).
kobieta(hanna_kowalczyk).

dziecko(krzystof_nowak).
dziecko(helena_nowak).
dziecko(gabriela_nowak).
dziecko(anna_nowak).
dziecko(jakub_nowak).
dziecko(ignacy_nowak).
dziecko(piotr_nowak).
dziecko(joanna_nowak).
dziecko(aniela_nowak).
dziecko(antoni_nowak).
dziecko(jan_nowak).
dziecko(marcelina_nowak).

rodzic(aleksander_nowak, krzystof_nowak).
rodzic(aleksander_nowak, helena_nowak).
rodzic(aleksander_nowak, gabriela_nowak).
rodzic(aleksander_nowak, anna_nowak).
rodzic(aleksander_nowak, jakub_nowak).
rodzic(hanna_kowalczyk, krzystof_nowak).
rodzic(hanna_kowalczyk, helena_nowak).
rodzic(hanna_kowalczyk, gabriela_nowak).
rodzic(hanna_kowalczyk, anna_nowak).
rodzic(hanna_kowalczyk, jakub_nowak).
rodzic(krzystof_nowak, ignacy_nowak).
rodzic(krzystof_nowak, piotr_nowak).
rodzic(krzystof_nowak, joanna_nowak).
rodzic(krzystof_nowak, aniela_nowak).
rodzic(katarzyna_kozlowska, ignacy_nowak).
rodzic(katarzyna_kozlowska, piotr_nowak).
rodzic(katarzyna_kozlowska, joanna_nowak).
rodzic(katarzyna_kozlowska, aniela_nowak).
rodzic(jakub_nowak, antoni_nowak).
rodzic(julia_wisniewska, antoni_nowak).
rodzic(antoni_nowak, jan_nowak).
rodzic(antoni_nowak, marcelina_nowak).
rodzic(zuzanna_kowalska, jan_nowak).
rodzic(zuzanna_kowalska, marcelina_nowak).

ojciec(X, Y) :- mezczyzna(X), rodzic(X, Y), X\=Y.
matka(X, Y) :- kobieta(X), rodzic(X, Y).
dziadek(X,Y) :- mezczyzna(X), rodzic(X, R), rodzic(R, Y), X\=Y.
babcia(X, Y) :- kobieta(X), rodzic(X, R), rodzic(R, Y), X\=Y.
brat(X, Y) :- mezczyzna(X), rodzic(R, X), rodzic(R, Y), Y\=X.
wujek(X, Y) :- rodzic(R, Y), brat(X, R), X\=Y.
siostra(X, Y) :- kobieta(X), rodzic(Z, X), rodzic(Z, Y), X\=Y.
ciocia(X, Y) :- rodzic(R, Y), siostra(X, R), X\=Y.
syn(X, Y) :-  mezczyzna(X), rodzic(Y, X).
corka(X, Y) :- kobieta(X), rodzic(Y, X).

