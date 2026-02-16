# 🎯 Singleton Pattern

The **Singleton Pattern** ensures a class has only one instance and provides a global point of access to it.

In this example, `ChocolateBoiler` uses the Singleton pattern to ensure only one boiler instance exists in the factory, preventing issues like filling an already-filled boiler or draining one that hasn't been boiled.

## Key Principles

- **Controlled instantiation**: Private constructor prevents external instantiation
- **Global access point**: Static method provides consistent access to the single instance
- **Lazy initialization**: Instance created only when first requested (optional approach)

## Structure

- **Singleton**: Contains a private static instance variable and a static method to access it
- **Private Constructor**: Prevents direct instantiation from outside the class
- **getInstance()**: Static method that controls creation and returns the single instance

## Use Cases

- Spring `@Service` and `@Component` beans (single instance managing business logic)
- Axios instance configured once and reused across React components
- Configuration managers (single source of configuration data)
- Database connection pools (manage resources efficiently)

## Benefits

- Guaranteed single instance across the application
- Lazy initialization can save resources
- Global access point simplifies code that needs the instance
- Easy to extend to control number of instances (e.g., pool pattern)

## Drawbacks

- Can make unit testing difficult (global state)
- Violates Single Responsibility Principle (class controls its own creation and lifecycle)
- Can introduce hidden dependencies between classes
- Thread safety requires careful implementation (synchronization overhead)
- Can make code harder to parallelize

## Thread Safety Considerations

- **Synchronized method**: Simple but has performance cost on every call
- **Double-checked locking**: Reduces synchronization overhead (requires volatile)
- **Eager initialization**: Create instance at class loading time
- **Bill Pugh solution**: Use static inner class for lazy initialization without synchronization

Remember: Use when you need exactly one instance of a class and a global access point, but consider if dependency injection might be a better alternative.
