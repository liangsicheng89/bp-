clear all
YEARS = 7;
ENTRYS = 47;
ATTRS = 19;

data = zeros([YEARS, ENTRYS, ATTRS]);
for i = YEARS:-1:1
    data(YEARS - i + 1, :, :) = xlsread("data.xlsx", i);
end

data_filled = fillmissing(data, 'linear', 1, 'EndValues', 'nearest');
