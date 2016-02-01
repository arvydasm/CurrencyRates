package lt.seb.tests;

import lt.seb.validator.RateComparator;
import lt.seb.ws.ExchangeRatesService;
import lt.seb.ws.ExchangeRatesSoap;
import lt.seb.ws.GetExchangeRatesByDateResponse;
import lt.seb.xml.ExchangeRates.ExchangeRates;
import org.junit.Before;
import org.junit.Test;
import org.w3c.dom.Node;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;
import java.util.Collections;
import java.util.List;

/**
 * Created by arvydasm.
 */
public class WebServiceTest {

    private ExchangeRatesSoap soapClient;

    @Before
    public void init() {
        ExchangeRatesService exchangeRatesService = new ExchangeRatesService();
        soapClient = exchangeRatesService.getExchangeRatesSoap();
    }

    @Test
    public void testWS() {
        try {
            GetExchangeRatesByDateResponse.GetExchangeRatesByDateResult list = soapClient.getExchangeRatesByDate("2014-05-05");

            Node node = (Node) list.getContent().get(0);
            JAXBContext jaxbContext = JAXBContext.newInstance(ExchangeRates.class);
            Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
            ExchangeRates exchangeRates = (ExchangeRates) unmarshaller.unmarshal(node);

            List<ExchangeRates.Item> items = exchangeRates.getItem();
            Collections.sort(items, new RateComparator());
            Collections.reverse(items);

            for (ExchangeRates.Item item: items) {
                System.out.println( item.getDate() + "\t\t" + item.getCurrency() + "\t\t" + item.getRate() + "\t\t" + item.getQuantity() + "\t\t" + item.getUnit() );
            }

        }
        catch (JAXBException e) {
            e.printStackTrace();
        }
    }

}
