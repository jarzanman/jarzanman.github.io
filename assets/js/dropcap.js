const fonts = ['goudy', 'woodcut', 'cheshire', 'exotica', 'floral'];
let random=fonts[Math.floor(Math.random()*fonts.length)];let dc=document.querySelectorAll('.dc');
//random=fonts[4];
dc.forEach((e)=>{e.classList.add(random)})

