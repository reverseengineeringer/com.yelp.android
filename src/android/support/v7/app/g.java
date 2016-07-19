package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.internal.widget.p;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.Window;
import android.view.Window.Callback;
import com.yelp.android.r.a;

abstract class g
  extends f
{
  final Context a;
  final Window b;
  final Window.Callback c;
  final Window.Callback d;
  final e e;
  ActionBar f;
  MenuInflater g;
  boolean h;
  boolean i;
  boolean j;
  boolean k;
  boolean l;
  private CharSequence m;
  private boolean n;
  
  g(Context paramContext, Window paramWindow, e parame)
  {
    a = paramContext;
    b = paramWindow;
    e = parame;
    c = b.getCallback();
    if ((c instanceof b)) {
      throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }
    d = a(c);
    b.setCallback(d);
  }
  
  public ActionBar a()
  {
    i();
    return f;
  }
  
  Window.Callback a(Window.Callback paramCallback)
  {
    return new b(paramCallback);
  }
  
  abstract void a(int paramInt, Menu paramMenu);
  
  public final void a(CharSequence paramCharSequence)
  {
    m = paramCharSequence;
    b(paramCharSequence);
  }
  
  abstract boolean a(int paramInt, KeyEvent paramKeyEvent);
  
  abstract boolean a(KeyEvent paramKeyEvent);
  
  public MenuInflater b()
  {
    if (g == null)
    {
      i();
      if (f == null) {
        break label43;
      }
    }
    label43:
    for (Context localContext = f.f();; localContext = a)
    {
      g = new com.yelp.android.p.e(localContext);
      return g;
    }
  }
  
  abstract a b(com.yelp.android.r.a.a parama);
  
  abstract void b(CharSequence paramCharSequence);
  
  abstract boolean b(int paramInt, Menu paramMenu);
  
  public final void f()
  {
    n = true;
  }
  
  public final a.a g()
  {
    return new a(null);
  }
  
  abstract void i();
  
  final ActionBar j()
  {
    return f;
  }
  
  final Context k()
  {
    Context localContext = null;
    Object localObject = a();
    if (localObject != null) {
      localContext = ((ActionBar)localObject).f();
    }
    localObject = localContext;
    if (localContext == null) {
      localObject = a;
    }
    return (Context)localObject;
  }
  
  public boolean l()
  {
    return false;
  }
  
  final boolean m()
  {
    return n;
  }
  
  final Window.Callback n()
  {
    return b.getCallback();
  }
  
  final CharSequence o()
  {
    if ((c instanceof Activity)) {
      return ((Activity)c).getTitle();
    }
    return m;
  }
  
  private class a
    implements a.a
  {
    private a() {}
    
    public Drawable a()
    {
      p localp = p.a(b(), null, new int[] { com.yelp.android.j.a.a.homeAsUpIndicator });
      Drawable localDrawable = localp.a(0);
      localp.b();
      return localDrawable;
    }
    
    public void a(int paramInt)
    {
      ActionBar localActionBar = a();
      if (localActionBar != null) {
        localActionBar.c(paramInt);
      }
    }
    
    public Context b()
    {
      return k();
    }
  }
  
  class b
    extends com.yelp.android.p.g
  {
    b(Window.Callback paramCallback)
    {
      super();
    }
    
    public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
    {
      return (a(paramKeyEvent)) || (super.dispatchKeyEvent(paramKeyEvent));
    }
    
    public boolean dispatchKeyShortcutEvent(KeyEvent paramKeyEvent)
    {
      return (super.dispatchKeyShortcutEvent(paramKeyEvent)) || (a(paramKeyEvent.getKeyCode(), paramKeyEvent));
    }
    
    public void onContentChanged() {}
    
    public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
    {
      if ((paramInt == 0) && (!(paramMenu instanceof android.support.v7.internal.view.menu.f))) {
        return false;
      }
      return super.onCreatePanelMenu(paramInt, paramMenu);
    }
    
    public boolean onMenuOpened(int paramInt, Menu paramMenu)
    {
      return (super.onMenuOpened(paramInt, paramMenu)) || (b(paramInt, paramMenu));
    }
    
    public void onPanelClosed(int paramInt, Menu paramMenu)
    {
      super.onPanelClosed(paramInt, paramMenu);
      a(paramInt, paramMenu);
    }
    
    public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
    {
      android.support.v7.internal.view.menu.f localf;
      boolean bool1;
      if ((paramMenu instanceof android.support.v7.internal.view.menu.f))
      {
        localf = (android.support.v7.internal.view.menu.f)paramMenu;
        if ((paramInt != 0) || (localf != null)) {
          break label34;
        }
        bool1 = false;
      }
      label34:
      boolean bool2;
      do
      {
        return bool1;
        localf = null;
        break;
        if (localf != null) {
          localf.c(true);
        }
        bool2 = super.onPreparePanel(paramInt, paramView, paramMenu);
        bool1 = bool2;
      } while (localf == null);
      localf.c(false);
      return bool2;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */