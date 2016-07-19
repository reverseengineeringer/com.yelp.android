package com.yelp.android.p;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.v7.internal.view.menu.n;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.yelp.android.e.b;
import com.yelp.android.g.i;
import com.yelp.android.r.a.a;
import java.util.ArrayList;

@TargetApi(11)
public class d
  extends ActionMode
{
  final Context a;
  final com.yelp.android.r.a b;
  
  public d(Context paramContext, com.yelp.android.r.a parama)
  {
    a = paramContext;
    b = parama;
  }
  
  public void finish()
  {
    b.c();
  }
  
  public View getCustomView()
  {
    return b.i();
  }
  
  public Menu getMenu()
  {
    return n.a(a, (com.yelp.android.e.a)b.b());
  }
  
  public MenuInflater getMenuInflater()
  {
    return b.a();
  }
  
  public CharSequence getSubtitle()
  {
    return b.g();
  }
  
  public Object getTag()
  {
    return b.j();
  }
  
  public CharSequence getTitle()
  {
    return b.f();
  }
  
  public boolean getTitleOptionalHint()
  {
    return b.k();
  }
  
  public void invalidate()
  {
    b.d();
  }
  
  public boolean isTitleOptional()
  {
    return b.h();
  }
  
  public void setCustomView(View paramView)
  {
    b.a(paramView);
  }
  
  public void setSubtitle(int paramInt)
  {
    b.b(paramInt);
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    b.a(paramCharSequence);
  }
  
  public void setTag(Object paramObject)
  {
    b.a(paramObject);
  }
  
  public void setTitle(int paramInt)
  {
    b.a(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    b.b(paramCharSequence);
  }
  
  public void setTitleOptionalHint(boolean paramBoolean)
  {
    b.a(paramBoolean);
  }
  
  public static class a
    implements a.a
  {
    final ActionMode.Callback a;
    final Context b;
    final ArrayList<d> c;
    final i<Menu, Menu> d;
    
    public a(Context paramContext, ActionMode.Callback paramCallback)
    {
      b = paramContext;
      a = paramCallback;
      c = new ArrayList();
      d = new i();
    }
    
    private Menu a(Menu paramMenu)
    {
      Menu localMenu2 = (Menu)d.get(paramMenu);
      Menu localMenu1 = localMenu2;
      if (localMenu2 == null)
      {
        localMenu1 = n.a(b, (com.yelp.android.e.a)paramMenu);
        d.put(paramMenu, localMenu1);
      }
      return localMenu1;
    }
    
    public void a(com.yelp.android.r.a parama)
    {
      a.onDestroyActionMode(b(parama));
    }
    
    public boolean a(com.yelp.android.r.a parama, Menu paramMenu)
    {
      return a.onCreateActionMode(b(parama), a(paramMenu));
    }
    
    public boolean a(com.yelp.android.r.a parama, MenuItem paramMenuItem)
    {
      return a.onActionItemClicked(b(parama), n.a(b, (b)paramMenuItem));
    }
    
    public ActionMode b(com.yelp.android.r.a parama)
    {
      int j = c.size();
      int i = 0;
      while (i < j)
      {
        d locald = (d)c.get(i);
        if ((locald != null) && (b == parama)) {
          return locald;
        }
        i += 1;
      }
      parama = new d(b, parama);
      c.add(parama);
      return parama;
    }
    
    public boolean b(com.yelp.android.r.a parama, Menu paramMenu)
    {
      return a.onPrepareActionMode(b(parama), a(paramMenu));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.p.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */