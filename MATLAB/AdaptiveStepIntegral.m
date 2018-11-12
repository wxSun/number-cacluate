function [result] = AdaptiveStepIntegral(x_LowBound,x_UpBound,accuracyValue)
f_0 = CalcuFunctionValue(x_LowBound);
f_1 = CalcuFunctionValue(x_UpBound);
step_length = x_UpBound - x_LowBound;
T_result(1) = step_length*(f_0 + f_1)/2;
count = 1;
while 1
    step_length = step_length/2;
    sum_new_value = 0;
    TwoPowerCount = 2.^count;
    up_Bound = TwoPowerCount-1;
    for j = 1:2:up_Bound
        sum_new_value = sum_new_value + CalcuFunctionValue(x_LowBound + step_length*j);
    end
    T_result(count+1) = T_result(count)/2 + step_length*sum_new_value;
    if abs(T_result(count+1)-T_result(count)) < accuracyValue
        break;
    else
        count = count + 1;
    end  
end
result = T_result;
end

function [y_x] = CalcuFunctionValue(x)
    if x == 0
        y_x = 1;
    else
        y_x = sin(x)/x;
    end
end
