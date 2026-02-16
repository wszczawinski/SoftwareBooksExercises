#  Factory Pattern

The **Factory Pattern** defines an interface for creating an object, but lets subclasses decide which class to instantiate. 
Factory Method lets a class defer instantiation to subclasses.

In this example, `PizzaStore` uses the Factory Method pattern where each regional store (NY, Chicago) implements the `createPizza()` method 
to create region-specific pizzas. The `orderPizza()` method remains unchanged and works with any pizza type.

## Key Principles

- **Depend upon abstractions, not concrete classes** (Dependency Inversion Principle): High-level components should not depend on low-level components; both should depend on abstractions
- **Encapsulate object creation**: Extract object creation logic into separate factory classes or methods
- **Program to an interface, not an implementation**: The factory returns abstract product types

## Structure

- **Creator** (PizzaStore): Abstract class that declares the factory method
- **ConcreteCreator** (NYPizzaStore, ChicagoPizzaStore): Implements the factory method to create specific products
- **Product** (Pizza): Defines the interface for objects the factory method creates
- **ConcreteProduct** (NYCheesePizza, ChicagoCheesePizza): Specific implementations of the product

## Variants

### Simple Factory
Not a design pattern per se, but a programming idiom. Encapsulates object creation in a single class with a static method.

### Factory Method Pattern
Defines an interface for creating objects but lets subclasses decide which class to instantiate. Relies on inheritance.

### Abstract Factory Pattern
Provides an interface for creating families of related or dependent objects without specifying their concrete classes.

## Use Cases

- Spring's `BeanFactory` and `ApplicationContext` use Factory Pattern to create and manage beans based on configuration
- Payment processing services creating different handlers (Stripe, PayPal, Square) based on configuration
- Spring Boot's auto-configuration factories creating different data source implementations based on classpath and properties
- Document exporters producing PDF, Excel, or CSV files based on user selection

## Benefits

- Eliminates tight coupling between creator and concrete products
- Promotes loose coupling and flexibility
- Follows Open/Closed Principle (easy to add new product types)
- Centralizes object creation logic
- Code reuse through inheritance

## Drawbacks

- Can lead to many subclasses for each product variant
- More complex than direct object instantiation
- Clients may need to subclass the Creator just to create a particular ConcreteProduct

Remember: Use the Factory Pattern when a class can't anticipate the type of objects it needs to create, or when you want to delegate the responsibility of object creation to subclasses.
