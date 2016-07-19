package com.yelp.android.appdata.webrequests;

import android.location.Address;
import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.YelpBusiness;
import java.util.Collection;

public class t
  extends y
{
  public t(ApiRequest.b<Pair<String, YelpBusiness>> paramb, CharSequence paramCharSequence, Address paramAddress, boolean paramBoolean)
  {
    super("business/add", paramb);
    d(paramCharSequence);
    a(paramAddress, paramBoolean);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      super.a(paramCharSequence);
    }
  }
  
  protected void a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      super.a(paramString);
    }
  }
  
  public void a(Collection<Category> paramCollection)
  {
    if (!paramCollection.isEmpty()) {
      super.a(paramCollection);
    }
  }
  
  public void b(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      super.b(paramCharSequence);
    }
  }
  
  protected void b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      super.b(paramString);
    }
  }
  
  public void c(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      super.c(paramCharSequence);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */