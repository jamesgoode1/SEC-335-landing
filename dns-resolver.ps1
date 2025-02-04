param($network, $server)

1..254 | ForEach-Object {
    $ip = "$network.$_"
    $result = Resolve-DnsName -Server $server -Name $ip -ErrorAction SilentlyContinue | Select-Object -ExpandProperty NameHost -ErrorAction SilentlyContinue
    if ($result) { Write-Output "$ip $result" }
}
