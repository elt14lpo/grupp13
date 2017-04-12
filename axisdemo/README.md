denna kod ska gå att kompilera på linux dator på skolan med:

gcc axisdemo.cc

g++ axisdemo.cc

får en binarfil executable a.out som körs i terminalen med:

./a.out

Testa köra den, den gör en time delay beräkning på 2 test vektorer, jag har kommenterat koden.

Med några små ändringar går det att kompilera i Nucleo, finns även på mbed som "axisdemo"

Kanske lättast att skriva/testa i skolans linux datorer, sedan föra över fungerande kod till Nucleo?

Bra beskrivning av time delay, med läsbar C++ källkod:
http://birota.azurewebsites.net/algorithms-for-time-delay-calculation/
Biblioteket finns här:
https://github.com/ebragge/LibTDE
Teorin finns här: University of Auckland - A Comparative Study of Time-Delay Estimation Techniques Using Microphone Arrays
https://pdfs.semanticscholar.org/f32c/b5fb2d0205d7c9b35e8d48edeef6c3d354db.pdf
