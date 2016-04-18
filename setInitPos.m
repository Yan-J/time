%---
%---get initial positions and write into init.txt
%---

function setInitPos(n)%get n rectangles' positions from the img

oriFrame = imread('./input_img/img-000.png');%Load Initial Frame
imshow(oriFrame);

fid = fopen('./src/init.txt','wt');% Open the file to write into

    for i=1:1:n %get n positions
        h = imrect; %Draw an interactive rectangle
        pos = getPosition(h);%get四个值，分别是矩形框的左下角点的坐标 x y 和 框的 宽度和高度
    
        fprintf(fid,'%g\t',pos);%write into file
        fprintf(fid,'\n');%new line
        %disp(pos); 
    end

fclose(fid);
end



