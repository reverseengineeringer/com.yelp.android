package android.support.v4.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.Transition.EpicenterCallback;

final class p$3
  extends Transition.EpicenterCallback
{
  private Rect b;
  
  p$3(p.a parama) {}
  
  public Rect onGetEpicenter(Transition paramTransition)
  {
    if ((b == null) && (a.a != null)) {
      b = p.b(a.a);
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.p.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */