package lt.seb.sys;

import lt.seb.ws.*;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


/**
 * Created by arvydasm.
 */
@Configuration
public class AppConfiguration {

    @Bean
    public ExchangeRatesSoap currencyRatesClient() {
        ExchangeRatesService exchangeRatesService = new ExchangeRatesService();
        ExchangeRatesSoap client = exchangeRatesService.getExchangeRatesSoap();
        return client;
    }
}
