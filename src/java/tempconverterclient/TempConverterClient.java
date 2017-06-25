/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tempconverterclient;

/**
 *
 * @author Tomas
 */
public class TempConverterClient {

    private String input;
    private net.webservicex.TemperatureUnit fromUnit;
    private net.webservicex.TemperatureUnit toUnit;

    public TempConverterClient() {
    }
    //constructor
    public TempConverterClient(String inpt, net.webservicex.TemperatureUnit from, net.webservicex.TemperatureUnit to) {
        this.input = inpt;
        this.fromUnit = from;
        this.toUnit = to;
    }
    //read input, check if parsable
    public String getInput() {
        try {
            double temp = Double.parseDouble(this.input);
            return String.valueOf(convertTemp(temp, getFromUnit(), getToUnit()));
        } catch (Exception e) {
            return "can not convert string";
        }
    }

    public void setInput(String input) {
        this.input = input;
    }

    public net.webservicex.TemperatureUnit getFromUnit() {
        return fromUnit;
    }

    public void setFromUnit(net.webservicex.TemperatureUnit fromUnit) {
        this.fromUnit = fromUnit;
    }

    public net.webservicex.TemperatureUnit getToUnit() {
        return this.toUnit;
    }

    public void setToUnit(net.webservicex.TemperatureUnit toUnit) {
        this.toUnit = toUnit;
    }

    private static double convertTemp(double temperature, net.webservicex.TemperatureUnit fromUnit, net.webservicex.TemperatureUnit toUnit) {
        net.webservicex.ConvertTemperature service = new net.webservicex.ConvertTemperature();
        net.webservicex.ConvertTemperatureSoap port = service.getConvertTemperatureSoap();
        return port.convertTemp(temperature, fromUnit, toUnit);
    }

}
