package com.yelp.android.dk;

public abstract class a
{
  public final String a(Object paramObject)
  {
    try
    {
      String str = b(paramObject);
      return str;
    }
    catch (InterruptedException localInterruptedException)
    {
      Thread.currentThread().interrupt();
      return paramObject.getClass().getName() + ".errorRendering";
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        rx.exceptions.a.a(localThrowable);
      }
    }
  }
  
  public void a(Throwable paramThrowable) {}
  
  protected String b(Object paramObject)
    throws InterruptedException
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */