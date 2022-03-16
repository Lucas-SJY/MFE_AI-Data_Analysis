function [] = ITTS_case_plots_function()
% /*M-FILE FUNCTION ITTS_case_plots_function MMM ITTS */ %
% File description:
%
%    some plot cases, for "MATLAB basic" course from IT Training for
%    Students (ITTS) , University of Glasgow
% 
%  Inputs:  NONE
% Outputs: NOE
%Appendix comments:
%
% 1) http://services.moodle.gla.ac.uk/course/view.php?id=228
% 2) http://www.mathworks.com/access/helpdesk/help/techdoc/index.html?/access/helpdesk/help/techdoc/visualize/f5-3558.html
%===================================================================================================
%  See Also:        
%                    ITTS_case_plots_function.m
%                    ITTS_case_plots_script.m
%===================================================================================================
% 
%===================================================================================================
%Revision -
% Date             Name        Description of Change  Email
% 20-Jul-2008  Yi Chen     Initial                            yichen@mech.gla.ac.uk
% 
%HISTORY$
%==================================================================================================*/

% ITTS_case_plots_function Begin
clear
home
close('all')

figure(1)

subplot(3,3,1);
ITTS_case_plots_func_plot_1();

subplot(3,3,2);
ITTS_case_plots_func_plot_2();

subplot(3,3,3);
ITTS_case_plots_func_plot_3();

subplot(3,3,4);
ITTS_case_plots_func_plot_4();

subplot(3,3,5);
ITTS_case_plots_func_plot_5();

subplot(3,3,6);
ITTS_case_plots_func_plot_6();

subplot(3,3,7);
ITTS_case_plots_func_plot_7();

subplot(3,3,8);
ITTS_case_plots_func_plot_8();

subplot(3,3,9);
ITTS_case_plots_func_plot_9();

clear
home

% ITTS_case_plots_function End

