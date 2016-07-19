package rx;

import com.yelp.android.dk.b;

class a$1
  implements a.a<R>
{
  a$1(a parama, a.b paramb) {}
  
  public void a(e<? super R> parame)
  {
    try
    {
      e locale = (e)a.b.a(a).call(parame);
      try
      {
        locale.b();
        b.a.call(locale);
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
      parame.a(localThrowable1);
    }
  }
}

/* Location:
 * Qualified Name:     rx.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */