# Define the API endpoint
$apiUrl = 'https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd'

# Make the API request and retrieve the response
$response = Invoke-RestMethod -Uri $apiUrl

# Extract the Bitcoin price from the response
$bitcoinPrice = $response.bitcoin.usd

# Output the Bitcoin price
Write-Host "Current Bitcoin price in USD: $bitcoinPrice"