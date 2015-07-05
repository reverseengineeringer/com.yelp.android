package com.yelp.android.util;

import android.content.Context;
import android.content.Intent;
import java.util.List;
import java.util.Set;

public abstract class ContactsFetcher
{
  public static ContactsFetcher b()
  {
    return e.a();
  }
  
  public abstract Intent a();
  
  public abstract ContactsFetcher.Contact a(Context paramContext, Intent paramIntent);
  
  public abstract String a(Context paramContext, String paramString);
  
  public abstract List<String> a(Context paramContext);
  
  public abstract List<ContactsFetcher.Contact> a(Context paramContext, String paramString, int paramInt);
  
  public abstract List<ContactsFetcher.Contact> a(Context paramContext, Set<String> paramSet);
}

/* Location:
 * Qualified Name:     com.yelp.android.util.ContactsFetcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */