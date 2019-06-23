module ExchangesHelper
 
    def currency_list
      [
        'AUD', 'BGN', 'BRL', 'CAD', 'CHF', 'CNY', 'CZK', 'DKK', 'EUR', 'GBP',
        'HKD', 'HRK', 'HUF', 'IDR', 'ILS', 'INR', 'JPY', 'KRW', 'MXN',
        'MYR', 'NOK', 'NZD', 'PLN', 'RON', 'SEK', 'SGD',
        'THB', 'TRY', 'USD', 'ZAR'
      ]
    end

    def currency_list_bitcoin
      [
       'BTC - Bitcoin', 'LTC - Litecoin', 'ETH - Ethereum', 'XRP - Ripple'
      ]
    end
  end