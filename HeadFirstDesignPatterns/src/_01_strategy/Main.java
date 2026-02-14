package _01_strategy;

public class Main {
    public static void main(String[] args) {

        Duck mallard = new MallardDuck();
        Duck model = new ModelDuck();

        mallard.display();
        mallard.performFly();
        mallard.performQuack();
        mallard.swim();

        model.display();
        model.performFly();
        // change behavior dynamically at runtime
        model.setFlyBehavior(new FlyRocketPowered());
        model.performFly();

    }
}
