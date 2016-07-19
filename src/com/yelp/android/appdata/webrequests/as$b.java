package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.Compliment;

public final class as$b
  extends as
{
  public as$b(ApiRequest.b<Compliment> paramb, Compliment paramCompliment)
  {
    super(paramb, "compliment/delete", paramCompliment);
    b("thanx_id", paramCompliment.r());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.as.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */