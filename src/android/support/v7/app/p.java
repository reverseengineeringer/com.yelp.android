package android.support.v7.app;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;

public class p
  implements android.support.v4.widget.t
{
  private final r a;
  private final DrawerLayout b;
  private u c;
  private Drawable d;
  private boolean e = true;
  private final int f;
  private final int g;
  private View.OnClickListener h;
  private boolean i = false;
  
  public p(Activity paramActivity, DrawerLayout paramDrawerLayout, Toolbar paramToolbar, int paramInt1, int paramInt2)
  {
    this(paramActivity, paramToolbar, paramDrawerLayout, null, paramInt1, paramInt2);
  }
  
  <T extends Drawable,  extends u> p(Activity paramActivity, Toolbar paramToolbar, DrawerLayout paramDrawerLayout, T paramT, int paramInt1, int paramInt2)
  {
    if (paramToolbar != null)
    {
      a = new z(paramToolbar);
      paramToolbar.setNavigationOnClickListener(new q(this));
      b = paramDrawerLayout;
      f = paramInt1;
      g = paramInt2;
      if (paramT != null) {
        break label203;
      }
    }
    label203:
    for (c = new t(paramActivity, a.a());; c = ((u)paramT))
    {
      d = a();
      return;
      if ((paramActivity instanceof s))
      {
        a = ((s)paramActivity).a();
        break;
      }
      if ((paramActivity instanceof y))
      {
        a = ((y)paramActivity).getV7DrawerToggleDelegate();
        break;
      }
      if (Build.VERSION.SDK_INT >= 18)
      {
        a = new x(paramActivity, null);
        break;
      }
      if (Build.VERSION.SDK_INT >= 11)
      {
        a = new w(paramActivity, null);
        break;
      }
      a = new v(paramActivity);
      break;
    }
  }
  
  private void b()
  {
    if (b.g(8388611))
    {
      b.e(8388611);
      return;
    }
    b.d(8388611);
  }
  
  Drawable a()
  {
    return a.getThemeUpIndicator();
  }
  
  void a(int paramInt)
  {
    a.setActionBarDescription(paramInt);
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    if ((paramMenuItem != null) && (paramMenuItem.getItemId() == 16908332) && (e))
    {
      b();
      return true;
    }
    return false;
  }
  
  public void onDrawerClosed(View paramView)
  {
    c.a(0.0F);
    if (e) {
      a(f);
    }
  }
  
  public void onDrawerOpened(View paramView)
  {
    c.a(1.0F);
    if (e) {
      a(g);
    }
  }
  
  public void onDrawerSlide(View paramView, float paramFloat)
  {
    c.a(Math.min(1.0F, Math.max(0.0F, paramFloat)));
  }
  
  public void onDrawerStateChanged(int paramInt) {}
}

/* Location:
 * Qualified Name:     android.support.v7.app.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */