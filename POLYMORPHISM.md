# POLYMORPHISM

**Polymorphism** means existing in many forms. Variables, functions, and objects can exist in multiple forms in Object Oriented Programming Languages. There are two types of polymorphism which are;
1. Run time polymorphism
2. Compile-time polymorphism.       
> Run time can take a different form while the application is running and compile-time can take a different form during compilation.

An excellent example of Polymorphism in Object-oriented programing is a *cursor behavior*. A cursor may take different forms like an arrow, a line, cross, or other shapes depending on the behavior of the user or the program mode. With **polymorphism**, a method or subclass can define its behaviors and attributes while retaining some of the functionality of its parent class. This means you can have a class that displays date and time, and then you can create a method to inherit the class but should display a welcome message alongside the date and time. ***The goals of Polymorphism in Object-oriented programming is to enforce simplicity, making codes more extendable and easily maintaining applications***.

Program codes would run differently in a different operating system. *The ability of program code exhibiting different behaviors across the operating system is known as **Polymorphism** in OOP*.  You can create a class called “Move” and then four people create animals that would inherit the move class. But we don’t know the type of animals that they would create. So polymorphism would allow the animals to move but in different forms based on the physical features;

+ A creates a Snail that inherits the move class, but the snail would crawl

+ B creates a Kangaroo that inherits the move class, but the Kangaroo would leap

+ C creates a Dog that inherits the move class, but the dogs would walk

+ D creates a Fish that inherits the move class, but the Fish would swim.

+ Polymorphism has ensured that these animals are all moving but in different forms. 