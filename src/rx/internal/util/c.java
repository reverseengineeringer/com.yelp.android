package rx.internal.util;

import com.yelp.android.dk.a;
import com.yelp.android.dk.d;
import java.io.PrintStream;

public final class c
{
  public static void a(Throwable paramThrowable)
  {
    try
    {
      d.a().b().a(paramThrowable);
      return;
    }
    catch (Throwable paramThrowable)
    {
      b(paramThrowable);
    }
  }
  
  private static void b(Throwable paramThrowable)
  {
    System.err.println("RxJavaErrorHandler threw an Exception. It shouldn't. => " + paramThrowable.getMessage());
    paramThrowable.printStackTrace();
  }
}

/* Location:
 * Qualified Name:     rx.internal.util.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */