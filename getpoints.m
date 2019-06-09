function [x,y,bt,n,cn,isfirst] = getpoints(x,y,n,cn,isfirst)
%GETPOINTS Summary of this function goes here
%   x y   : current points coordinates, 
%   xi yi : the point to add
%   n     : point number for current cell
[xi,yi,bt] = ginput(1);

% when left click 
if bt == 1
    % connect with last point
    if  ~isfirst 
        connect_left(xi,yi,x,y);
    else 
        plot(xi,yi,'w.','markersize',14);
    end
    n = n+1;
    bt = 1;
    isfirst = 0;
end
% when middle click 
if bt == 2 && ~isfirst 
    % connect with last point
    connect_left(xi,yi,x,y);
    % connec to first point of the cell
    connect_first(xi,yi,x,y,n)
    
    bt = 1;
    cn = [cn,n+1];
    n = 0;
    
    isfirst = 1;
end

% when right click 

if bt == 3 
    if ~isfirst
        % connect with last point
        connect_left(xi,yi,x,y);
        % connec to first point
        connect_first(xi,yi,x,y,n);
    end
    bt = 0;
    cn = [cn,n+1];
    n = 0;
    isfirst = 1;
end

x = [x xi];
y = [y yi];

function connect_left(xi,yi,x,y)
        lw = 2;
        subplot(2,2,1);plot([xi,x(end)],[yi,y(end)],'w.-','linewidth',lw,'markersize',14);
        subplot(2,2,2);plot([xi,x(end)],[yi,y(end)],'w.-','linewidth',lw,'markersize',14);
        subplot(2,2,3);plot([xi,x(end)],[yi,y(end)],'w.-','linewidth',lw,'markersize',14);
        subplot(2,2,4);plot([xi,x(end)],[yi,y(end)],'w.-','linewidth',lw,'markersize',14);

function connect_first(xi,yi,x,y,n)
        lw = 2;
        subplot(2,2,1);plot([xi,x(end-n+1)],[yi,y(end-n+1)],'w.-','linewidth',lw,'markersize',14);
        subplot(2,2,2);plot([xi,x(end-n+1)],[yi,y(end-n+1)],'w.-','linewidth',lw,'markersize',14);
        subplot(2,2,3);plot([xi,x(end-n+1)],[yi,y(end-n+1)],'w.-','linewidth',lw,'markersize',14);
        subplot(2,2,4);plot([xi,x(end-n+1)],[yi,y(end-n+1)],'w.-','linewidth',lw,'markersize',14);

