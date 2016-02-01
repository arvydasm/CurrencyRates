package lt.seb.tests;

import lt.seb.validator.DateValidator;
import org.junit.*;
/**
 * Created by arvydasm.
 */
public class DateValidatorTest {

    private DateValidator dateValidator;

    @Before
    public void init() {
        dateValidator = new DateValidator();
    }

    @Test
    public void testDateIsNull() {
        Assert.assertEquals(dateValidator.validate(null), "Date is not selected!");
    }

    @Test
    public void testDateIsInvalid() {
        Assert.assertEquals(dateValidator.validate("28/02/2012"), "Date format not supported");
    }

    @Test
    public void testDateIsGreaterThan() {
        Assert.assertEquals(dateValidator.validate("2015-01-01"), "Currencies rates are only available till - " + DateValidator.maxDateString);
    }

    @Test
    public void testCorrectDate() {
        Assert.assertEquals(dateValidator.validate("2014-01-01"), null);
    }

}
