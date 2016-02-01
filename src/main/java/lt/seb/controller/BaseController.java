package lt.seb.controller;

import lt.seb.validator.DateValidator;
import lt.seb.validator.RateComparator;
import lt.seb.ws.*;
import lt.seb.xml.ExchangeRates.ExchangeRates;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.w3c.dom.Node;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;
import java.util.Collections;
import java.util.List;

/**
 * Created by arvydasm.
 */

@Controller
public class BaseController {

    private static final String VIEW_INDEX = "index";
    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(BaseController.class);

    private ExchangeRatesSoap soapClient;

    @Autowired
    public void setClient(ExchangeRatesSoap soapClient) {
        this.soapClient = soapClient;
    }

    /**
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(@ModelAttribute("model") ModelMap model) {

        model.addAttribute("itemsList", model.get("itemsList"));

        return VIEW_INDEX;
    }

    /**
     * Gets currencies rates by date
     * @param date - paramater for requested date rates
     * @return
     */
    @RequestMapping(value = "/getRatesByDate", method = RequestMethod.POST)
    public String getRatesByDate(@RequestParam("date") String date, @ModelAttribute("model") ModelMap model) {

        try {

            // validating date
            DateValidator dateValidator = new DateValidator();
            String error = dateValidator.validate(date);

            if (error != null){
                model.addAttribute("dateError", error);
                return VIEW_INDEX;
            }

            model.addAttribute("dateVal", date);

            //getting results from WS
            GetExchangeRatesByDateResponse.GetExchangeRatesByDateResult list = soapClient.getExchangeRatesByDate(date);

            //checking has server returned data
            if (list == null || list.getContent() == null || list.getContent().isEmpty()) {
                model.addAttribute("emptyList", "No data for date - " + date);
                return VIEW_INDEX;
            }

            //as WS result is xml we need to parse it to Items object
            Node node = (Node) list.getContent().get(0);
            JAXBContext jaxbContext = JAXBContext.newInstance(ExchangeRates.class);
            Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
            ExchangeRates exchangeRates = (ExchangeRates) unmarshaller.unmarshal(node);

            //checking data
            if (exchangeRates == null || exchangeRates.getItem() == null || exchangeRates.getItem().isEmpty()) {
                model.addAttribute("emptyList", "No data for date - " + date);
                return VIEW_INDEX;
            }

            //sorting list by rates value
            List<ExchangeRates.Item> items = exchangeRates.getItem();
            Collections.sort(items, new RateComparator());
            Collections.reverse(items);

            model.addAttribute("itemsList", items);

        } catch (Exception e) {
            logger.error("getRatesByDate error", e);
            model.addAttribute("getRatesByDateError", e.getLocalizedMessage());
        }

        return VIEW_INDEX;
    }



}
