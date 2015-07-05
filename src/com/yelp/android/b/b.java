package com.yelp.android.b;

import android.support.v4.view.ax;
import android.support.v4.view.n;
import android.view.MenuItem;
import android.view.View;

public abstract interface b
  extends MenuItem
{
  public abstract n a();
  
  public abstract b a(ax paramax);
  
  public abstract b a(n paramn);
  
  public abstract boolean collapseActionView();
  
  public abstract boolean expandActionView();
  
  public abstract View getActionView();
  
  public abstract boolean isActionViewExpanded();
  
  public abstract MenuItem setActionView(int paramInt);
  
  public abstract MenuItem setActionView(View paramView);
  
  public abstract void setShowAsAction(int paramInt);
  
  public abstract MenuItem setShowAsActionFlags(int paramInt);
}

/* Location:
 * Qualified Name:     com.yelp.android.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */