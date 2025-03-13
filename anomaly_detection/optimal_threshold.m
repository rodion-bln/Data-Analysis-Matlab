function [best_epsilon, best_F1, associated_precision, associated_recall] = optimal_threshold(truths, probabilities)
    best_epsilon = 0;
    best_F1 = 0;
    associated_precision = 0;
    associated_recall = 0;

    step_size = (max(probabilities) - min(probabilities)) / 1000;
    epsilons = min(probabilities):step_size:max(probabilities);

    for epsilon = epsilons
        predictions = probabilities < epsilon;

        TP = sum(predictions == 1 & truths == 1);
        FP = sum(predictions == 1 & truths == 0);
        FN = sum(predictions == 0 & truths == 1);

        precision = TP / (TP + FP);
        recall = TP / (TP + FN);
        F1 = 2 * (precision * recall) / (precision + recall);

        if F1 > best_F1
            best_F1 = F1;
            best_epsilon = epsilon;
            associated_precision = precision;
            associated_recall = recall;
        end
    end
end

