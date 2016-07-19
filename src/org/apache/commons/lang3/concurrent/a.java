package org.apache.commons.lang3.concurrent;

import org.apache.commons.lang3.c;

public class a
{
  static Throwable a(Throwable paramThrowable)
  {
    if ((paramThrowable != null) && (!(paramThrowable instanceof RuntimeException)) && (!(paramThrowable instanceof Error))) {}
    for (boolean bool = true;; bool = false)
    {
      c.a(bool, "Not a checked exception: " + paramThrowable, new Object[0]);
      return paramThrowable;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.concurrent.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */