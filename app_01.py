import requests

def fetch_page():
    url = "https://www.mercadolivre.com.br/apple-iphone-16-pro-1-tb-titnio-preto-distribuidor-autorizado/p/MLB1040287851#polycard_client=search-nordic&wid=MLB5054621110&sid=search&searchVariation=MLB1040287851&position=2&search_layout=stack&type=product&tracking_id=a2201312-8133-4041-83eb-9ef4bec42f10"
    response = requests.get(url)
    return response.text

if __name__ == "__main__":
    page_content = fetch_page()
    print(page_content)