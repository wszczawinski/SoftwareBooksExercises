package _04_factory.simple_factory;

public class PepperoniPizza extends Pizza{
    public PepperoniPizza() {
        name = "PepperoniPizza";
        dough = "ThinCrustDough";
        sauce = "MarinaraSauce";
        toppings.add("Pepperoni");
    }

    @Override
    public void cut() {
        System.out.println("Cutting pizza into square slices");
    }
}
