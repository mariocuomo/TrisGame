-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local widget = require "widget"
local composer = require "composer"


local larghezza = display.contentWidth
local altezza = display.contentHeight
local background = display.newImage( "background.png")
background.x = display.contentWidth/2
background.y = display.contentHeight/2
display.setDefault("background", 1, 1, 1)

local titolo = display.newText( "TRIS GAME", larghezza/2, 0, native.systemFont,30)
titolo:setFillColor(0,0,0)

local descrizione = display.newText( "Turno colore: rosso", larghezza/2, 40, native.systemFont,25)
descrizione:setFillColor(0,0,0)

local turno=0;
local finita=0;
local prima_riga = {3,4,5}
local seconda_riga = {6,7,8}
local terza_riga = {9,10,11}




local myButtonEvent = function (event )
  print(prima_riga[1])

  if turno%2 == 0 then
    descrizione.text="Turno colore: verde"
    mossaPrimoGiocatore(event.target.id)
  else
    descrizione.text="Turno colore: rosso"
    mossaSecondoGiocatore(event.target.id)
  end
  turno = turno + 1
  verificaVincitore()
  if finita == 1 then
    local vittoria = display.newText( "La partita è finita in vittoria", larghezza/2, altezza, native.systemFont,25)
    vittoria:setFillColor(0,0,0)
    end
  if turno==9 then
    local pareggio = display.newText( "La partita è finita in pareggio", larghezza/2, altezza, native.systemFont,25)
    pareggio:setFillColor(0,0,0)
  end  
end
local myButton1=widget.newButton(
  {
    id = "1",
    onRelease = myButtonEvent,
    emboss = false,
    -- Properties for a rounded rectangle button
    shape = "roundedRect",
    top=80,
    width = 80,
    height = 80,
    cornerRadius = 2,
    --fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
    --strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
    --strokeWidth = 4
  }
)

local myButton2=widget.newButton(
  {
    id = "2",
    onRelease = myButtonEvent,
    emboss = false,
    -- Properties for a rounded rectangle button
    shape = "roundedRect",
    top=80,
    left=110,
    width = 80,
    height = 80,
    cornerRadius = 2,

  }
)

local myButton3=widget.newButton(
  {
    id = "3",
    onRelease = myButtonEvent,
    emboss = false,
    -- Properties for a rounded rectangle button
    shape = "roundedRect",
    top=80,
    left=230,
    width = 80,
    height = 80,
    cornerRadius = 2,

  }
)

local myButton4=widget.newButton(
  {
    id = "4",
    onRelease = myButtonEvent,
    emboss = false,
    -- Properties for a rounded rectangle button
    shape = "roundedRect",
    top=200,
    width = 80,
    height = 80,
    cornerRadius = 2,

  }
)

local myButton5=widget.newButton(
  {
    id = "5",
    onRelease = myButtonEvent,
    emboss = false,
    -- Properties for a rounded rectangle button
    shape = "roundedRect",
    top=200,
    left=110,
    width = 80,
    height = 80,
    cornerRadius = 2,

  }
)

local myButton6=widget.newButton(
  {
    id = "6",
    onRelease = myButtonEvent,
    emboss = false,
    -- Properties for a rounded rectangle button
    shape = "roundedRect",
    top=200,
    left=230,
    width = 80,
    height = 80,
    cornerRadius = 2,

  }
)

local myButton7=widget.newButton(
  {
    id = "7",
    onRelease = myButtonEvent,
    emboss = false,
    -- Properties for a rounded rectangle button
    shape = "roundedRect",
    top=320,
    width = 80,
    height = 80,
    cornerRadius = 2,

  }
)

local myButton8=widget.newButton(
  {
    id = "8",
    onRelease = myButtonEvent,
    emboss = false,
    -- Properties for a rounded rectangle button
    shape = "roundedRect",
    top=320,
    left=110,
    width = 80,
    height = 80,
    cornerRadius = 2,

  }
)

local myButton9=widget.newButton(
  {
    id = "9",
    onRelease = myButtonEvent,
    emboss = false,
    -- Properties for a rounded rectangle button
    shape = "roundedRect",
    top=320,
    left=230,
    width = 80,
    height = 80,
    cornerRadius = 2,
  }
)




