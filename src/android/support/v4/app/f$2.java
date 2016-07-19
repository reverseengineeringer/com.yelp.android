package android.support.v4.app;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import com.yelp.android.g.a;
import java.util.ArrayList;

class f$2
  implements ViewTreeObserver.OnPreDrawListener
{
  f$2(f paramf, View paramView, Object paramObject, ArrayList paramArrayList, f.b paramb, boolean paramBoolean, Fragment paramFragment1, Fragment paramFragment2) {}
  
  public boolean onPreDraw()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    if (b != null)
    {
      p.a(b, c);
      c.clear();
      a locala = f.a(h, d, e, f);
      p.a(b, d.d, locala, c);
      f.a(h, locala, d);
      f.a(h, d, f, g, e, locala);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.f.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */