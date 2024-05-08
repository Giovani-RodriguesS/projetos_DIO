using DesafioPOO.Models;

Nokia nokia = new Nokia("123432", "I5", "000000", 64);
Iphone iphoneX = new Iphone("12345678", "X", "090909", 128);

Console.WriteLine("Nokia: ");
nokia.Ligar();
nokia.InstalarAplicativo("WhatsApp");
nokia.ReceberLigacao();

Console.WriteLine("\nIphone: ");
iphoneX.Ligar();
iphoneX.InstalarAplicativo("Tinker");
iphoneX.ReceberLigacao();


