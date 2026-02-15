# ☕ Decorator Pattern

The **Decorator Pattern** attaches additional responsibilities to an object dynamically. 
Decorators provide a flexible alternative to subclassing for extending functionality.

In this example, a coffee ordering system has beverages decorated with condiments (like Whip). 
Each decorator wraps the original object and adds its own behavior while maintaining the same interface.

## Key Principles

- **Open/Closed Principle**: Classes should be open for extension but closed for modification
- **Single Responsibility Principle**: Each decorator has a single responsibility (adding one condiment)
- **Composition over Inheritance**: Uses object composition to achieve flexible designs at runtime

## Structure

- **Component** (Beverage): Defines the interface for objects that can have responsibilities added
- **ConcreteComponent** (like Espresso): The base object that can be decorated
- **Decorator** (CondimentDecorator): Maintains a reference to a Component and conforms to Component's interface
- **ConcreteDecorator** (like Whip): Adds responsibilities to the component

## Use Cases

- Spring Boot annotations (@Transactional, @Cacheable, @Secured) use proxies that act as decorators, wrapping methods with cross-cutting concerns
- Spring filters and interceptors wrap requests/responses to add security, logging, or transformation behavior
- React Higher-Order Components (HOCs) that wrap components with additional props or behavior

Decorators can be stacked (multiple condiments) or combined (different condiments) to create complex combinations while
maintaining the same interface.

## Benefits

- More flexible than static inheritance
- Supports adding/removing responsibilities at runtime
- Follows Single Responsibility Principle
- Provides a better alternative to subclassing

## Drawbacks

- Can lead to many small decorator classes
- May make system configuration more complex
- Order of decorators can be significant

Remember: Use the Decorator Pattern when you need to add responsibilities to objects dynamically and transparently,
without affecting other objects.
