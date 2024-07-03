A = imread ('referenciaHito1.jpg');
B = imread ('imagen1Hito1.jpg');
C = imread ('imagen2Hito1.jpg');
D = imread ('imagen3Hito1.jpg');
E = imread ('imagen4Hito1.jpg');

figure(1)
hold on
im1 = subplot(3,2,1);
imshow(A);
im2 = subplot(3,2,3); 
imshow(B);
im3 = subplot(3,2,4);
imshow(C);
im4 = subplot(3,2,5);
imshow(D);
im5 = subplot(3,2,6);
imshow(E);
hold off

descriptor1 = HOG(A); % descriptor de características imagen referencia
descriptor2 = HOG(B); % descriptor de características imagen 1

cos_uno = (sum(descriptor1.*descriptor2)) ./ ((sqrt(sum(descriptor1.^2))).*(sqrt(sum(descriptor2.^2))));  % Función similitud del coseno
uno = acos(cos_uno); % ángulo (distancia entre los descriptores)
dAB=1 - cos_uno;

descriptor3 = HOG(C); % descriptor de características imagen 2

cos_dos = (sum(descriptor1.*descriptor3)) ./ ((sqrt(sum(descriptor1.^2))).*(sqrt(sum(descriptor3.^2)))); 
dos = acos(cos_dos); 
dAC=1 - cos_dos;

descriptor4 = HOG(D); % descriptor de características imagen 3

cos_tres = (sum(descriptor1.*descriptor4)) ./ ((sqrt(sum(descriptor1.^2))).*(sqrt(sum(descriptor4.^2)))); 
tres = acos(cos_tres) ;
dAD=1 - cos_tres;

descriptor5 = HOG(E); % descriptor de características imagen 4

cos_cuatro = (sum(descriptor1.*descriptor5)) ./ ((sqrt(sum(descriptor1.^2))).*(sqrt(sum(descriptor5.^2))));  
cuatro = acos(cos_cuatro);
dAE=1 - cos_cuatro;

figure(2)
hold on 
plot(descriptor1, 'r'); 
plot(descriptor2, 'g');
plot(descriptor3, 'b');
plot(descriptor4, 'y');
plot(descriptor5, 'k');
hold off

fprintf('Las distancias son respectivamente: ');
disp(dAB); disp(dAC); disp(dAD); disp(dAE);

if (cuatro<tres && cuatro<dos && cuatro<uno)
   fprintf('La cuarta imagen es la más parecida a la de referencia'); 

elseif (tres<cuatro && tres<dos && tres<uno)
   fprintf('La tercera imagen es la más parecida a la de referencia'); 

elseif (dos<cuatro && dos<tres && dos<uno)
   fprintf('La segunda imagen es la más parecida a la de referencia'); 

elseif (uno<cuatro && uno<tres && uno<dos)
   fprintf('La primera imagen es la más parecida a la de referencia'); %añadir la distancia
end