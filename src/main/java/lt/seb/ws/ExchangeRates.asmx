<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://webservices.lb.lt/ExchangeRates" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" targetNamespace="http://webservices.lb.lt/ExchangeRates" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">WebService provides official (established by Bank of Lithuania) exchange rates of the Litas against Foreign Currencies.</wsdl:documentation>
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://webservices.lb.lt/ExchangeRates">
      <s:element name="getListOfCurrencies">
        <s:complexType />
      </s:element>
      <s:element name="getListOfCurrenciesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getListOfCurrenciesResult">
              <s:complexType mixed="true">
                <s:sequence>
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getCurrentExchangeRate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Currency" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getCurrentExchangeRateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="getCurrentExchangeRateResult" type="s:decimal" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeRate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Currency" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Date" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeRateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="getExchangeRateResult" type="s:decimal" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeRatesByDate_XmlString">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Date" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeRatesByDate_XmlStringResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getExchangeRatesByDate_XmlStringResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeRatesByCurrency_XmlString">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Currency" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="DateLow" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="DateHigh" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeRatesByCurrency_XmlStringResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getExchangeRatesByCurrency_XmlStringResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeRatesByDate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Date" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeRatesByDateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getExchangeRatesByDateResult">
              <s:complexType mixed="true">
                <s:sequence>
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeRatesXmlSchema">
        <s:complexType />
      </s:element>
      <s:element name="getExchangeRatesXmlSchemaResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getExchangeRatesXmlSchemaResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeRatesByCurrency">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Currency" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="DateLow" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="DateHigh" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeRatesByCurrencyResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getExchangeRatesByCurrencyResult">
              <s:complexType mixed="true">
                <s:sequence>
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeAvgRate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Currency" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="DateLow" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="DateHigh" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getExchangeAvgRateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getExchangeAvgRateResult">
              <s:complexType mixed="true">
                <s:sequence>
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="decimal" type="s:decimal" />
      <s:element name="string" nillable="true" type="s:string" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="getListOfCurrenciesSoapIn">
    <wsdl:part name="parameters" element="tns:getListOfCurrencies" />
  </wsdl:message>
  <wsdl:message name="getListOfCurrenciesSoapOut">
    <wsdl:part name="parameters" element="tns:getListOfCurrenciesResponse" />
  </wsdl:message>
  <wsdl:message name="getCurrentExchangeRateSoapIn">
    <wsdl:part name="parameters" element="tns:getCurrentExchangeRate" />
  </wsdl:message>
  <wsdl:message name="getCurrentExchangeRateSoapOut">
    <wsdl:part name="parameters" element="tns:getCurrentExchangeRateResponse" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateSoapIn">
    <wsdl:part name="parameters" element="tns:getExchangeRate" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateSoapOut">
    <wsdl:part name="parameters" element="tns:getExchangeRateResponse" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByDate_XmlStringSoapIn">
    <wsdl:part name="parameters" element="tns:getExchangeRatesByDate_XmlString" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByDate_XmlStringSoapOut">
    <wsdl:part name="parameters" element="tns:getExchangeRatesByDate_XmlStringResponse" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByCurrency_XmlStringSoapIn">
    <wsdl:part name="parameters" element="tns:getExchangeRatesByCurrency_XmlString" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByCurrency_XmlStringSoapOut">
    <wsdl:part name="parameters" element="tns:getExchangeRatesByCurrency_XmlStringResponse" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByDateSoapIn">
    <wsdl:part name="parameters" element="tns:getExchangeRatesByDate" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByDateSoapOut">
    <wsdl:part name="parameters" element="tns:getExchangeRatesByDateResponse" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesXmlSchemaSoapIn">
    <wsdl:part name="parameters" element="tns:getExchangeRatesXmlSchema" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesXmlSchemaSoapOut">
    <wsdl:part name="parameters" element="tns:getExchangeRatesXmlSchemaResponse" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByCurrencySoapIn">
    <wsdl:part name="parameters" element="tns:getExchangeRatesByCurrency" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByCurrencySoapOut">
    <wsdl:part name="parameters" element="tns:getExchangeRatesByCurrencyResponse" />
  </wsdl:message>
  <wsdl:message name="getExchangeAvgRateSoapIn">
    <wsdl:part name="parameters" element="tns:getExchangeAvgRate" />
  </wsdl:message>
  <wsdl:message name="getExchangeAvgRateSoapOut">
    <wsdl:part name="parameters" element="tns:getExchangeAvgRateResponse" />
  </wsdl:message>
  <wsdl:message name="getListOfCurrenciesHttpGetIn" />
  <wsdl:message name="getListOfCurrenciesHttpGetOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="getCurrentExchangeRateHttpGetIn">
    <wsdl:part name="Currency" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getCurrentExchangeRateHttpGetOut">
    <wsdl:part name="Body" element="tns:decimal" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateHttpGetIn">
    <wsdl:part name="Currency" type="s:string" />
    <wsdl:part name="Date" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateHttpGetOut">
    <wsdl:part name="Body" element="tns:decimal" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByDate_XmlStringHttpGetIn">
    <wsdl:part name="Date" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByDate_XmlStringHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByCurrency_XmlStringHttpGetIn">
    <wsdl:part name="Currency" type="s:string" />
    <wsdl:part name="DateLow" type="s:string" />
    <wsdl:part name="DateHigh" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByCurrency_XmlStringHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByDateHttpGetIn">
    <wsdl:part name="Date" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByDateHttpGetOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesXmlSchemaHttpGetIn" />
  <wsdl:message name="getExchangeRatesXmlSchemaHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByCurrencyHttpGetIn">
    <wsdl:part name="Currency" type="s:string" />
    <wsdl:part name="DateLow" type="s:string" />
    <wsdl:part name="DateHigh" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByCurrencyHttpGetOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="getExchangeAvgRateHttpGetIn">
    <wsdl:part name="Currency" type="s:string" />
    <wsdl:part name="DateLow" type="s:string" />
    <wsdl:part name="DateHigh" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeAvgRateHttpGetOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="getListOfCurrenciesHttpPostIn" />
  <wsdl:message name="getListOfCurrenciesHttpPostOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="getCurrentExchangeRateHttpPostIn">
    <wsdl:part name="Currency" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getCurrentExchangeRateHttpPostOut">
    <wsdl:part name="Body" element="tns:decimal" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateHttpPostIn">
    <wsdl:part name="Currency" type="s:string" />
    <wsdl:part name="Date" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRateHttpPostOut">
    <wsdl:part name="Body" element="tns:decimal" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByDate_XmlStringHttpPostIn">
    <wsdl:part name="Date" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByDate_XmlStringHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByCurrency_XmlStringHttpPostIn">
    <wsdl:part name="Currency" type="s:string" />
    <wsdl:part name="DateLow" type="s:string" />
    <wsdl:part name="DateHigh" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByCurrency_XmlStringHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByDateHttpPostIn">
    <wsdl:part name="Date" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByDateHttpPostOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesXmlSchemaHttpPostIn" />
  <wsdl:message name="getExchangeRatesXmlSchemaHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByCurrencyHttpPostIn">
    <wsdl:part name="Currency" type="s:string" />
    <wsdl:part name="DateLow" type="s:string" />
    <wsdl:part name="DateHigh" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeRatesByCurrencyHttpPostOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="getExchangeAvgRateHttpPostIn">
    <wsdl:part name="Currency" type="s:string" />
    <wsdl:part name="DateLow" type="s:string" />
    <wsdl:part name="DateHigh" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getExchangeAvgRateHttpPostOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:portType name="ExchangeRatesSoap">
    <wsdl:operation name="getListOfCurrencies">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of currencies.</wsdl:documentation>
      <wsdl:input message="tns:getListOfCurrenciesSoapIn" />
      <wsdl:output message="tns:getListOfCurrenciesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getCurrentExchangeRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the current exchange rate (expressed in Litas per 1 currency unit) for the specified currency.</wsdl:documentation>
      <wsdl:input message="tns:getCurrentExchangeRateSoapIn" />
      <wsdl:output message="tns:getCurrentExchangeRateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an exchange rate (expressed in Litas per 1 currency unit) for the specified currency and date.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRateSoapIn" />
      <wsdl:output message="tns:getExchangeRateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByDate_XmlString">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a XML formatted string containing exchange rates for the specified date.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRatesByDate_XmlStringSoapIn" />
      <wsdl:output message="tns:getExchangeRatesByDate_XmlStringSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByCurrency_XmlString">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a XML formatted string containing exchange rates for the specified currency that are between specified dates.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRatesByCurrency_XmlStringSoapIn" />
      <wsdl:output message="tns:getExchangeRatesByCurrency_XmlStringSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByDate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list containing exchange rates for the specified date.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRatesByDateSoapIn" />
      <wsdl:output message="tns:getExchangeRatesByDateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesXmlSchema">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a Xml Schema of provided Exchange Rates.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRatesXmlSchemaSoapIn" />
      <wsdl:output message="tns:getExchangeRatesXmlSchemaSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByCurrency">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list containing exchange rates for the specified currency that are between specified dates.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRatesByCurrencySoapIn" />
      <wsdl:output message="tns:getExchangeRatesByCurrencySoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeAvgRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a average exchange rate for the specified currency, between specified dates.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeAvgRateSoapIn" />
      <wsdl:output message="tns:getExchangeAvgRateSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="ExchangeRatesHttpGet">
    <wsdl:operation name="getListOfCurrencies">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of currencies.</wsdl:documentation>
      <wsdl:input message="tns:getListOfCurrenciesHttpGetIn" />
      <wsdl:output message="tns:getListOfCurrenciesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getCurrentExchangeRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the current exchange rate (expressed in Litas per 1 currency unit) for the specified currency.</wsdl:documentation>
      <wsdl:input message="tns:getCurrentExchangeRateHttpGetIn" />
      <wsdl:output message="tns:getCurrentExchangeRateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an exchange rate (expressed in Litas per 1 currency unit) for the specified currency and date.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRateHttpGetIn" />
      <wsdl:output message="tns:getExchangeRateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByDate_XmlString">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a XML formatted string containing exchange rates for the specified date.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRatesByDate_XmlStringHttpGetIn" />
      <wsdl:output message="tns:getExchangeRatesByDate_XmlStringHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByCurrency_XmlString">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a XML formatted string containing exchange rates for the specified currency that are between specified dates.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRatesByCurrency_XmlStringHttpGetIn" />
      <wsdl:output message="tns:getExchangeRatesByCurrency_XmlStringHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByDate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list containing exchange rates for the specified date.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRatesByDateHttpGetIn" />
      <wsdl:output message="tns:getExchangeRatesByDateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesXmlSchema">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a Xml Schema of provided Exchange Rates.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRatesXmlSchemaHttpGetIn" />
      <wsdl:output message="tns:getExchangeRatesXmlSchemaHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByCurrency">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list containing exchange rates for the specified currency that are between specified dates.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRatesByCurrencyHttpGetIn" />
      <wsdl:output message="tns:getExchangeRatesByCurrencyHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeAvgRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a average exchange rate for the specified currency, between specified dates.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeAvgRateHttpGetIn" />
      <wsdl:output message="tns:getExchangeAvgRateHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="ExchangeRatesHttpPost">
    <wsdl:operation name="getListOfCurrencies">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of currencies.</wsdl:documentation>
      <wsdl:input message="tns:getListOfCurrenciesHttpPostIn" />
      <wsdl:output message="tns:getListOfCurrenciesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getCurrentExchangeRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the current exchange rate (expressed in Litas per 1 currency unit) for the specified currency.</wsdl:documentation>
      <wsdl:input message="tns:getCurrentExchangeRateHttpPostIn" />
      <wsdl:output message="tns:getCurrentExchangeRateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an exchange rate (expressed in Litas per 1 currency unit) for the specified currency and date.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRateHttpPostIn" />
      <wsdl:output message="tns:getExchangeRateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByDate_XmlString">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a XML formatted string containing exchange rates for the specified date.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRatesByDate_XmlStringHttpPostIn" />
      <wsdl:output message="tns:getExchangeRatesByDate_XmlStringHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByCurrency_XmlString">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a XML formatted string containing exchange rates for the specified currency that are between specified dates.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRatesByCurrency_XmlStringHttpPostIn" />
      <wsdl:output message="tns:getExchangeRatesByCurrency_XmlStringHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByDate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list containing exchange rates for the specified date.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRatesByDateHttpPostIn" />
      <wsdl:output message="tns:getExchangeRatesByDateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesXmlSchema">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a Xml Schema of provided Exchange Rates.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRatesXmlSchemaHttpPostIn" />
      <wsdl:output message="tns:getExchangeRatesXmlSchemaHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByCurrency">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list containing exchange rates for the specified currency that are between specified dates.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeRatesByCurrencyHttpPostIn" />
      <wsdl:output message="tns:getExchangeRatesByCurrencyHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getExchangeAvgRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a average exchange rate for the specified currency, between specified dates.</wsdl:documentation>
      <wsdl:input message="tns:getExchangeAvgRateHttpPostIn" />
      <wsdl:output message="tns:getExchangeAvgRateHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="ExchangeRatesSoap" type="tns:ExchangeRatesSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getListOfCurrencies">
      <soap:operation soapAction="http://webservices.lb.lt/ExchangeRates/getListOfCurrencies" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getCurrentExchangeRate">
      <soap:operation soapAction="http://webservices.lb.lt/ExchangeRates/getCurrentExchangeRate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRate">
      <soap:operation soapAction="http://webservices.lb.lt/ExchangeRates/getExchangeRate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByDate_XmlString">
      <soap:operation soapAction="http://webservices.lb.lt/ExchangeRates/getExchangeRatesByDate_XmlString" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByCurrency_XmlString">
      <soap:operation soapAction="http://webservices.lb.lt/ExchangeRates/getExchangeRatesByCurrency_XmlString" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByDate">
      <soap:operation soapAction="http://webservices.lb.lt/ExchangeRates/getExchangeRatesByDate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesXmlSchema">
      <soap:operation soapAction="http://webservices.lb.lt/ExchangeRates/getExchangeRatesXmlSchema" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByCurrency">
      <soap:operation soapAction="http://webservices.lb.lt/ExchangeRates/getExchangeRatesByCurrency" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeAvgRate">
      <soap:operation soapAction="http://webservices.lb.lt/ExchangeRates/getExchangeAvgRate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ExchangeRatesSoap12" type="tns:ExchangeRatesSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getListOfCurrencies">
      <soap12:operation soapAction="http://webservices.lb.lt/ExchangeRates/getListOfCurrencies" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getCurrentExchangeRate">
      <soap12:operation soapAction="http://webservices.lb.lt/ExchangeRates/getCurrentExchangeRate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRate">
      <soap12:operation soapAction="http://webservices.lb.lt/ExchangeRates/getExchangeRate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByDate_XmlString">
      <soap12:operation soapAction="http://webservices.lb.lt/ExchangeRates/getExchangeRatesByDate_XmlString" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByCurrency_XmlString">
      <soap12:operation soapAction="http://webservices.lb.lt/ExchangeRates/getExchangeRatesByCurrency_XmlString" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByDate">
      <soap12:operation soapAction="http://webservices.lb.lt/ExchangeRates/getExchangeRatesByDate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesXmlSchema">
      <soap12:operation soapAction="http://webservices.lb.lt/ExchangeRates/getExchangeRatesXmlSchema" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByCurrency">
      <soap12:operation soapAction="http://webservices.lb.lt/ExchangeRates/getExchangeRatesByCurrency" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeAvgRate">
      <soap12:operation soapAction="http://webservices.lb.lt/ExchangeRates/getExchangeAvgRate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ExchangeRatesHttpGet" type="tns:ExchangeRatesHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="getListOfCurrencies">
      <http:operation location="/getListOfCurrencies" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getCurrentExchangeRate">
      <http:operation location="/getCurrentExchangeRate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRate">
      <http:operation location="/getExchangeRate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByDate_XmlString">
      <http:operation location="/getExchangeRatesByDate_XmlString" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByCurrency_XmlString">
      <http:operation location="/getExchangeRatesByCurrency_XmlString" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByDate">
      <http:operation location="/getExchangeRatesByDate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesXmlSchema">
      <http:operation location="/getExchangeRatesXmlSchema" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByCurrency">
      <http:operation location="/getExchangeRatesByCurrency" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeAvgRate">
      <http:operation location="/getExchangeAvgRate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ExchangeRatesHttpPost" type="tns:ExchangeRatesHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="getListOfCurrencies">
      <http:operation location="/getListOfCurrencies" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getCurrentExchangeRate">
      <http:operation location="/getCurrentExchangeRate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRate">
      <http:operation location="/getExchangeRate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByDate_XmlString">
      <http:operation location="/getExchangeRatesByDate_XmlString" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByCurrency_XmlString">
      <http:operation location="/getExchangeRatesByCurrency_XmlString" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByDate">
      <http:operation location="/getExchangeRatesByDate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesXmlSchema">
      <http:operation location="/getExchangeRatesXmlSchema" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeRatesByCurrency">
      <http:operation location="/getExchangeRatesByCurrency" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getExchangeAvgRate">
      <http:operation location="/getExchangeAvgRate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="ExchangeRates">
    <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">WebService provides official (established by Bank of Lithuania) exchange rates of the Litas against Foreign Currencies.</wsdl:documentation>
    <wsdl:port name="ExchangeRatesSoap" binding="tns:ExchangeRatesSoap">
      <soap:address location="http://www.lb.lt/webservices/ExchangeRates/ExchangeRates.asmx" />
    </wsdl:port>
    <wsdl:port name="ExchangeRatesSoap12" binding="tns:ExchangeRatesSoap12">
      <soap12:address location="http://www.lb.lt/webservices/ExchangeRates/ExchangeRates.asmx" />
    </wsdl:port>
    <wsdl:port name="ExchangeRatesHttpGet" binding="tns:ExchangeRatesHttpGet">
      <http:address location="http://www.lb.lt/webservices/ExchangeRates/ExchangeRates.asmx" />
    </wsdl:port>
    <wsdl:port name="ExchangeRatesHttpPost" binding="tns:ExchangeRatesHttpPost">
      <http:address location="http://www.lb.lt/webservices/ExchangeRates/ExchangeRates.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>