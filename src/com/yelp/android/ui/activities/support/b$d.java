package com.yelp.android.ui.activities.support;

import android.content.res.Resources.Theme;
import com.yelp.android.analytics.a;

public abstract interface b$d
  extends a
{
  public abstract Resources.Theme getSuperTheme();
  
  public abstract void onYesNoDialogSelection(boolean paramBoolean, int paramInt);
  
  public abstract void setSuperTheme(int paramInt);
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */