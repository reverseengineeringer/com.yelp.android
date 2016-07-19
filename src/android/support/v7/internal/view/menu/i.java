package android.support.v7.internal.view.menu;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.support.v4.view.q.e;
import android.util.Log;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.reflect.Method;

@TargetApi(14)
public class i
  extends c<com.yelp.android.e.b>
  implements MenuItem
{
  private Method c;
  
  i(Context paramContext, com.yelp.android.e.b paramb)
  {
    super(paramContext, paramb);
  }
  
  a a(ActionProvider paramActionProvider)
  {
    return new a(a, paramActionProvider);
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      if (c == null) {
        c = ((com.yelp.android.e.b)b).getClass().getDeclaredMethod("setExclusiveCheckable", new Class[] { Boolean.TYPE });
      }
      c.invoke(b, new Object[] { Boolean.valueOf(paramBoolean) });
      return;
    }
    catch (Exception localException)
    {
      Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", localException);
    }
  }
  
  public boolean collapseActionView()
  {
    return ((com.yelp.android.e.b)b).collapseActionView();
  }
  
  public boolean expandActionView()
  {
    return ((com.yelp.android.e.b)b).expandActionView();
  }
  
  public ActionProvider getActionProvider()
  {
    android.support.v4.view.d locald = ((com.yelp.android.e.b)b).a();
    if ((locald instanceof a)) {
      return a;
    }
    return null;
  }
  
  public View getActionView()
  {
    View localView2 = ((com.yelp.android.e.b)b).getActionView();
    View localView1 = localView2;
    if ((localView2 instanceof b)) {
      localView1 = ((b)localView2).c();
    }
    return localView1;
  }
  
  public char getAlphabeticShortcut()
  {
    return ((com.yelp.android.e.b)b).getAlphabeticShortcut();
  }
  
  public int getGroupId()
  {
    return ((com.yelp.android.e.b)b).getGroupId();
  }
  
  public Drawable getIcon()
  {
    return ((com.yelp.android.e.b)b).getIcon();
  }
  
  public Intent getIntent()
  {
    return ((com.yelp.android.e.b)b).getIntent();
  }
  
  public int getItemId()
  {
    return ((com.yelp.android.e.b)b).getItemId();
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return ((com.yelp.android.e.b)b).getMenuInfo();
  }
  
  public char getNumericShortcut()
  {
    return ((com.yelp.android.e.b)b).getNumericShortcut();
  }
  
  public int getOrder()
  {
    return ((com.yelp.android.e.b)b).getOrder();
  }
  
  public SubMenu getSubMenu()
  {
    return a(((com.yelp.android.e.b)b).getSubMenu());
  }
  
  public CharSequence getTitle()
  {
    return ((com.yelp.android.e.b)b).getTitle();
  }
  
  public CharSequence getTitleCondensed()
  {
    return ((com.yelp.android.e.b)b).getTitleCondensed();
  }
  
  public boolean hasSubMenu()
  {
    return ((com.yelp.android.e.b)b).hasSubMenu();
  }
  
  public boolean isActionViewExpanded()
  {
    return ((com.yelp.android.e.b)b).isActionViewExpanded();
  }
  
  public boolean isCheckable()
  {
    return ((com.yelp.android.e.b)b).isCheckable();
  }
  
  public boolean isChecked()
  {
    return ((com.yelp.android.e.b)b).isChecked();
  }
  
  public boolean isEnabled()
  {
    return ((com.yelp.android.e.b)b).isEnabled();
  }
  
  public boolean isVisible()
  {
    return ((com.yelp.android.e.b)b).isVisible();
  }
  
  public MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    com.yelp.android.e.b localb = (com.yelp.android.e.b)b;
    if (paramActionProvider != null) {}
    for (paramActionProvider = a(paramActionProvider);; paramActionProvider = null)
    {
      localb.a(paramActionProvider);
      return this;
    }
  }
  
  public MenuItem setActionView(int paramInt)
  {
    ((com.yelp.android.e.b)b).setActionView(paramInt);
    View localView = ((com.yelp.android.e.b)b).getActionView();
    if ((localView instanceof CollapsibleActionView)) {
      ((com.yelp.android.e.b)b).setActionView(new b(localView));
    }
    return this;
  }
  
  public MenuItem setActionView(View paramView)
  {
    Object localObject = paramView;
    if ((paramView instanceof CollapsibleActionView)) {
      localObject = new b(paramView);
    }
    ((com.yelp.android.e.b)b).setActionView((View)localObject);
    return this;
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    ((com.yelp.android.e.b)b).setAlphabeticShortcut(paramChar);
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean)
  {
    ((com.yelp.android.e.b)b).setCheckable(paramBoolean);
    return this;
  }
  
  public MenuItem setChecked(boolean paramBoolean)
  {
    ((com.yelp.android.e.b)b).setChecked(paramBoolean);
    return this;
  }
  
  public MenuItem setEnabled(boolean paramBoolean)
  {
    ((com.yelp.android.e.b)b).setEnabled(paramBoolean);
    return this;
  }
  
  public MenuItem setIcon(int paramInt)
  {
    ((com.yelp.android.e.b)b).setIcon(paramInt);
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable)
  {
    ((com.yelp.android.e.b)b).setIcon(paramDrawable);
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent)
  {
    ((com.yelp.android.e.b)b).setIntent(paramIntent);
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar)
  {
    ((com.yelp.android.e.b)b).setNumericShortcut(paramChar);
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    com.yelp.android.e.b localb = (com.yelp.android.e.b)b;
    if (paramOnActionExpandListener != null) {}
    for (paramOnActionExpandListener = new c(paramOnActionExpandListener);; paramOnActionExpandListener = null)
    {
      localb.a(paramOnActionExpandListener);
      return this;
    }
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    com.yelp.android.e.b localb = (com.yelp.android.e.b)b;
    if (paramOnMenuItemClickListener != null) {}
    for (paramOnMenuItemClickListener = new d(paramOnMenuItemClickListener);; paramOnMenuItemClickListener = null)
    {
      localb.setOnMenuItemClickListener(paramOnMenuItemClickListener);
      return this;
    }
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    ((com.yelp.android.e.b)b).setShortcut(paramChar1, paramChar2);
    return this;
  }
  
  public void setShowAsAction(int paramInt)
  {
    ((com.yelp.android.e.b)b).setShowAsAction(paramInt);
  }
  
  public MenuItem setShowAsActionFlags(int paramInt)
  {
    ((com.yelp.android.e.b)b).setShowAsActionFlags(paramInt);
    return this;
  }
  
  public MenuItem setTitle(int paramInt)
  {
    ((com.yelp.android.e.b)b).setTitle(paramInt);
    return this;
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    ((com.yelp.android.e.b)b).setTitle(paramCharSequence);
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    ((com.yelp.android.e.b)b).setTitleCondensed(paramCharSequence);
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean)
  {
    return ((com.yelp.android.e.b)b).setVisible(paramBoolean);
  }
  
  class a
    extends android.support.v4.view.d
  {
    final ActionProvider a;
    
    public a(Context paramContext, ActionProvider paramActionProvider)
    {
      super();
      a = paramActionProvider;
    }
    
    public View a()
    {
      return a.onCreateActionView();
    }
    
    public void a(SubMenu paramSubMenu)
    {
      a.onPrepareSubMenu(a(paramSubMenu));
    }
    
    public boolean d()
    {
      return a.onPerformDefaultAction();
    }
    
    public boolean e()
    {
      return a.hasSubMenu();
    }
  }
  
  static class b
    extends FrameLayout
    implements com.yelp.android.r.b
  {
    final CollapsibleActionView a;
    
    b(View paramView)
    {
      super();
      a = ((CollapsibleActionView)paramView);
      addView(paramView);
    }
    
    public void a()
    {
      a.onActionViewExpanded();
    }
    
    public void b()
    {
      a.onActionViewCollapsed();
    }
    
    View c()
    {
      return (View)a;
    }
  }
  
  private class c
    extends d<MenuItem.OnActionExpandListener>
    implements q.e
  {
    c(MenuItem.OnActionExpandListener paramOnActionExpandListener)
    {
      super();
    }
    
    public boolean a(MenuItem paramMenuItem)
    {
      return ((MenuItem.OnActionExpandListener)b).onMenuItemActionExpand(a(paramMenuItem));
    }
    
    public boolean b(MenuItem paramMenuItem)
    {
      return ((MenuItem.OnActionExpandListener)b).onMenuItemActionCollapse(a(paramMenuItem));
    }
  }
  
  private class d
    extends d<MenuItem.OnMenuItemClickListener>
    implements MenuItem.OnMenuItemClickListener
  {
    d(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
    {
      super();
    }
    
    public boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      return ((MenuItem.OnMenuItemClickListener)b).onMenuItemClick(a(paramMenuItem));
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */