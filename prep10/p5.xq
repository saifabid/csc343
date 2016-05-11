for $r in doc("property.xml")/PROPERTIES/PROPERTY/RESIDENTIAL
let $si := $r/SINGLE_UNIT/INFO[RENT_AMOUNT<800]
let $mi := $r/MULTI_UNIT/UNIT/INFO[RENT_AMOUNT<800]
return ($si/RENT_AMOUNT, $mi/RENT_AMOUNT)
