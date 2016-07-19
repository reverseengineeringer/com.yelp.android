package android.support.design.internal;

import android.content.Context;
import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.view.menu.p;
import android.view.MenuItem;

public class c
  extends p
{
  public c(Context paramContext, a parama, h paramh)
  {
    super(paramContext, parama, paramh);
  }
  
  private void t()
  {
    ((f)s()).b(true);
  }
  
  public MenuItem add(int paramInt)
  {
    MenuItem localMenuItem = super.add(paramInt);
    t();
    return localMenuItem;
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    MenuItem localMenuItem = super.add(paramInt1, paramInt2, paramInt3, paramInt4);
    t();
    return localMenuItem;
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    paramCharSequence = super.add(paramInt1, paramInt2, paramInt3, paramCharSequence);
    t();
    return paramCharSequence;
  }
  
  public MenuItem add(CharSequence paramCharSequence)
  {
    paramCharSequence = super.add(paramCharSequence);
    t();
    return paramCharSequence;
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */