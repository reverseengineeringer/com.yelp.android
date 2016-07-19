package android.support.v7.internal.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import com.yelp.android.e.c;

class q
  extends o
  implements SubMenu
{
  q(Context paramContext, c paramc)
  {
    super(paramContext, paramc);
  }
  
  public c b()
  {
    return (c)b;
  }
  
  public void clearHeader()
  {
    b().clearHeader();
  }
  
  public MenuItem getItem()
  {
    return a(b().getItem());
  }
  
  public SubMenu setHeaderIcon(int paramInt)
  {
    b().setHeaderIcon(paramInt);
    return this;
  }
  
  public SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    b().setHeaderIcon(paramDrawable);
    return this;
  }
  
  public SubMenu setHeaderTitle(int paramInt)
  {
    b().setHeaderTitle(paramInt);
    return this;
  }
  
  public SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    b().setHeaderTitle(paramCharSequence);
    return this;
  }
  
  public SubMenu setHeaderView(View paramView)
  {
    b().setHeaderView(paramView);
    return this;
  }
  
  public SubMenu setIcon(int paramInt)
  {
    b().setIcon(paramInt);
    return this;
  }
  
  public SubMenu setIcon(Drawable paramDrawable)
  {
    b().setIcon(paramDrawable);
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */