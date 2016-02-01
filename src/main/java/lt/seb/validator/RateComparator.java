package lt.seb.validator;

import lt.seb.xml.ExchangeRates.ExchangeRates;

import java.util.Comparator;

/**
 * custom comparator as we need to compare object by property
 * Created by arvydasm.
 */
public class RateComparator implements Comparator<ExchangeRates.Item> {

    @Override
    public int compare(ExchangeRates.Item o1, ExchangeRates.Item o2) {
        return o1.getRate().compareTo(o2.getRate());
    }
}
