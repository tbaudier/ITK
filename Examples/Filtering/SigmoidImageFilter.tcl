#
#  Example on the use of the SigmoidImageFilter
#
package require InsightToolkit

set reader [ itkImageFileReaderUC2_New ]
set writer [ itkImageFileWriterUC2_New ]

set filter [ itkSigmoidImageFilterUC2UC2_New ]

$filter     SetInput [ $reader  GetOutput ]
$writer     SetInput [ $filter  GetOutput ]

$reader SetFileName [lindex $argv 0]
$writer SetFileName [lindex $argv 1]

$filter SetOutputMinimum [expr [lindex $argv 2]]
$filter SetOutputMaximum [expr [lindex $argv 3]]

$filter SetAlpha  [expr [lindex $argv 4]]
$filter SetBeta   [expr [lindex $argv 5]]

$writer Update


exit

