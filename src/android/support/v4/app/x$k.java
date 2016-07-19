package android.support.v4.app;

import android.app.Notification;

class x$k
  extends x.j
{
  public Notification a(x.d paramd, x.e parame)
  {
    parame = B;
    parame.setLatestEventInfo(a, b, c, d);
    parame = ab.a(parame, a, b, c, d, e);
    if (j > 0) {
      flags |= 0x80;
    }
    return parame;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.x.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */