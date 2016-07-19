package rx.internal.util;

import com.yelp.android.dg.a;
import rx.a.a;
import rx.f;

final class ScalarSynchronousObservable$a<T>
  implements a.a<T>
{
  final T a;
  final com.yelp.android.dg.e<a, f> b;
  
  ScalarSynchronousObservable$a(T paramT, com.yelp.android.dg.e<a, f> parame)
  {
    a = paramT;
    b = parame;
  }
  
  public void a(rx.e<? super T> parame)
  {
    parame.a(new ScalarSynchronousObservable.ScalarAsyncProducer(parame, a, b));
  }
}

/* Location:
 * Qualified Name:     rx.internal.util.ScalarSynchronousObservable.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */