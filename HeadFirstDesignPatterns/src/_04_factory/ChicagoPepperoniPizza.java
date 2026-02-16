package _04_factory;

public class ChicagoPepperoniPizza extends Pizza {
    public ChicagoPepperoniPizza() {
        name = "ChicagoPepperoniPizza";
        dough = "ExtraThickCrustDough";
        sauce = "ChicagoSauce";
        toppings.add("ChicagoPepperoni");
    }

    @Override
    public void cut() {
        System.out.println("Cutting the pizza into square slices");
    }
}
