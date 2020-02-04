# Cria grupo de recursos
# Ivo Dias

# Conecta no Azure
Connect-AzAccount

# Recebe as informacoes para criar o RG
$nomeRG = Read-Host "Informe um nome para o grupo de recursos"
$localizacaoRG = Read-Host "Informe a localizacao"

# Cria um RG
try {
    New-AzResourceGroup -Name $nomeRG -Location $localizacaoRG
}
catch {
    $ErrorMessage = $_.Exception.Message
    Write-Host "Erro ao criar o RG:"
    Write-Host $ErrorMessage
}