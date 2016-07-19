package org.apache.commons.lang3.exception;

import java.io.PrintWriter;
import java.io.StringWriter;

public class b
{
  private static final String[] a = { "getCause", "getNextException", "getTargetException", "getException", "getSourceException", "getRootCause", "getCausedByException", "getNested", "getLinkedException", "getNestedException", "getLinkedCause", "getThrowable" };
  
  public static String a(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter, true));
    return localStringWriter.getBuffer().toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.exception.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */