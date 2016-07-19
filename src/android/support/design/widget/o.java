package android.support.design.widget;

import android.util.StateSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

final class o
{
  private final ArrayList<a> a = new ArrayList();
  private a b = null;
  private Animation c = null;
  private WeakReference<View> d;
  private Animation.AnimationListener e = new Animation.AnimationListener()
  {
    public void onAnimationEnd(Animation paramAnonymousAnimation)
    {
      if (o.a(o.this) == paramAnonymousAnimation) {
        o.a(o.this, null);
      }
    }
    
    public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
    
    public void onAnimationStart(Animation paramAnonymousAnimation) {}
  };
  
  private void a(a parama)
  {
    c = b;
    parama = a();
    if (parama != null) {
      parama.startAnimation(c);
    }
  }
  
  private void c()
  {
    View localView = a();
    int j = a.size();
    int i = 0;
    while (i < j)
    {
      Animation localAnimation = a.get(i)).b;
      if (localView.getAnimation() == localAnimation) {
        localView.clearAnimation();
      }
      i += 1;
    }
    d = null;
    b = null;
    c = null;
  }
  
  private void d()
  {
    if (c != null)
    {
      View localView = a();
      if ((localView != null) && (localView.getAnimation() == c)) {
        localView.clearAnimation();
      }
      c = null;
    }
  }
  
  View a()
  {
    if (d == null) {
      return null;
    }
    return (View)d.get();
  }
  
  void a(View paramView)
  {
    View localView = a();
    if (localView == paramView) {}
    do
    {
      return;
      if (localView != null) {
        c();
      }
    } while (paramView == null);
    d = new WeakReference(paramView);
  }
  
  void a(int[] paramArrayOfInt)
  {
    int j = a.size();
    int i = 0;
    a locala;
    if (i < j)
    {
      locala = (a)a.get(i);
      if (!StateSet.stateSetMatches(a, paramArrayOfInt)) {}
    }
    for (paramArrayOfInt = locala;; paramArrayOfInt = null)
    {
      if (paramArrayOfInt == b) {}
      do
      {
        return;
        i += 1;
        break;
        if (b != null) {
          d();
        }
        b = paramArrayOfInt;
      } while (paramArrayOfInt == null);
      a(paramArrayOfInt);
      return;
    }
  }
  
  public void a(int[] paramArrayOfInt, Animation paramAnimation)
  {
    paramArrayOfInt = new a(paramArrayOfInt, paramAnimation, null);
    paramAnimation.setAnimationListener(e);
    a.add(paramArrayOfInt);
  }
  
  public void b()
  {
    if (c != null)
    {
      View localView = a();
      if ((localView != null) && (localView.getAnimation() == c)) {
        localView.clearAnimation();
      }
    }
  }
  
  static class a
  {
    final int[] a;
    final Animation b;
    
    private a(int[] paramArrayOfInt, Animation paramAnimation)
    {
      a = paramArrayOfInt;
      b = paramAnimation;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */