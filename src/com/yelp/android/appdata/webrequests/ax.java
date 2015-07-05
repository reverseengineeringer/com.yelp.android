package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.Compliment;

public final class ax
  extends av
{
  public ax(m<Compliment> paramm, Compliment paramCompliment)
  {
    super(paramm, "compliment/delete", paramCompliment);
    addPostParam("thanx_id", paramCompliment.getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */