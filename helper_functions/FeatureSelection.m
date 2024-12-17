function mask = FeatureSelection(measurement,kinematics,min_R,min_mod)

mask = ones(1,size(measurement,2));

%remove empty features:
mask(all(measurement==0,1)) = 0;
mask(any(isnan(measurement),1))=0;

%if min_R and min_mod are not specified, determine based on "Null
%distribution"
if ~exist('min_R','var') || isempty(min_R) || ~exist('min_mod','var') || isempty(min_mod)
    dist_R = [];
    dist_w = [];
    %generate X signals composed of time-randomized samples
    for i = 1:1000
        ind = randperm(size(kinematics,1));
        r_kin = kinematics(ind,:);
        
        for a = 1:size(measurement,2)
            %calculate the modulation and correlations now
            w(a,:) = measurement(:,a)\r_kin;
            for b = 1:size(r_kin,2)
                r(b) = corr(measurement(:,a)*w(a,b),r_kin(:,b));
            end
            r(isnan(r))=[];
            if isempty(r)
                r_out(a) = nan;
            else
                r_out(a) = max(r);
            end
        end
        w = max(abs(w),[],2);
        r_out = abs(r_out);
        dist_w((end+1):(end+length(w))) = w;
        dist_R((end+1):(end+length(r_out))) = r_out;
    end
end

%determine modulation and correlation:
w = zeros(size(measurement,2),size(kinematics,2)+1);
r_out = zeros(size(measurement,2),1);
s = warning('off');
for a = 1:size(measurement,2)
%     w(a,:) = measurement(:,a)\kinematics;
%     for b = 1:size(kinematics,2)
%         r(b) = corr(measurement(:,a)*w(a,b),kinematics(:,b));
%     end
%     r(isnan(r))=[];
%     if isempty(r)
%         r_out(a) = nan;
%     else
%         r_out(a) = max(r);
%     end
    if all(isnan(measurement(:,a)))
        continue;
    end
    [w(a,:), ~, ~, ~, stats] = regress(single(measurement(:,a)), [ones(size(kinematics,1), 1) kinematics]);
    r_out(a) = stats(1);
end
warning(s);

mask(max(abs(w),[],2)<=min_mod) = 0;
mask(abs(r_out)<=min_R | ~isfinite(r_out)) = 0;
    
figure;
subplot(3,1,1)
bar(sum(abs(w),1));
title('Magnitude of Tuning to Dimension')
subplot(3,1,2)
bar(abs(sum(w,1))./sum(abs(w),1))
title('Imbalance in Dimension')
subplot(3,1,3)
spec = [];
for a = 1:size(w,2)
    spec(:,a) = abs(w(:,a)) ./ sqrt(sum(w.^2,2));
end
bar(max(spec,[],1))
title('Max Specificity to Dimension')
xlabel('Dimension')

figure;
subplot(2,1,1)
plot(sort(abs(w)));
title('Abs Modulation Depth')
if size(w,2) >=7 %we know what the first 7 are...
    legend({'X' 'Y' 'Z' 'Roll' 'Pitch' 'Yaw' 'Grasp1' 'Grasp2'},'Location','NorthWest');
end

subplot(2,1,2)
plot(sort(r_out));
title('R^2')
