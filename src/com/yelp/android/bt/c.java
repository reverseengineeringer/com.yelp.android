package com.yelp.android.bt;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.e.a;
import com.yelp.android.appdata.webrequests.em;
import com.yelp.android.appdata.webrequests.fa;
import com.yelp.android.appdata.webrequests.fo;
import com.yelp.android.appdata.webrequests.fp;
import com.yelp.android.serializable.Badge;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusinessReview;
import java.util.List;
import rx.a.a;

public class c
  implements b
{
  private <Result> rx.a<Result> a(final ApiRequest<?, ?, Result> paramApiRequest)
  {
    rx.a.a(new a.a()
    {
      public void a(rx.e<? super Result> paramAnonymouse)
      {
        try
        {
          paramAnonymouse.a(paramApiRequest.i());
          paramAnonymouse.a();
          return;
        }
        catch (YelpException localYelpException)
        {
          for (;;)
          {
            paramAnonymouse.a(localYelpException);
          }
        }
      }
    });
  }
  
  public rx.a<e.a> a()
  {
    return a(new com.yelp.android.appdata.webrequests.e());
  }
  
  public rx.a<List<YelpBusinessReview>> a(User paramUser, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return a(new fo(null, paramUser, paramInt1, paramInt2, paramBoolean));
  }
  
  public rx.a<List<Tip>> a(User paramUser, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(new fp(null, paramUser, paramInt1, paramInt2, paramBoolean1, paramBoolean2));
  }
  
  public rx.a<List<Badge>> a(String paramString)
  {
    return a(new fa(paramString));
  }
  
  public rx.a<Void> a(String paramString, boolean paramBoolean)
  {
    return a(new em(paramString, paramBoolean, null));
  }
  
  public rx.a<Void> b(String paramString)
  {
    return a(new com.yelp.android.appdata.webrequests.a(paramString));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bt.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */