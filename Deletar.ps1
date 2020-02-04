# Remove grupo de recursos
# Ivo Dias

# Conecta no Azure
Connect-AzAccount

# Exibe os RGs existentes
Clear-Host
Write-Host "Lista de RGs atuais:"
(get-AzResourceGroup).ResourceGroupName

# Recebe o nome do RG
$nomeRG = Read-Host "Informe o nome do RG escolhido"

# Deleta o RG
try {
    Remove-AzResourceGroup -Name $nomeRG -Force
    Clear-Host
    Write-Host "O RG $nomeRG foi deletado"
}
catch {
    $ErrorMessage = $_.Exception.Message
    Write-Host "Erro ao deletar o RG:"
    Write-Host $ErrorMessage
}