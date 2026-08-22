# 🔌 Adapter Pattern

The **Adapter Pattern** converts the interface of a class into another interface that clients expect. It allows classes
with incompatible interfaces to work together without changing their existing code.

In this example, adapters let ducks, turkeys, and drones work through interfaces they do not normally implement.
`TurkeyAdapter` makes a `Turkey` look like a `Duck`, `DuckAdapter` makes a `Duck` look like a `Turkey`, and
`DroneAdapter` lets a `Drone` be used wherever a `Duck` is expected.

## Key Principles

- **Program to an interface**: Clients depend on the target interface rather than a concrete implementation
- **Favor composition over inheritance**: An adapter wraps an existing object and delegates work to it
- **Keep existing classes unchanged**: Compatibility is added without modifying the adapted class
- **Translate behavior**: The adapter maps target operations to one or more operations on the adaptee

## Structure

- **Target** (`Duck` or `Turkey`): The interface the client expects
- **Adaptee** (`Turkey`, `Duck`, or `Drone`): The existing interface that needs adapting
- **Adapter** (`TurkeyAdapter`, `DuckAdapter`, `DroneAdapter`): Implements the target interface and delegates to the adaptee
- **Client** (`Main.testDuck()`): Works with the target interface without knowing an adapter is involved

For example, `TurkeyAdapter.fly()` calls the turkey's shorter flight five times to approximate a duck's flight, while
`DroneAdapter.fly()` translates one duck operation into the drone's `spin_rotors()` and `take_off()` operations.

## Use Cases

- Integrating legacy code with a new interface
- Wrapping third-party libraries or external APIs
- Converting between application and framework interfaces
- Supporting multiple device or service implementations through one client-facing contract
- Migrating systems incrementally without rewriting existing components

## Benefits

- Reuses existing classes with incompatible interfaces
- Keeps conversion logic in one place
- Decouples clients from implementation-specific APIs
- Follows the Single Responsibility Principle by separating adaptation from business logic
- Follows the Open/Closed Principle by adding compatibility without changing existing classes

## Drawbacks

- Adds extra classes and indirection
- Complex interface differences may require complicated translation logic
- Behavior may only be approximated when the interfaces have different capabilities
- Too many adapters can make the system harder to navigate

Remember: Use the Adapter Pattern when an existing class provides the behavior you need but its interface does not match
the interface expected by the client.
