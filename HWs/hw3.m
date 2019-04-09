clc, clear all;

%% Basic
% rbt_conf(10, 7, 60, 135)
% for i = 0:10:360
%     for j = 0:10:360
%         rbt_conf(1, 1, i, j)
%         pause(0.0001);
% %         delete( findobj(gca, 'type', 'line'));
%     end
% end

%% Sliding into dem DMs
S.fh = figure;     
S.m   = 1;
S.l1   = 1;
S.l2   = 1;
S.b   = 0;
update(S);
% Slider for slope parameter:
S.mSlider = uicontrol('style','slider',...
                 'unit','pixels',...  % "pix" is not smart, we are not in a hurry
                 'position',[0 0 200 20],...
                 'min',0,'max',360,'value', S.m,...
                 'callback', {@SliderCB, 'm'}); 
% 2nd Slider:
S.bSlider = uicontrol('style','slide',...
                 'unit','pixels', 'position',[250 0 200 20],...
                 'min',0,'max',360,'value', S.b,...
                 'callback', {@SliderCB, 'b'}); 
             
S.l1Slider = uicontrol('style','slide',...
                 'unit','pixels', 'position',[500 0 200 20],...
                 'min',0,'max',10,'value', S.l1,...
                 'callback', {@SliderCB, 'l1'});

S.l2Slider = uicontrol('style','slide',...
                'unit','pixels', 'position',[750 0 200 20],...
                'min',0,'max',10,'value', S.l2,...
                'callback', {@SliderCB, 'l2'}); 
guidata(S.fh, S);  % Store S struct in the figure
function SliderCB(mSlider, EventData, Param)
% Callback for both sliders
S = guidata(mSlider);  % Get S struct from the figure
S.(Param) = get(mSlider, 'Value');  % Either 'm' or 'b'
update(S);
guidata(mSlider, S);  % Store modified S in figure
end
function update(S)
delete( findobj(gca, 'type', 'line'));
rbt_conf(S.l1, S.l2, S.m, S.b)
end