package android.support.v4.content;

import java.util.concurrent.CountDownLatch;

final class b
  extends ModernAsyncTask<Void, Void, D>
  implements Runnable
{
  D a;
  boolean b;
  private CountDownLatch e = new CountDownLatch(1);
  
  b(a parama) {}
  
  protected D a(Void... paramVarArgs)
  {
    a = c.d();
    return (D)a;
  }
  
  protected void a()
  {
    try
    {
      c.a(this, a);
      return;
    }
    finally
    {
      e.countDown();
    }
  }
  
  protected void a(D paramD)
  {
    try
    {
      c.b(this, paramD);
      return;
    }
    finally
    {
      e.countDown();
    }
  }
  
  public void run()
  {
    b = false;
    c.b();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */