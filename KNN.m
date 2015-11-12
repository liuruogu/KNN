

function accuracy = leave_one_cross_validation(data, current_set, feature_to_add)
    accuracy = rand; %return some testing stub
end

function feature_search_demo(data)
    for i = 1:size(data,2)-1
        disp(['On the',num2str(i),'the level of the search tree'])
    end
end



