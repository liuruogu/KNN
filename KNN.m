function accuracy = leave_one_out_cross_validation(data, current_set, feature_to_add)
    accuracy = rand; %return some testing stub
end

function feature_search_demo(data)
current_set_of_features = []; %initial the empty set

    for i = 1:size(data,2)-1
        disp(['On the',num2str(i),'the level of the search tree'])
        feature_to_add_at_this_leaver = [];
        best_so_far_accuracy = 0;
        
        for k = 1 : size(data,2)-1
            if isempty(intersect(current_set_of_features,k)) %only consider adding, if not already added.
            disp(['Considering adding the ', num2str(k),]' feature')
            accuracy = leave_one_out_cross_validation(data, current_set,k+1);
            
            if accuracy > best_so_far_accuracy;
                feature_to_add_this_level = k;
            end
            end
        end
        
        disp(['On level', num2str(i),'i added feature', num2str(feature_to_add_at_this_level), 'to current set'])
    end
end



