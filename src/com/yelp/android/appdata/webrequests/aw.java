package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.Compliment;

public final class aw
  extends av
{
  public aw(m<Compliment> paramm, Compliment paramCompliment)
  {
    super(paramm, "compliment/approve", paramCompliment);
    addPostParam("thanx_id", paramCompliment.getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */