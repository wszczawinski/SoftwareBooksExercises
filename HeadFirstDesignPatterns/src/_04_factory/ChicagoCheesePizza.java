package _04_factory;

public class ChicagoCheesePizza extends Pizza {
    public ChicagoCheesePizza() {
        name = "ChicagoCheesePizza";
        dough = "ChicagoDough";
        sauce = "ChicagoSauce";
        toppings.add("ChicagoCheese");
    }

    @Override
    public void cut() {
        System.out.println("Cutting the pizza into square slices");
    }
}
