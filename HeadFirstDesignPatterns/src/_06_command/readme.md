# Command Pattern

The **Command Pattern** encapsulates a request as an object, thereby letting you parameterize clients with different
requests, queue or log requests, and support undoable operations.

In this example, a remote control uses command objects to control various devices (lights, garage doors, stereos). Each
command encapsulates the action and the receiver, allowing the remote to execute commands without knowing the details of
the devices.

## Key Principles

- **Encapsulate requests**: Wrap requests in objects containing all information needed to execute them
- **Decouple sender from receiver**: The invoker doesn't need to know about the receiver's implementation
- **Support undo/redo**: Commands can store state to reverse their effects
- **Command queuing**: Commands can be stored and executed later

## Structure

- **Command**: Interface declaring an execute() method
- **ConcreteCommand** (LightOnCommand, GarageDoorOpenCommand): Implements execute() by invoking operations on a Receiver
- **Receiver** (Light, GarageDoor, Stereo): The object that performs the actual work
- **Invoker** (RemoteControl): Holds commands and calls execute()
- **Client**: Creates ConcreteCommand objects and sets their receivers

## Use Cases

- React Context dispatch actions with useReducer for state management
- Spring Batch job steps for processing large datasets
- Undo/redo functionality in collaborative editors (Google Docs, Figma)
- Database transaction management with rollback capability
- GUI button actions in forms and toolbars

## Benefits

- Decouples the object that invokes the operation from the one that performs it
- Easy to add new commands without changing existing code
- Commands can be assembled into composite commands
- Supports undo/redo functionality
- Supports logging and auditing of operations
- Commands can be queued for delayed execution

## Drawbacks

- Increases number of classes (one class per command)
- Can add complexity for simple operations
- May require additional memory to store command history for undo

Remember: Use when you need to parameterize objects with operations, queue operations, or support undo/redo
functionality.
