package com.yelp.android.e;

import android.support.v4.view.d;
import android.support.v4.view.q.e;
import android.view.MenuItem;
import android.view.View;

public abstract interface b
  extends MenuItem
{
  public abstract d a();
  
  public abstract b a(d paramd);
  
  public abstract b a(q.e parame);
  
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
 * Qualified Name:     com.yelp.android.e.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */