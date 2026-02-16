package _04_factory;

public class Main {
    public static void main(String[] args) {
        PizzaStore nyStore = new NYPizzaStore();
        PizzaStore chicagoStore = new ChicagoPizzaStore();

        String ethanOrder = "cheese";

        System.out.println("Ethan ordered a " + ethanOrder + "\n");
        nyStore.orderPizza(ethanOrder);

        System.out.println("--");
        String joelOrder = "pepperoni";

        System.out.println("Joel ordered a " + joelOrder);
        chicagoStore.orderPizza(joelOrder);
    }
}
