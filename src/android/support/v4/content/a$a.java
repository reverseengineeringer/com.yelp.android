package android.support.v4.content;

import android.support.v4.os.OperationCanceledException;
import java.util.concurrent.CountDownLatch;

final class a$a
  extends ModernAsyncTask<Void, Void, D>
  implements Runnable
{
  boolean a;
  private final CountDownLatch d = new CountDownLatch(1);
  
  a$a(a parama) {}
  
  protected D a(Void... paramVarArgs)
  {
    try
    {
      paramVarArgs = b.e();
      return paramVarArgs;
    }
    catch (OperationCanceledException paramVarArgs)
    {
      if (!c()) {
        throw paramVarArgs;
      }
    }
    return null;
  }
  
  protected void a(D paramD)
  {
    try
    {
      b.b(this, paramD);
      return;
    }
    finally
    {
      d.countDown();
    }
  }
  
  protected void b(D paramD)
  {
    try
    {
      b.a(this, paramD);
      return;
    }
    finally
    {
      d.countDown();
    }
  }
  
  public void run()
  {
    a = false;
    b.c();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */