package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.media.session.PlaybackState.Builder;

class j
{
  public static int a(Object paramObject)
  {
    return ((PlaybackState)paramObject).getState();
  }
  
  public static Object a(int paramInt, long paramLong1, long paramLong2, float paramFloat, long paramLong3, CharSequence paramCharSequence, long paramLong4)
  {
    PlaybackState.Builder localBuilder = new PlaybackState.Builder();
    localBuilder.setState(paramInt, paramLong1, paramFloat, paramLong4);
    localBuilder.setBufferedPosition(paramLong2);
    localBuilder.setActions(paramLong3);
    localBuilder.setErrorMessage(paramCharSequence);
    return localBuilder.build();
  }
  
  public static long b(Object paramObject)
  {
    return ((PlaybackState)paramObject).getPosition();
  }
  
  public static long c(Object paramObject)
  {
    return ((PlaybackState)paramObject).getBufferedPosition();
  }
  
  public static float d(Object paramObject)
  {
    return ((PlaybackState)paramObject).getPlaybackSpeed();
  }
  
  public static long e(Object paramObject)
  {
    return ((PlaybackState)paramObject).getActions();
  }
  
  public static CharSequence f(Object paramObject)
  {
    return ((PlaybackState)paramObject).getErrorMessage();
  }
  
  public static long g(Object paramObject)
  {
    return ((PlaybackState)paramObject).getLastPositionUpdateTime();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */