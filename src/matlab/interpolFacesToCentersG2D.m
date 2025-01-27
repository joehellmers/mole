% SPDX-License-Identifier: GPL-3.0-only
% 
% Copyright 2008-2024 San Diego State University Research Foundation (SDSURF). 
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, version 3.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% LICENSE file or on the web GNU General Public License 
% <https://www.gnu.org/licenses/> for more details.
%
% ------------------------------------------------------------------------

function I = interpolFacesToCentersG2D(k, m, n)
% 2D interpolation from faces to centers
% centers logical coordinates [1,1.5:m-0.5,m]x[1,1.5:n-0.5,n]
% m, n, are the number of cells in the logical x- and y- axes

    Ix = interpolFacesToCentersG1D(k, m);
    Iy = interpolFacesToCentersG1D(k, n);

    Im = sparse(m + 2, m);
    In = sparse(n + 2, n);

    Im(2:(m+2)-1, :) = speye(m, m);
    In(2:(n+2)-1, :) = speye(n, n);

    Sx = kron(In, Ix);
    Sy = kron(Iy, Im);

    I = sparse(2*(n+2)*(m+2), n*(m+1)+(n+1)*m);
    
    I(1:(n+2)*(m+2), 1:n*(m+1)) = Sx; 
    I((n+2)*(m+2)+1:end, n*(m+1)+1:end) = Sy;  
end