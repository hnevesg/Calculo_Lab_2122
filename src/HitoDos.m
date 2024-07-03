A = imread ('referenciaHito2.jpg'); % 200x200
B = imread ('asteroideHito2.jpg'); % 1200x1000

C=B; %=[1200, 1:1000];

for i=1:200 % Para que aparezca la imagen de referencia sobre la del asteroide
      for j=1:200
     C(i,j) = A(i,j); 
      end    
end
imshow (C);

B1= B(1:200,1:200); B2= B(1:200,201:400); B3= B(1:200,401:600); B4= B(1:200,601:800); B5= B(1:200,801:1000); 
B6= B(201:400,1:200); B7= B(201:400,201:400); B8= B(201:400,401:600); B9= B(201:400,601:800); B10= B(201:400,801:1000); 
B11= B(401:600,1:200); B12= B(401:600,201:400); B13= B(401:600,401:600); B14= B(401:600,601:800); B15= B(401:600,801:1000);
B16= B(601:800,1:200); B17= B(601:800,201:400); B18= B(601:800,401:600); B19= B(601:800,601:800); B20= B(601:800,801:1000);
B21= B(801:1000,1:200); B22= B(801:1000,201:400); B23= B(801:1000,401:600); B24= B(801:1000,601:800); B25= B(801:1000,801:1000); 
B26= B(1001:1200,1:200); B27= B(1001:1200,201:400); B28= B(1001:1200,401:600); B29= B(1001:1200,601:800); B30= B(1001:1200,801:1000);



uno = HOG(B1); dos = HOG(B2); tres = HOG(B3); cuatro = HOG(B4); cinco = HOG(B5); 
seis = HOG(B6); siete = HOG(B7); ocho = HOG(B8); nueve = HOG(B9); diez = HOG(B10); 
once = HOG(B11); doce = HOG(B12); trece = HOG(B13); catorce = HOG(B14); quince = HOG(B15); 
dieciseis = HOG(B16); diecisiete = HOG(B17); dieciocho = HOG(B18); diecinueve = HOG(B19); veinte = HOG(B20); 
veintiuno = HOG(B21); veintidos = HOG(B22); veintitres = HOG(B23); veinticuatro = HOG(B24); veinticinco = HOG(B25); 
veintiseis = HOG(B26); veintisiete = HOG(B27); veintiocho = HOG(B28); veintinueve = HOG(B29); treinta = HOG(B30); 


descriptor0 = HOG(A);

cos_uno = ((sum(descriptor0.*uno)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(uno.^2)))));
cos_dos = ((sum(descriptor0.*dos)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(dos.^2)))));
cos_tres = ((sum(descriptor0.*tres)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(tres.^2)))));
cos_cuatro = ((sum(descriptor0.*cuatro)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(cuatro.^2)))));
cos_cinco = ((sum(descriptor0.*cinco)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(cinco.^2)))));
cos_seis = ((sum(descriptor0.*seis)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(seis.^2)))));
cos_siete = ((sum(descriptor0.*siete)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(siete.^2)))));
cos_ocho = ((sum(descriptor0.*ocho)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(ocho.^2)))));
cos_nueve = ((sum(descriptor0.*nueve)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(nueve.^2)))));
cos_diez = ((sum(descriptor0.*diez)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(diez.^2)))));
cos_once = ((sum(descriptor0.*once)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(once.^2)))));
cos_doce = ((sum(descriptor0.*doce)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(doce.^2)))));
cos_trece = ((sum(descriptor0.*trece)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(trece.^2)))));
cos_catorce = ((sum(descriptor0.*catorce)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(catorce.^2)))));
cos_quince = ((sum(descriptor0.*quince)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(quince.^2)))));
cos_dieciseis = ((sum(descriptor0.*dieciseis)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(dieciseis.^2)))));
cos_diecisiete = ((sum(descriptor0.*diecisiete)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(diecisiete.^2)))));
cos_dieciocho = ((sum(descriptor0.*dieciocho)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(dieciocho.^2)))));
cos_diecinueve = ((sum(descriptor0.*diecinueve)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(diecinueve.^2)))));
cos_veinte = ((sum(descriptor0.*veinte)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(veinte.^2)))));
cos_veintiuno = ((sum(descriptor0.*veintiuno)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(veintiuno.^2)))));
cos_veintidos = ((sum(descriptor0.*veintidos)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(veintidos.^2)))));
cos_veintitres = ((sum(descriptor0.*veintitres)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(veintitres.^2)))));
cos_veinticuatro = ((sum(descriptor0.*veinticuatro)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(veinticuatro.^2)))));
cos_veinticinco = ((sum(descriptor0.*veinticinco)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(veinticinco.^2)))));
cos_veintiseis = ((sum(descriptor0.*veintiseis)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(veintiseis.^2)))));
cos_veintisiete = ((sum(descriptor0.*veintisiete)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(veintisiete.^2)))));
cos_veintiocho = ((sum(descriptor0.*veintiocho)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(veintiocho.^2)))));    
cos_veintinueve = ((sum(descriptor0.*veintinueve)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(veintinueve.^2)))));
cos_treinta = ((sum(descriptor0.*treinta)) ./ ((sqrt(sum(descriptor0.^2))).*(sqrt(sum(treinta.^2)))));

matr=[cos_uno,cos_dos,cos_tres,cos_cuatro,cos_cinco,cos_seis,cos_siete,cos_ocho,cos_nueve,cos_diez,cos_once,cos_doce,cos_trece,cos_catorce,cos_quince,cos_dieciseis,cos_diecisiete,cos_dieciocho,cos_diecinueve,cos_veinte,cos_veintiuno,cos_veintidos,cos_veintitres,cos_veinticuatro,cos_veinticinco,cos_veintiseis,cos_veintisiete,cos_veintiocho,cos_veintinueve,cos_treinta];

resultado = max(matr);
    fprintf('El coseno más cercano a uno es igual a');
    disp(resultado);
    fprintf('Y la distancia más cercana es igual a');
    disp(1-resultado);
    fprintf('Pertenece a la posición');
z = find(ismember(matr, max(matr(:))));
disp(z);
fprintf('La primera es la de referencia, y la segunda la más parecida:');
figure(2)
hold on
im1 = subplot(2,1,1);
imshow(A);
im2 = subplot(2,1,2);
imshow(B22);
hold off