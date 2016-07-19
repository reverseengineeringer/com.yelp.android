package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.Compliment;

public final class as$a
  extends as
{
  public as$a(ApiRequest.b<Compliment> paramb, Compliment paramCompliment)
  {
    super(paramb, "compliment/approve", paramCompliment);
    b("thanx_id", paramCompliment.r());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.as.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */