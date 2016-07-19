package com.facebook;

import java.util.concurrent.Callable;

final class g$2
  implements Callable<Void>
{
  public Void a()
    throws Exception
  {
    b.a().c();
    l.a().c();
    if ((AccessToken.a() != null) && (Profile.a() == null)) {
      Profile.b();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.facebook.g.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */