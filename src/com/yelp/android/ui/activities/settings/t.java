package com.yelp.android.ui.activities.settings;

import android.content.Context;
import android.content.SharedPreferences.Editor;

public abstract interface t
{
  public abstract void a(Context paramContext, SharedPreferences.Editor paramEditor, String paramString);
  
  public abstract boolean a(ChangeSettings paramChangeSettings, String paramString, Object paramObject);
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */