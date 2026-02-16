package _04_factory.simple_factory;

public class Main {
    public static void main(String[] args) {
        SimplePizzaFactory factory = new SimplePizzaFactory();
        PizzaStore pizzaStore = new PizzaStore(factory);

        Pizza pizza = pizzaStore.orderPizza("cheese");
        System.out.println("Ethan ordered a " + pizza.getName());

        System.out.println("--");

        pizza = pizzaStore.orderPizza("pepperoni");
        System.out.println("Joel ordered a " + pizza.getName());
    }
}
