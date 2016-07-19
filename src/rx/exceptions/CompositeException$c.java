package rx.exceptions;

import java.io.PrintWriter;

class CompositeException$c
  extends CompositeException.a
{
  private final PrintWriter a;
  
  CompositeException$c(PrintWriter paramPrintWriter)
  {
    super(null);
    a = paramPrintWriter;
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
 * Qualified Name:     rx.exceptions.CompositeException.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */