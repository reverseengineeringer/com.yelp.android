package com.yelp.android.l;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.v7.internal.view.menu.ab;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;

@TargetApi(11)
public class c
  extends ActionMode
{
  final Context a;
  final com.yelp.android.m.a b;
  
  public c(Context paramContext, com.yelp.android.m.a parama)
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
    return ab.a(a, (com.yelp.android.b.a)b.b());
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
}

/* Location:
 * Qualified Name:     com.yelp.android.l.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */