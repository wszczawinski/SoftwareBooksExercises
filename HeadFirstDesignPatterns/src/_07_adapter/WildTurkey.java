package _07_adapter;

public class WildTurkey implements Turkey {
    public void gobble() {
        System.out.println("Gobble");
    }

    public void fly() {
        System.out.println("Fly");
    }
}
