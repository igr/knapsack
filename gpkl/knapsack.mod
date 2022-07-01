set Items;

param weight {t in Items};
param value {t in Items};
param quantity {t in Items};

var take {t in Items}, integer, >=0, <=quantity[t];

maximize knap_value: sum{t in Items} take[t] * value[t];

s.t. knap_weight : sum{t in Items} take[t] * weight[t] <= 400;

