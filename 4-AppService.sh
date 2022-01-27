az group create -n webapp-dev-rg -l westus2

az appservice plan create --name webapps-dev-plan \
    --resource-group webapp-dev-rg \
    --sku s1 \
    --is-linux

az webapp create -g webapps-dev-rg \
    -p webapps-dev-plan \
    -n mp103333 \
    --runtime "node|10.14"