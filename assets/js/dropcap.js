const fonts = ["GoudyIni", "TypographerWoodcut", "CheshireInitials", "Exotica"];
let random = fonts[Math.floor(Math.random() * fonts.length)];
//random = fonts[2]
let dc = document.querySelectorAll(".dc");
console.log(dc);
switch (random) {
  case "GoudyIni":
    dc.forEach((e) => {
      e.classList.add("goudyini");
    });
    break;
  case "TypographerWoodcut":
    dc.forEach((e) => {
      e.classList.add("typographerwoodcut");
    });
    break;
  case "CheshireInitials":
    dc.forEach((e) => {
      e.classList.add("cheshireinitials");
    });
    break;
  case "Exotica":
    dc.forEach((e) => {
      e.classList.add("exotica");
    });
    break;
}
