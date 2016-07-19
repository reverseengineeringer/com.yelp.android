package rx.exceptions;

import java.io.PrintStream;

class CompositeException$b
  extends CompositeException.a
{
  private final PrintStream a;
  
  CompositeException$b(PrintStream paramPrintStream)
  {
    super(null);
    a = paramPrintStream;
  }
  
  Object a()
  {
    return a;
  }
  
  void a(Object paramObject)
  {
    a.println(paramObject);
  }
}

/* Location:
 * Qualified Name:     rx.exceptions.CompositeException.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */