%Rani Nirmala Prakoso
%493982/TK/54153

% Definisikan komponen medan listrik awal
E0 = [2, 3, 4];

% Definisikan konstanta dielektrik untuk masing-masing bagian
epsilon_kepala = 55.0;
epsilon_dada = 57.0;
epsilon_lemak = 5.3;

% Hitung norma dari medan listrik awal
norm_E0 = norm(E0);

% Hitung medan listrik yang berkurang pada masing-masing bagian
E_kepala = norm_E0 / epsilon_kepala;
E_dada = norm_E0 / epsilon_dada;
E_lemak = norm_E0 / epsilon_lemak;

% Buat vektor posisi untuk masing-masing bagian
% Asumsikan kita menempatkan mereka di posisi yang berbeda untuk tujuan visualisasi
pos_kepala = [1, 0, 0];
pos_dada = [2, 0, 0];
pos_lemak = [3, 0, 0];

% Plot medan listrik dengan quiver plot
quiver3(0, 0, 0, E_kepala*pos_kepala(1), E_kepala*pos_kepala(2), E_kepala*pos_kepala(3), 'r', 'LineWidth', 2);
hold on;
quiver3(0, 0, 0, E_dada*pos_dada(1), E_dada*pos_dada(2), E_dada*pos_dada(3), 'g', 'LineWidth', 2);
quiver3(0, 0, 0, E_lemak*pos_lemak(1), E_lemak*pos_lemak(2), E_lemak*pos_lemak(3), 'b', 'LineWidth', 2);

% Tambahkan label
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
legend({'Kepala Bayi', 'Dada Bayi', 'Lemak Perut Ibu'});
title('Distribusi Medan Listrik dalam Kandungan');
grid on;
axis equal;
hold off;

