package _04_factory.simple_factory;

public class CheesePizza extends Pizza {
    public CheesePizza() {
        name = "CheesePizza";
        dough = "ThinCrustDough";
        sauce = "PlumTomatoSauce";
        toppings.add("ShreddedMozzarellaCheese");
    }

    @Override
    public void cut() {
        System.out.println("Cutting the pizza into square slices");
    }
}
