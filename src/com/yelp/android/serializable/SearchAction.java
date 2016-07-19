package com.yelp.android.serializable;

import android.app.Activity;
import android.os.Parcelable;
import com.yelp.android.ui.activities.businesspage.b;

public abstract interface SearchAction
  extends Parcelable
{
  public abstract BusinessSearchResult.SearchActionType a();
  
  public abstract void a(Activity paramActivity, BusinessSearchResult paramBusinessSearchResult, String paramString);
  
  public abstract boolean b();
  
  public abstract String c();
  
  public abstract int[] e();
  
  public abstract int[] f();
  
  public abstract int[] g();
  
  public abstract int[] h();
  
  public abstract int[] i();
  
  public abstract int[] j();
  
  public abstract String l();
  
  public abstract b n();
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.SearchAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */