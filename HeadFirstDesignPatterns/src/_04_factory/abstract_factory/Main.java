package _04_factory.abstract_factory;

public class Main {
    public static void main(String[] args) {
        PizzaStore nyStore = new NYPizzaStore();

        String ethanOrder = "cheese";

        System.out.println("Ethan ordered a " + ethanOrder + "\n");
        nyStore.orderPizza(ethanOrder);

        System.out.println("--");
    }
}
