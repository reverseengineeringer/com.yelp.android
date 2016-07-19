package android.support.v4.os;

import android.os.CancellationSignal;

class d
{
  public static Object a()
  {
    return new CancellationSignal();
  }
  
  public static void a(Object paramObject)
  {
    ((CancellationSignal)paramObject).cancel();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.os.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */