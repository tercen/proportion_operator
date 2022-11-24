# Proportion operator

##### Description

The `proportion operator` computes counts and relative proportions per row, per column and overall.

##### Usage

Input projection|.
---|---
`y-axis`        | numeric, input values 
`row`        | (optional) factor, variable (channel / marker)
`column`        | (optional) factor, variable (cluster)

Output relations|.
---|---
`n`        | count, per cell
`prop_per_row`        | proportion relative to total counts per row
`prop_per_col`        | proportion relative to total counts per column
`prop_overall`        | proportion relative to total counts overall

##### Details

The operator computes the number of values per cell, and their proportion relative to row sums, column sums or the global sum.

##### See Also

[count_operator](https://github.com/tercen/count_operator)

