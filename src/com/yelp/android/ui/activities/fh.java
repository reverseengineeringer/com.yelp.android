package com.yelp.android.ui.activities;

import android.os.Bundle;
import android.util.Pair;
import com.facebook.TokenCachingStrategy;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.i;

class fh
  extends TokenCachingStrategy
{
  public void clear()
  {
    AppData.b().f().x();
  }
  
  public Bundle load()
  {
    Pair localPair = AppData.b().f().t();
    Bundle localBundle = new Bundle();
    localBundle.putString("com.facebook.TokenCachingStrategy.Token", (String)first);
    localBundle.putLong("com.facebook.TokenCachingStrategy.ExpirationDate", ((Long)second).longValue());
    return localBundle;
  }
  
  public void save(Bundle paramBundle)
  {
    AppData.b().f().a(paramBundle.getString("com.facebook.TokenCachingStrategy.Token"), paramBundle.getLong("com.facebook.TokenCachingStrategy.ExpirationDate"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */