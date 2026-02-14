package _02_observer.native_implementation;

public class Main {
    public static void main(String[] args) {
        WeatherData weatherData = new WeatherData();

        CurrentConditionsDisplay currentConditionsDisplay = new CurrentConditionsDisplay(weatherData);

        weatherData.setMeasurements(82, 70, 29.2f);
        weatherData.setMeasurements(81, 65, 30.4f);
    }
}
