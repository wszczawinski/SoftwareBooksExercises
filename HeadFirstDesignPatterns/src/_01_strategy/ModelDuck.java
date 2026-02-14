package _01_strategy;

public class ModelDuck extends Duck {
    public ModelDuck() {
        setFlyBehavior(new FlyNoWay());
        setQuackBehavior(new Quack());
    }

    public void display() {
        System.out.println("\nI'm a model duck");
    }
}
