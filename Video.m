
for K = 10 : 12
workingDir = 'D:\Users\Matthew\Desktop\UCSD_Anomaly_Dataset\UCSD_Anomaly_Dataset.v1p2\UCSDped2\Test';
saveWorkingDir = 'D:\Users\Matthew\Desktop\Ped2Test';
filename = strcat('Test0',int2str(K));
disp(filename);
subDirName = strcat('Test0',int2str(K));
outputVideo = VideoWriter(fullfile(saveWorkingDir,filename),'MPEG-4');
outputVideo.FrameRate = 20;
imageNames = dir(fullfile(workingDir,subDirName,'*.tif'));
imageNames = {imageNames.name};
open(outputVideo);
    for ii = 1:length(imageNames)
       img = imread(fullfile(workingDir,subDirName,imageNames{ii}));
       writeVideo(outputVideo,img)
    end
close(outputVideo)
end