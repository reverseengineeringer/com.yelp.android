package com.yelp.android.ui.activities.compliments;

import com.yelp.android.appdata.webrequests.av;
import com.yelp.android.appdata.webrequests.ax;
import com.yelp.android.appdata.webrequests.az;
import com.yelp.android.appdata.webrequests.bb;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Compliment.ComplimentState;

 enum Mode$3
{
  Mode$3()
  {
    super(paramString, paramInt, null);
  }
  
  public int getLabelForState(Compliment.ComplimentState paramComplimentState)
  {
    int i = f.a[paramComplimentState.ordinal()];
    return 2131165686;
  }
  
  public av makeActionRequest(m<Compliment> paramm, Compliment paramCompliment)
  {
    return new ax(paramm, paramCompliment);
  }
  
  public az makeLookupRequest(m<bb> paramm, String paramString, int paramInt1, int paramInt2)
  {
    return APPROVE.makeLookupRequest(paramm, paramString, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.Mode.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */