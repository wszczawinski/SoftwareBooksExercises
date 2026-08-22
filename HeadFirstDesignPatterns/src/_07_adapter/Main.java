package _07_adapter;

public class Main {
    public static void main(String[] args) {

        Duck duck = new MallardDuck();

        Turkey turkey = new WildTurkey();

        Duck turkeyAdapter = new TurkeyAdapter(turkey);

        System.out.println(" The Turkey says:");
        turkey.gobble();
        turkey.fly();

        System.out.println("\n The Duck says:");
        testDuck(duck);

        System.out.println("\n The TurkeyAdapter says:");
        testDuck(turkeyAdapter);

        Turkey duckAdapter = new DuckAdapter(duck);
        System.out.println("\n The DuckAdapter says:");
        duckAdapter.gobble();
        duck.fly();

        Drone drone = new SuperDrone();
        System.out.println("\n The Drone says:");
        drone.beep();

        Duck droneAdapter = new DroneAdapter(drone);
        System.out.println("\n The Drone Adapter says:");
        droneAdapter.quack();
        droneAdapter.fly();
    }

    static void testDuck(Duck duck) {
        duck.quack();
        duck.fly();
    }
}
