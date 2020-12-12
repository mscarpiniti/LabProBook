% Verifica delle capacità di calcolo delle GPU presenti sul PC.
%
% M. Scarpiniti (Dip. DIET - Sapienza Università di Roma)

n = gpuDeviceCount;
for k = 1:n
    D = gpuDevice(k);
    fprintf('La GPU %d ha capacità di calcolo pari a %s \n', D.Index, D.ComputeCapability);
end