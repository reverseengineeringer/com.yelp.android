package android.support.v4.media.session;

import android.media.MediaDescription;
import android.media.session.MediaSession.QueueItem;

class f
{
  public static Object a(Object paramObject)
  {
    return ((MediaSession.QueueItem)paramObject).getDescription();
  }
  
  public static Object a(Object paramObject, long paramLong)
  {
    return new MediaSession.QueueItem((MediaDescription)paramObject, paramLong);
  }
  
  public static long b(Object paramObject)
  {
    return ((MediaSession.QueueItem)paramObject).getQueueId();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */