# Import du module Active Directory
Import-Module ActiveDirectory

# Variables
$ouName = "TestOU"
$ouPath = "DC=cesi87,DC=local"          # Remplacez par votre domaine
$ouFullPath = "OU=$ouName,$ouPath"

$groupName = "GRP_4"
$userName = "User4"
$userPassword = "1234Abcd!$"            # Mot de passe temporaire, respectez les règles de sécurité

# 1. Créer l'OU
New-ADOrganizationalUnit -Name $ouName

# 2. Créer un groupe dans l'OU
New-ADGroup -Name $groupName -Path $ouFullPath -GroupScope Global -GroupCategory Security

# 3. Créer un utilisateur dans l'OU
New-ADUser -Name $userName `
           -GivenName "User" `
           -Surname "4" `
           -SamAccountName $userName `
           -UserPrincipalName "$userName@cesi87.local" `
           -AccountPassword (ConvertTo-SecureString $userPassword -AsPlainText -Force) `
           -Enabled $true `
           -Path $ouFullPath

# 4. Ajouter l'utilisateur au groupe
Add-ADGroupMember -Identity $groupName -Members $userName

Write-Output "OU, groupe, utilisateur créés et utilisateur ajouté au groupe avec succès."
