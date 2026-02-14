package _02_observer;

public class Main {
    public static void main(String[] args) {
        final WeatherData weatherData = new WeatherData();

        final CurrentConditionsDisplay currentConditionsDisplay = new CurrentConditionsDisplay(weatherData);
        final StatisticsDisplay statisticsDisplay = new StatisticsDisplay(weatherData);
        final ForecastDisplay forecastDisplay = new ForecastDisplay(weatherData);

        System.out.println("1");
        weatherData.setMeasurements(80, 65, 30.4f);
        System.out.println("2");
        weatherData.setMeasurements(82, 70, 29.2f);
        System.out.println("3");
        weatherData.setMeasurements(78, 90, 29.2f);

        weatherData.removeObserver(currentConditionsDisplay);

        System.out.println("4");
        weatherData.setMeasurements(84, 65, 30.4f);
    }
}