%% internal functions
% No.  1
function []  = ITTS_case_plots_func_plot_1()
[X,Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;

mesh(X,Y,Z)



% No.  2
function []  = ITTS_case_plots_func_plot_2()
[X,Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;

mesh(X,Y,Z)

surf(X,Y,Z,'FaceColor','interp',...
	'EdgeColor','none',...
	'FaceLighting','phong')
daspect([5 5 1])
axis tight
view(-50,30)
camlight left

x = rand(100,1)*16 - 8;
y = rand(100,1)*16 - 8;
r = sqrt(x.^2 + y.^2) + eps;
z = sin(r)./r;

xlin = linspace(min(x),max(x),33);
ylin = linspace(min(y),max(y),33);
Z = griddata(x,y,z,X,Y,'cubic');

% No.  3
function []  = ITTS_case_plots_func_plot_3()
[X,Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;

surf(X,Y,Z,'FaceColor','interp',...
	'EdgeColor','none',...
	'FaceLighting','phong')
daspect([5 5 1])
axis tight
view(-50,30)
camlight left

x = rand(100,1)*16 - 8;
y = rand(100,1)*16 - 8;
r = sqrt(x.^2 + y.^2) + eps;
z = sin(r)./r;

xlin = linspace(min(x),max(x),33);
ylin = linspace(min(y),max(y),33);
Z = griddata(x,y,z,X,Y,'cubic');

mesh(X,Y,Z) %interpolated
axis tight; hold on
plot3(x,y,z,'.','MarkerSize',15) %nonuniform

% No. 4
function []  = ITTS_case_plots_func_plot_4()
load wind
xmin = min(x(:));
xmax = max(x(:));
ymax = max(y(:));
zmin = min(z(:));

wind_speed = sqrt(u.^2 + v.^2 + w.^2);
hsurfaces = slice(x,y,z,wind_speed,[xmin,100,xmax],ymax,zmin);
set(hsurfaces,'FaceColor','interp','EdgeColor','none')

hcont = ...
contourslice(x,y,z,wind_speed,[xmin,100,xmax],ymax,zmin);
set(hcont,'EdgeColor',[.7,.7,.7],'LineWidth',.5)

[sx,sy,sz] = meshgrid(80,20:10:50,0:5:15);
hlines = streamline(x,y,z,u,v,w,sx,sy,sz);
set(hlines,'LineWidth',2,'Color','r')

view(3)
daspect([2,2,1])
axis tight



% No.  5
function []  = ITTS_case_plots_func_plot_5()
load wind
lims = [100.64 116.67 17.25 28.75 -0.02 6.86];
[x,y,z,u,v,w] = subvolume(x,y,z,u,v,w,lims);

cav = curl(x,y,z,u,v,w);
wind_speed = sqrt(u.^2 + v.^2 + w.^2);

[sx sy sz] = meshgrid(110,20:5:30,1:5);
verts = stream3(x,y,z,u,v,w,sx,sy,sz,.5);
h = streamribbon(verts,x,y,z,cav,wind_speed,2);
set(h,'FaceColor','r',...
	'EdgeColor',[.7 .7 .7],...
	'AmbientStrength',.6)

axis(volumebounds(x,y,z,wind_speed))
grid on
view(3)
camlight right; 
set(gcf,'Renderer','zbuffer'); lighting phong



% No.  6
function []  = ITTS_case_plots_func_plot_6()
load wind
xmin = min(x(:));
xmax = max(x(:));
ymin = min(y(:));
alt = 7.356; % z-value for slice and streamtube plane
wind_speed = sqrt(u.^2 + v.^2 + w.^2);

hslice = slice(x,y,z,wind_speed,xmax,ymin,alt);
set(hslice,'FaceColor','interp','EdgeColor','none')
colormap hsv(16)

color_lim = caxis;
cont_intervals = linspace(color_lim(1),color_lim(2),17);
hcont = contourslice(x,y,z,wind_speed,xmax,ymin,...
	alt,cont_intervals,'linear');
set(hcont,'EdgeColor',[.4 .4 .4],'LineWidth',1)

[sx,sy,sz] = meshgrid(xmin,20:3:50,alt);
daspect([1,1,1]) % set DAR before calling streamtube
htubes = streamtube(x,y,z,u,v,w,sx,sy,sz,[1.25 30]);
set(htubes,'EdgeColor','none','FaceColor','r',...
	'AmbientStrength',.5)

view(-100,30)
axis(volumebounds(x,y,z,wind_speed))
set(gca,'Projection','perspective')
camlight left



% No.  7
function []  = ITTS_case_plots_func_plot_7()
load wind
[sx sy sz] = meshgrid(100,20:2:50,5);

verts = stream3(x,y,z,u,v,w,sx,sy,sz);
sl = streamline(verts);

view(-10.5,18)
daspect([2 2 0.125])
axis tight; box on

iverts = interpstreamspeed(x,y,z,u,v,w,verts,0.05);
set(gca,'drawmode','fast');
streamparticles(iverts,15,...
	'Animate',10,...
	'ParticleAlignment','on',...
	'MarkerEdgeColor','none',...
	'MarkerFaceColor','red',...
	'Marker','o');



% No.  8
function []  = ITTS_case_plots_func_plot_8()
load wind
wind_speed = sqrt(u.^2 + v.^2 + w.^2);
hiso = patch(isosurface(x,y,z,wind_speed,40));
isonormals(x,y,z,wind_speed,hiso)
set(hiso,'FaceColor','red','EdgeColor','none');

hcap = patch(isocaps(x,y,z,wind_speed,40),...
    'FaceColor','interp',...
    'EdgeColor','none');
colormap hsv

daspect([1,1,1]);
[f verts] = reducepatch(isosurface(x,y,z,wind_speed,30),0.07); 
h1 = coneplot(x,y,z,u,v,w,verts(:,1),verts(:,2),verts(:,3),3);
set(h1,'FaceColor','blue','EdgeColor','none');

xrange = linspace(min(x(:)),max(x(:)),10);
yrange = linspace(min(y(:)),max(y(:)),10);
zrange = 3:4:15;
[cx,cy,cz] = meshgrid(xrange,yrange,zrange);
h2 = coneplot(x,y,z,u,v,w,cx,cy,cz,2);
set(h2,'FaceColor','green','EdgeColor','none');

axis tight
box on
camproj perspective
camzoom(1.25)
view(65,45)

camlight(-45,45)
set(gcf,'Renderer','zbuffer'); 
lighting phong
set(hcap,'AmbientStrength',.6)

% No.  9
function []  = ITTS_case_plots_func_plot_9()
load mri
D = squeeze(D);

Ds = smooth3(D);
hiso = patch(isosurface(Ds,5),...
	'FaceColor',[1,.75,.65],...
	'EdgeColor','none');

hcap = patch(isocaps(D,5),...
	'FaceColor','interp',...
	'EdgeColor','none');
colormap(map)

view(45,30) 
axis tight 
daspect([1,1,.4])

lightangle(45,30); 
set(gcf,'Renderer','zbuffer'); lighting phong
isonormals(Ds,hiso)
set(hcap,'AmbientStrength',.6)
set(hiso,'SpecularColorReflectance',0,'SpecularExponent',50)