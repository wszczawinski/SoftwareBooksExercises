# 🦆 Strategy Pattern

The **Strategy Pattern** defines a family of algorithms, encapsulates each one, and makes them interchangeable.
Strategy lets the algorithm vary independently from clients that use it.

In this example, `Duck` objects delegate their flying and quacking behavior to `FlyBehavior` 
and `QuackBehavior` interfaces. This allows behaviors to be assigned dynamically and changed at runtime.

## Key Principles

- **Encapsulate what varies**: Extract changing behaviors (fly, quack) into separate classes.
- **Favor composition over inheritance**: Use interfaces and delegate behavior instead of using class inheritance.
- **Program to an interface, not an implementation**: Rely on abstractions (`FlyBehavior`, `QuackBehavior`) instead of
  concrete implementations.

## Structure

- **Context** (Duck): Maintains a reference to a Strategy object
- **Strategy** (FlyBehavior, QuackBehavior): Common interface for all concrete strategies
- **ConcreteStrategy** (FlyWithWings, Quack): Implements specific algorithms

## Use Cases

- Payment processing systems (different payment methods)
- Sorting algorithms (quicksort, mergesort, bubblesort)
- Compression strategies (ZIP, RAR, TAR)
- Validation rules that vary by context

## Benefits

- Eliminates conditional statements for behavior selection
- Easy to add new strategies without modifying existing code
- Behaviors can be switched at runtime
- Follows Open/Closed Principle

## Drawbacks

- Increases number of classes in the system
- Clients must be aware of different strategies
- Communication overhead between Strategy and Context

Remember: Use when you have multiple algorithms for a specific task and want to choose between them at runtime.
