var setSelectOption = function(selectId, selectoption)
{
    $("#"+selectId).val(selectoption);
};

var setRadiobuttonChecked = function (radioId, radioValue)
{
    $("input[name="+radioId+"][value=" + radioValue + "]").prop('checked', true);
};