local myCircle1a = display.newCircle( 50, 110, 35 )
myCircle1a:setFillColor(1,0,0,0)
local myCircle2a= display.newCircle( 160, 110, 35 )
myCircle2a:setFillColor(1,0,0,0)
local myCircle3a = display.newCircle( 270, 110, 35 )
myCircle3a:setFillColor(1,0,0,0)
local myCircle4a = display.newCircle( 50, 240, 35 )
myCircle4a:setFillColor(1,0,0,0)
local myCircle5a = display.newCircle( 160, 240, 35 )
myCircle5a:setFillColor(1,0,0,0)
local myCircle6a = display.newCircle( 270, 240, 35 )
myCircle6a:setFillColor(1,0,0,0)
local myCircle7a = display.newCircle( 50, 360, 35 )
myCircle7a:setFillColor(1,0,0,0)
local myCircle8a = display.newCircle( 160, 360, 35 )
myCircle8a:setFillColor(1,0,0,0)
local myCircle9a = display.newCircle( 270, 360, 35 )
myCircle9a:setFillColor(1,0,0,0)
local myCircle1b = display.newCircle( 50, 110, 35 )
myCircle1b:setFillColor(0,1,0,0)
local myCircle2b = display.newCircle( 160, 110, 35 )
myCircle2b:setFillColor(0,1,0,0)
local myCircle3b = display.newCircle( 270, 110, 35 )
myCircle3b:setFillColor(0,1,0,0)
local myCircle4b = display.newCircle( 50, 240, 35 )
myCircle4b:setFillColor(0,1,0,0)
local myCircle5b = display.newCircle( 160, 240, 35 )
myCircle5b:setFillColor(0,1,0,0)
local myCircle6b = display.newCircle( 270, 240, 35 )
myCircle6b:setFillColor(0,1,0,0)
local myCircle7b = display.newCircle( 50, 360, 35 )
myCircle7b:setFillColor(0,1,0,0)
local myCircle8b = display.newCircle( 160, 360, 35 )
myCircle8b:setFillColor(0,1,0,0)
local myCircle9b = display.newCircle( 270, 360, 35 )
myCircle9b:setFillColor(0,1,0,0)

function verificaVincitore()
  --verifica orizzontale
  if prima_riga[1]==prima_riga[2] and prima_riga[2]==prima_riga[3] then
    finita=1;
  elseif seconda_riga[1]==seconda_riga[2] and seconda_riga[2]==seconda_riga[3] then
    finita=1;
  elseif terza_riga[1]==terza_riga[2] and terza_riga[2]==terza_riga[3] then
    finita=1;
  --verifica verticale
  elseif prima_riga[1]==seconda_riga[1] and seconda_riga[1]==terza_riga[1] then
    finita=1;
  elseif prima_riga[2]==seconda_riga[2] and seconda_riga[2]==terza_riga[2] then
    finita=1;
  elseif prima_riga[3]==seconda_riga[3] and seconda_riga[3]==terza_riga[3] then
    finita=1;
  --verifica obliquo
  elseif prima_riga[1]==seconda_riga[2] and seconda_riga[2]==terza_riga[3] then
    finita=1;
  elseif prima_riga[3]==seconda_riga[2] and seconda_riga[2]==terza_riga[1] then
    finita=1;
  end
end

  function mossaPrimoGiocatore (casella)
    if casella == "1" then
      myCircle1a:setFillColor(1,0,0,1)
      rimuovi(myButton1)
      prima_riga[1]=1
    elseif casella == "2" then
      myCircle2a:setFillColor(1,0,0,1)
      rimuovi(myButton2)
      prima_riga[2]=1
    elseif casella == "3" then
      myCircle3a:setFillColor(1,0,0,1)
      rimuovi(myButton3)
      prima_riga[3]=1
    elseif casella == "4" then
      myCircle4a:setFillColor(1,0,0,1)
      rimuovi(myButton4)
      seconda_riga[1]=1
    elseif casella == "5" then
      prima_riga[2]=1
      myCircle5a:setFillColor(1,0,0,1)
      rimuovi(myButton5)
    elseif casella == "6" then
      prima_riga[3]=1
      myCircle6a:setFillColor(1,0,0,1)
      rimuovi(myButton6)
    elseif casella == "7" then
      terza_riga[1]=1
      myCircle7a:setFillColor(1,0,0,1)
      rimuovi(myButton7)
    elseif casella == "8" then
      terza_riga[2]=1
      myCircle8a:setFillColor(1,0,0,1)
      rimuovi(myButton8)
    elseif casella == "9" then
      terza_riga[3]=1
      myCircle9a:setFillColor(1,0,0,1)
      rimuovi(myButton9)
    else
      error("invalid operation")
    end
  end

  function mossaSecondoGiocatore (casella)
    if casella == "1" then
      myCircle1b:setFillColor(0,1,0,1)
      rimuovi(myButton1)
      prima_riga[1]=2
    elseif casella == "2" then
      myCircle2b:setFillColor(0,1,0,1)
      rimuovi(myButton2)
      prima_riga[2]=2
    elseif casella == "3" then
      myCircle3b:setFillColor(0,1,0,1)
      rimuovi(myButton3)
      prima_riga[3]=2
    elseif casella == "4" then
      seconda_riga[1]=2
      myCircle4b:setFillColor(0,1,0,1)
      rimuovi(myButton4)
    elseif casella == "5" then
      seconda_riga[2]=2
      myCircle5b:setFillColor(0,1,0,1)
      rimuovi(myButton5)
    elseif casella == "6" then
      seconda_riga[3]=2
      myCircle6b:setFillColor(0,1,0,1)
      rimuovi(myButton6)
    elseif casella == "7" then
      terza_riga[1]=2
      myCircle7b:setFillColor(0,1,0,1)
      rimuovi(myButton7)
    elseif casella == "8" then
      terza_riga[2]=2
      myCircle8b:setFillColor(0,1,0,1)
      rimuovi(myButton8)
    elseif casella == "9" then
      terza_riga[3]=2
      myCircle9b:setFillColor(0,1,0,1)
      rimuovi(myButton9)
    else
      error("invalid operation")
    end
  end


  function rimuovi(x)
    display.remove(x)
  end