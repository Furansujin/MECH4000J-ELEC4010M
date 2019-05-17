function tf = transform(transform_arr, joint_ind, pos_1, rotation_matrix)
t = rotm2tform(rotation_matrix);
transform_arr(:,:,joint_ind) = t*transform_arr(:,:,joint_ind);
tf = transform_arr(:,:,1);

for i = 2 : length(transform_arr)
    tf(:,:,i) = tf(:,:,i-1)*transform_arr(:,:,i);
end
end

% z = 1;
% tic;
% for a = -141:(141+51)/z:51
%     t_0 = transform(T, 1, v0, rotz(a));
%     for b = -123:(123+60)/z:60
%         t_1 = transform(T, 3, v0, roty(b));
%         for c = -173:(173+173)/z:173
%             t_2 = transform(T, 4, v0, rotx(c));
%             for d = -3:(3+150)/z:150
%                 t_3 = transform(T, 5, v0, roty(d));
%                 for e = -175:(175+175)/z:175
%                     t_4 = transform(T, 6, v0, rotx(e));
%                     for f = -90:(90+120)/z:120
%                         t_5 = transform(T, 7, v0, roty(f));
%                         for g = -175:(175+175)/z:175
%                             t_6 = transform(T, 7, v0, rotx(g));
%                             
%                             for k = 1:length(t_0)
%                                 tf(:,:,k) = t_0(:,:,k)*t_1(:,:,k)*t_2(:,:,k)*t_3(:,:,k)*t_4(:,:,k)*t_5(:,:,k)*t_6(:,:,k);
%                             end
%                             p = zeros(4,8);
%                             p(:,length(tf)+1) = v0;
%                             for l = 1:length(tf)
%                                 p(:,(length(tf)+1) - l) = (tf(:,:,l)*v0)/7;
%                             end
%                             p = p';
% %                             plot3(p(:,1),p(:,2),p(:,3),'y');
%                             plot3(p(1,1),p(1,2),p(1,3),'b.')
% %                             pause(0.01)                            
%                         end
%                     end
%                 end
%             end
%         end
%     end
% end
% toc;
% plot3(p(:,1),p(:,2),p(:,3),'y');
% plot3(v(:,1),v(:,2),v(:,3),'y')
% plot3(v(1,1),v(1,2),v(1,3),'*')