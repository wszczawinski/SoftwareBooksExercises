package _03_decorator;

public class Main {
    public static void main(String[] args) {

        Beverage beverage = new Espresso();
        System.out.println(beverage.getDescription() + " $" + beverage.cost());

        Beverage houseBlend = new HouseBlend();
        houseBlend = new Mocha(houseBlend);
        houseBlend = new Mocha(houseBlend);
        houseBlend = new Whip(houseBlend);

        System.out.println(houseBlend.getDescription() + " $" + houseBlend.cost());

        Beverage darkRoast = new DarkRoast();
        darkRoast = new Soy(darkRoast);
        darkRoast = new Mocha(darkRoast);

        System.out.println(darkRoast.getDescription() + " $" + darkRoast.cost());
    }
}
