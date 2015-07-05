package android.support.v4.media.session;

import android.media.session.MediaSession.Token;

class e
{
  public static Object a(Object paramObject)
  {
    if ((paramObject instanceof MediaSession.Token)) {
      return paramObject;
    }
    throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */