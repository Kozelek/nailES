# NailES

*Not An Inform Library (No es una biblioteca de Inform) edición en ESpañol*

NailES es similar a una biblioteca estándar para el lenguaje de programación Inform 6.
Debería permitir a los autores crear juegos de aventuras de texto o ficción interactiva 
utilizando la máquina virtual Z-machine, para que se puedan jugar tanto en ordenadores de 8 bits como en plataformas más modernas.
Proporciona un analizador sintáctico, implementaciones de verbos comunes, así
como un marco de trabajo para escribir aventuras de texto.

NailES se basa en la biblioteca PunyInform, desarrollada por Johan Berntsson y Fredrik Ramsberg (y en su traducción al castellano, PunyInformES, desarrollada por Pablo Martínez, alias Kozelek).
PunyInform, a su vez, se basa en la biblioteca estándar de Inform 6, desarrollada por Graham Nelson. PunyInformES es más pequeña y rápida que la biblioteca estándar de Inform 6. NailES es más pequeña que PunyInform. También es más limitada, está menos probada, menos documentada y, en general, resulta más difícil trabajar con ella que con PunyInformES.

Los juegos que utilizan NailES solo se pueden compilar en formato z3. Esto, para juegos escritos en español, tiene una serie de inconvenientes: No permite la deducción automática de infinitivos regulares (por lo tanto hay que introducir tanto "salta" como "saltar" en el vocabulario) y no es capaz de comprender sufijos -lo, -la, -los, -las como en "coge la galleta. comela".

Para compilar juegos con NailES, necesitas el compilador oficial de Inform 6
mantenido por David Kinder, en
https://github.com/DavidKinder/Inform6.  Los binarios se pueden encontrar en el
[IF-Archive](https://www.ifarchive.org/indexes/if-archive/infocom/compilers/inform6/executables/).
Debes utilizar al menos Inform v6.44, y te recomiendo que utilices la última versión disponible.
Puedes utilizar [borogove.io](https://borogove.io/) para que tu juego de PunyInform
se pueda jugar en línea. Crea una cuenta, sube el archivo de tu juego y elige si
el juego debe estar visible y ser jugable para todos los visitantes de la página web, o
solo para aquellos que tengan el enlace a tu juego. Otra opción es subir 
el archivo de tu juego (por ejemplo, mygame.z3) al 
[Parchment HTML Converter](https://iplayif.com/api/sitegen) y descargar un 
archivo HTML único, que se puede subir a sitios como Itch.io.

## Motivación

El objetivo principal de NailES es crear juegos muy pequeños, sin dejar de tener acceso
a la mayor parte del práctico marco de trabajo que ofrece PunyInformES. Los juegos deben funcionar bien en
arquitecturas antiguas, como los ordenadores de 8 bits de la década de 1980.

Para crear imágenes de disco para ordenadores Commodore y Acorn, puedes utilizar
[Ozmoo](https://github.com/johanberntsson/ozmoo/).


## Estado

NailES funciona perfectamente, aunque probablemente aún tenga algunos detalles por pulir.

Si te interesa este proyecto, por favor, márcalo con una estrella o síguelo
aquí en GitHub (así como su proyecto padre, [NAIL](https://github.com/fredrikr/nail)). Los anuncios se publican en https://intfiction.org/c/authoring/inform-6/66

Puedes leer el manual en la carpeta de documentación.

## Aprender a usar NailES

Deberías empezar por aprender [PunyInformES](https://github.com/Kozelek/PunyInformES). A continuación, lee la (breve) documentación sobre NailES para ver qué partes de PunyInformES son compatibles con NailES.

## Herramientas

* Para trabajar con código fuente, es posible que te interese un editor de texto que cuente con un modo de
  coloreado de sintaxis para Inform 6. Algunas opciones populares son Visual Studio
  Code y Atom, ambos disponibles para Windows, Mac y Linux. Notepad++ es
  otra opción, para Windows.

* Para compilar rápidamente un juego para Commodore 64, 128, Plus/4, MEGA65, Commander X16 o Acorn/BBC, puedes utilizar [Ozmoo Online](https://ozmooo.online/).

* Para compilar un juego para más de 20 plataformas diferentes a la vez, puedes utilizar el
  [Puny BuildTools](https://github.com/ByteProject/Puny-BuildTools). Este
  conjunto de herramientas se puede instalar en Linux. Los usuarios de Windows pueden crear una máquina virtual
  que ejecute Linux.

* El [Parchment HTML Converter](https://iplayif.com/api/sitegen) puede convertir
  tu archivo de juego a un archivo HTML, lo que permite jugar a tu juego en un navegador web.

## Comunidad

Si quieres debatir o hacer preguntas sobre NailES, estos son buenos sitios a los que acudir:

* **[Canal de Telegram RetroAventuras](https://t.me/RetroAventuras).
  Es un canal genérico para todo tipo de aventuras textuales para ordenadores de 8 bits, pero el autor de esta traducción suele frecuentarlo.**

* **[Foro de intfiction.org, sección Inform 6](https://intfiction.org/c/authoring/inform-6/66).
  Por favor, etiqueta tus publicaciones con «punyinform».**

* **[Servidor de Discord de PunyInform](https://discord.com/invite/y9anzKJTBa).
  Puedes hablar sobre NAIL en el canal #inferior_systems. 
  Ten en cuenta que debes hacer clic en la marca de verificación del canal «Rules» y
  esperar unos minutos antes de poder publicar.**

También hay categorías y canales en los foros mencionados donde puedes
hablar sobre la trama, la historia, los acertijos, etc., y publicar solicitudes de beta-testers
para tu juego.

## Créditos

NailES toma prestado gran parte del código y los conceptos de PunyInform, creado y mantenido por Johan Berntsson y Fredrik Ramsberg, y de su traducción PunyInformES, creada y mantenida por Pablo Martínez (Kozelek). PunyInform, a su vez, toma prestado gran parte del código y los conceptos de la biblioteca estándar de Inform 6, obra de Graham Nelson. 

Muchísimas gracias a David Kinder y Andrew Plotkin por su arduo trabajo
y por la generosidad con la que han compartido su tiempo y sus conocimientos en relación con el compilador de Inform 6.

Muchísimas gracias a Graham Nelson, sin quien el compilador y la biblioteca de Inform 6 no existirían.
