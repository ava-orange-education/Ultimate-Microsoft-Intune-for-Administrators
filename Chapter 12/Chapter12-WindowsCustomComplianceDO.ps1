# Detection Script: Check if the Delivery Optimization service is running and output JSON
$deliveryOptimizationActive = $false
$serviceName = "DoSvc"
try {
    $service = Get-Service -Name $serviceName -ErrorAction Stop
    if ($service.Status -eq "Running") {
        $deliveryOptimizationActive = $true
    }
} catch {
    # Service not found or an error occurred
    $deliveryOptimizationActive = $false
}
$output = @{ DeliveryOptimizationActive = $deliveryOptimizationActive }
return $output | ConvertTo-Json -Compress
