package android.support.v7.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.DrawerLayout.f;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.k.c;

public class a
  implements DrawerLayout.f
{
  private final a a;
  private final DrawerLayout b;
  private d c;
  private Drawable d;
  private boolean e = true;
  private final int f;
  private final int g;
  private View.OnClickListener h;
  private boolean i = false;
  
  public a(Activity paramActivity, DrawerLayout paramDrawerLayout, Toolbar paramToolbar, int paramInt1, int paramInt2)
  {
    this(paramActivity, paramToolbar, paramDrawerLayout, null, paramInt1, paramInt2);
  }
  
  <T extends Drawable,  extends d> a(Activity paramActivity, Toolbar paramToolbar, DrawerLayout paramDrawerLayout, T paramT, int paramInt1, int paramInt2)
  {
    if (paramToolbar != null)
    {
      a = new h(paramToolbar);
      paramToolbar.setNavigationOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (a.a(a.this)) {
            a.b(a.this);
          }
          while (a.c(a.this) == null) {
            return;
          }
          a.c(a.this).onClick(paramAnonymousView);
        }
      });
      b = paramDrawerLayout;
      f = paramInt1;
      g = paramInt2;
      if (paramT != null) {
        break label180;
      }
    }
    label180:
    for (c = new c(paramActivity, a.b());; c = ((d)paramT))
    {
      d = a();
      return;
      if ((paramActivity instanceof b))
      {
        a = ((b)paramActivity).getDrawerToggleDelegate();
        break;
      }
      if (Build.VERSION.SDK_INT >= 18)
      {
        a = new g(paramActivity, null);
        break;
      }
      if (Build.VERSION.SDK_INT >= 11)
      {
        a = new f(paramActivity, null);
        break;
      }
      a = new e(paramActivity);
      break;
    }
  }
  
  private void b()
  {
    if (b.f(8388611))
    {
      b.e(8388611);
      return;
    }
    b.d(8388611);
  }
  
  Drawable a()
  {
    return a.a();
  }
  
  public void a(int paramInt) {}
  
  public void a(View paramView)
  {
    c.a(1.0F);
    if (e) {
      b(g);
    }
  }
  
  public void a(View paramView, float paramFloat)
  {
    c.a(Math.min(1.0F, Math.max(0.0F, paramFloat)));
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
  
  void b(int paramInt)
  {
    a.a(paramInt);
  }
  
  public void b(View paramView)
  {
    c.a(0.0F);
    if (e) {
      b(f);
    }
  }
  
  public static abstract interface a
  {
    public abstract Drawable a();
    
    public abstract void a(int paramInt);
    
    public abstract Context b();
  }
  
  public static abstract interface b
  {
    public abstract a.a getDrawerToggleDelegate();
  }
  
  static class c
    extends c
    implements a.d
  {
    private final Activity a;
    
    public c(Activity paramActivity, Context paramContext)
    {
      super();
      a = paramActivity;
    }
    
    public void a(float paramFloat)
    {
      if (paramFloat == 1.0F) {
        b(true);
      }
      for (;;)
      {
        d(paramFloat);
        return;
        if (paramFloat == 0.0F) {
          b(false);
        }
      }
    }
  }
  
  static abstract interface d
  {
    public abstract void a(float paramFloat);
  }
  
  static class e
    implements a.a
  {
    final Activity a;
    
    e(Activity paramActivity)
    {
      a = paramActivity;
    }
    
    public Drawable a()
    {
      return null;
    }
    
    public void a(int paramInt) {}
    
    public Context b()
    {
      return a;
    }
  }
  
  private static class f
    implements a.a
  {
    final Activity a;
    b.a b;
    
    private f(Activity paramActivity)
    {
      a = paramActivity;
    }
    
    public Drawable a()
    {
      return b.a(a);
    }
    
    public void a(int paramInt)
    {
      b = b.a(b, a, paramInt);
    }
    
    public Context b()
    {
      ActionBar localActionBar = a.getActionBar();
      if (localActionBar != null) {
        return localActionBar.getThemedContext();
      }
      return a;
    }
  }
  
  private static class g
    implements a.a
  {
    final Activity a;
    
    private g(Activity paramActivity)
    {
      a = paramActivity;
    }
    
    public Drawable a()
    {
      TypedArray localTypedArray = b().obtainStyledAttributes(null, new int[] { 16843531 }, 16843470, 0);
      Drawable localDrawable = localTypedArray.getDrawable(0);
      localTypedArray.recycle();
      return localDrawable;
    }
    
    public void a(int paramInt)
    {
      ActionBar localActionBar = a.getActionBar();
      if (localActionBar != null) {
        localActionBar.setHomeActionContentDescription(paramInt);
      }
    }
    
    public Context b()
    {
      ActionBar localActionBar = a.getActionBar();
      if (localActionBar != null) {
        return localActionBar.getThemedContext();
      }
      return a;
    }
  }
  
  static class h
    implements a.a
  {
    final Toolbar a;
    final Drawable b;
    final CharSequence c;
    
    h(Toolbar paramToolbar)
    {
      a = paramToolbar;
      b = paramToolbar.getNavigationIcon();
      c = paramToolbar.getNavigationContentDescription();
    }
    
    public Drawable a()
    {
      return b;
    }
    
    public void a(int paramInt)
    {
      if (paramInt == 0)
      {
        a.setNavigationContentDescription(c);
        return;
      }
      a.setNavigationContentDescription(paramInt);
    }
    
    public Context b()
    {
      return a.getContext();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */