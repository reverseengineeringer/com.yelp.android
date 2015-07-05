package com.yelp.android.ui.activities.compliments;

import android.widget.Button;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Compliment.ComplimentState;

class e
  implements m<Compliment>
{
  m<Compliment> a;
  Button b;
  Compliment c;
  Mode d;
  
  public e(m<Compliment> paramm, Compliment paramCompliment, Button paramButton, Mode paramMode)
  {
    a = paramm;
    c = paramCompliment;
    b = paramButton;
    d = paramMode;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Compliment paramCompliment)
  {
    if ((Compliment)b.getTag() == paramCompliment)
    {
      paramCompliment.setState(Compliment.ComplimentState.COMMITTED);
      b.setText(d.getLabelForState(paramCompliment.getState()));
      a.onSuccess(paramApiRequest, paramCompliment);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.onError(paramApiRequest, paramYelpException);
    paramApiRequest = (Compliment)b.getTag();
    if (paramApiRequest == c)
    {
      paramApiRequest.setState(Compliment.ComplimentState.ELIGIBLE);
      b.setEnabled(true);
      b.setText(d.getLabelForState(paramApiRequest.getState()));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */