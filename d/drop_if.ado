*! v0.1
*! like -drop if- but appends the if condition to the # dropped msg
program drop_if
	syntax anything(equalok everything)
	qui count if `anything'
	local num=`r(N)'
	qui drop if `anything'
	di `"(`num' observations deleted: `anything')"'
end
