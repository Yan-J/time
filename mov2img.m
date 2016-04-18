%
%----mov video>>>image sequences (avi2img doesn't work on Mac)
%

function tmp=mov2img(srcVideo)
%load video, 此TestVideo共1126帧
videoFReader = vision.VideoFileReader(srcVideo);
%Every call to the step method reads another frame.
frameNumber = 0;

while (~isDone(videoFReader))&& frameNumber<=100 %先处理前100帧用作test
   frame = step(videoFReader);
   disp(frameNumber);
   img_name=sprintf('./input_img/img-%03d.png',frameNumber);
   imwrite(frame,img_name,'png');
   frameNumber=frameNumber+1;
   
end

release(videoFReader);
