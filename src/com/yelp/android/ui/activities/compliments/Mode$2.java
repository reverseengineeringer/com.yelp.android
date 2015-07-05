package com.yelp.android.ui.activities.compliments;

import com.yelp.android.appdata.webrequests.av;
import com.yelp.android.appdata.webrequests.aw;
import com.yelp.android.appdata.webrequests.az;
import com.yelp.android.appdata.webrequests.bb;
import com.yelp.android.appdata.webrequests.bd;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Compliment.ComplimentState;

 enum Mode$2
{
  Mode$2()
  {
    super(paramString, paramInt, null);
  }
  
  public int getLabelForState(Compliment.ComplimentState paramComplimentState)
  {
    switch (f.a[paramComplimentState.ordinal()])
    {
    default: 
      return 0;
    case 1: 
      return 2131165370;
    case 2: 
      return 2131165372;
    }
    return 2131165371;
  }
  
  public av makeActionRequest(m<Compliment> paramm, Compliment paramCompliment)
  {
    return new aw(paramm, paramCompliment);
  }
  
  public az makeLookupRequest(m<bb> paramm, String paramString, int paramInt1, int paramInt2)
  {
    return new bd(paramm);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.Mode.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */