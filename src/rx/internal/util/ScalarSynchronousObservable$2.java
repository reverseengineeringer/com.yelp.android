package rx.internal.util;

import com.yelp.android.dg.a;
import com.yelp.android.dg.e;
import rx.d;
import rx.d.a;
import rx.f;

class ScalarSynchronousObservable$2
  implements e<a, f>
{
  ScalarSynchronousObservable$2(ScalarSynchronousObservable paramScalarSynchronousObservable, d paramd) {}
  
  public f a(final a parama)
  {
    final d.a locala = a.a();
    locala.a(new a()
    {
      public void call()
      {
        try
        {
          parama.call();
          return;
        }
        finally
        {
          locala.unsubscribe();
        }
      }
    });
    return locala;
  }
}

/* Location:
 * Qualified Name:     rx.internal.util.ScalarSynchronousObservable.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */