function out = bilinear_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica interpolare bilineara pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % TODO: extrage canalul rosu al imaginii
    r = img(:, :, 1);
    % TODO: extrage canalul verde al imaginii
    g = img(:, :, 2);
    % TODO: extrage canalul albastru al imaginii
    b = img(:, :, 3);

    % TODO: aplica rotatia pe fiecare canal al imaginii
    mat_r = bilinear_rotate(r, rotation_angle);
    mat_g = bilinear_rotate(g, rotation_angle);
    mat_b = bilinear_rotate(b, rotation_angle);
    % TODO: reconstruieste imaginea RGB finala (hint: cat)
    out = cat(3, mat_r, mat_g, mat_b);
endfunction