using DesafioPOO.Models;

Nokia nokia = new Nokia("123432", "I5", "000000", 64);
Iphone iphoneX = new Iphone("12345678", "X", "090909", 128);

nokia.Ligar();
iphoneX.Ligar();

nokia.InstalarAplicativo("WhatsApp");
iphoneX.InstalarAplicativo("Tinker");

nokia.ReceberLigacao();
iphoneX.ReceberLigacao();

