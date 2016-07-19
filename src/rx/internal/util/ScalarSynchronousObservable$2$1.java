package rx.internal.util;

import com.yelp.android.dg.a;
import rx.d.a;

class ScalarSynchronousObservable$2$1
  implements a
{
  ScalarSynchronousObservable$2$1(ScalarSynchronousObservable.2 param2, a parama, d.a parama1) {}
  
  public void call()
  {
    try
    {
      a.call();
      return;
    }
    finally
    {
      b.unsubscribe();
    }
  }
}

/* Location:
 * Qualified Name:     rx.internal.util.ScalarSynchronousObservable.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */