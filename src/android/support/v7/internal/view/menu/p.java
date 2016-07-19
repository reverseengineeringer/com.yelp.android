package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.content.d;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public class p
  extends f
  implements SubMenu
{
  private f d;
  private h e;
  
  public p(Context paramContext, f paramf, h paramh)
  {
    super(paramContext);
    d = paramf;
    e = paramh;
  }
  
  public String a()
  {
    if (e != null) {}
    for (int i = e.getItemId(); i == 0; i = 0) {
      return null;
    }
    return super.a() + ":" + i;
  }
  
  public void a(f.a parama)
  {
    d.a(parama);
  }
  
  boolean a(f paramf, MenuItem paramMenuItem)
  {
    return (super.a(paramf, paramMenuItem)) || (d.a(paramf, paramMenuItem));
  }
  
  public boolean b()
  {
    return d.b();
  }
  
  public boolean c()
  {
    return d.c();
  }
  
  public boolean c(h paramh)
  {
    return d.c(paramh);
  }
  
  public boolean d(h paramh)
  {
    return d.d(paramh);
  }
  
  public MenuItem getItem()
  {
    return e;
  }
  
  public f p()
  {
    return d;
  }
  
  public Menu s()
  {
    return d;
  }
  
  public SubMenu setHeaderIcon(int paramInt)
  {
    super.a(d.a(e(), paramInt));
    return this;
  }
  
  public SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    super.a(paramDrawable);
    return this;
  }
  
  public SubMenu setHeaderTitle(int paramInt)
  {
    super.a(e().getResources().getString(paramInt));
    return this;
  }
  
  public SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    super.a(paramCharSequence);
    return this;
  }
  
  public SubMenu setHeaderView(View paramView)
  {
    super.a(paramView);
    return this;
  }
  
  public SubMenu setIcon(int paramInt)
  {
    e.setIcon(paramInt);
    return this;
  }
  
  public SubMenu setIcon(Drawable paramDrawable)
  {
    e.setIcon(paramDrawable);
    return this;
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    d.setQwertyMode(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */