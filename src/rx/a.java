package rx;

import rx.internal.operators.c;
import rx.internal.util.ScalarSynchronousObservable;

public class a<T>
{
  static final com.yelp.android.dk.b b = com.yelp.android.dk.d.a().c();
  final a<T> a;
  
  protected a(a<T> parama)
  {
    a = parama;
  }
  
  public static <T> a<T> a(a<T> parama)
  {
    return new a(b.a(parama));
  }
  
  private static <T> f a(e<? super T> parame, a<T> parama)
  {
    if (parame == null) {
      throw new IllegalArgumentException("observer can not be null");
    }
    if (a == null) {
      throw new IllegalStateException("onSubscribe function can not be null.");
    }
    parame.b();
    Object localObject = parame;
    if (!(parame instanceof com.yelp.android.dj.a)) {
      localObject = new com.yelp.android.dj.a(parame);
    }
    try
    {
      b.a(parama, a).call(localObject);
      parame = b.a((f)localObject);
      return parame;
    }
    catch (Throwable parame)
    {
      rx.exceptions.a.a(parame);
      try
      {
        ((e)localObject).a(b.a(parame));
        return com.yelp.android.dm.d.b();
      }
      catch (Throwable parama)
      {
        rx.exceptions.a.a(parama);
        parame = new RuntimeException("Error occurred attempting to subscribe [" + parame.getMessage() + "] and then again while trying to pass to onError.", parama);
        b.a(parame);
        throw parame;
      }
    }
  }
  
  public final <R> a<R> a(final b<? extends R, ? super T> paramb)
  {
    new a(new a()
    {
      public void a(e<? super R> paramAnonymouse)
      {
        try
        {
          e locale = (e)a.b.a(paramb).call(paramAnonymouse);
          try
          {
            locale.b();
            a.call(locale);
            return;
          }
          catch (Throwable localThrowable2)
          {
            rx.exceptions.a.a(localThrowable2);
            locale.a(localThrowable2);
            return;
          }
          return;
        }
        catch (Throwable localThrowable1)
        {
          rx.exceptions.a.a(localThrowable1);
          paramAnonymouse.a(localThrowable1);
        }
      }
    });
  }
  
  public final a<T> a(d paramd)
  {
    return a(paramd, rx.internal.util.d.b);
  }
  
  public final a<T> a(d paramd, int paramInt)
  {
    return a(paramd, false, paramInt);
  }
  
  public final a<T> a(d paramd, boolean paramBoolean, int paramInt)
  {
    if ((this instanceof ScalarSynchronousObservable)) {
      return ((ScalarSynchronousObservable)this).c(paramd);
    }
    return a(new rx.internal.operators.b(paramd, paramBoolean, paramInt));
  }
  
  public final f a(e<? super T> parame)
  {
    try
    {
      parame.b();
      b.a(this, a).call(parame);
      f localf = b.a(parame);
      return localf;
    }
    catch (Throwable localThrowable)
    {
      rx.exceptions.a.a(localThrowable);
      try
      {
        parame.a(b.a(localThrowable));
        return com.yelp.android.dm.d.b();
      }
      catch (Throwable parame)
      {
        rx.exceptions.a.a(parame);
        parame = new RuntimeException("Error occurred attempting to subscribe [" + localThrowable.getMessage() + "] and then again while trying to pass to onError.", parame);
        b.a(parame);
        throw parame;
      }
    }
  }
  
  public final a<T> b(d paramd)
  {
    if ((this instanceof ScalarSynchronousObservable)) {
      return ((ScalarSynchronousObservable)this).c(paramd);
    }
    return a(new c(this, paramd));
  }
  
  public final f b(e<? super T> parame)
  {
    return a(parame, this);
  }
  
  public static abstract interface a<T>
    extends com.yelp.android.dg.b<e<? super T>>
  {}
  
  public static abstract interface b<R, T>
    extends com.yelp.android.dg.e<e<? super R>, e<? super T>>
  {}
}

/* Location:
 * Qualified Name:     rx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */