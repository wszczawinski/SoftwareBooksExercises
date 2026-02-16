package _04_factory;

public class NYCheesePizza extends Pizza {
    public NYCheesePizza() {
        name = "NYCheesePizza";
        dough = "NYDough";
        sauce = "NYSauce";

        toppings.add("NYCheese");
    }
}
