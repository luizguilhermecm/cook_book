# Handling Exceptions

Given this peace of code:

```java
public void foo() throws Exception {
    try{
      throw new Exception("throw new inside of try");
    } catch (Exception e) {
      // handle exception
    }
}
```

Regarding that code, the new exception thrown inside `try` will be caugth by
`catch` at next line.


https://dzone.com/articles/the-curse-swallowed-exception

http://howtodoinjava.com/best-practices/java-exception-handling-best-practices/

http://www.javamex.com/tutorials/exceptions/exceptions_catch_vs_throw.shtml
