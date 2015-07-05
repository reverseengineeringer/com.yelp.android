package com.yelp.android.ui.activities.messaging;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.appdata.webrequests.messaging.i;
import com.yelp.android.appdata.webrequests.messaging.j;
import com.yelp.android.appdata.webrequests.messaging.k;

public class MessageTheBusinessFragment$RequestFragment
  extends Fragment
{
  private k a;
  private i b;
  private MessageTheBusinessFragment c;
  private final m<String> d = new aa(this);
  private final m<j> e = new ab(this);
  
  private void a(String paramString)
  {
    if ((b != null) && (b.isFetching())) {
      return;
    }
    b = new i(e, paramString);
    b.execute(new Void[0]);
  }
  
  private void a(String paramString1, String paramString2)
  {
    if ((a != null) && (a.isFetching())) {
      return;
    }
    a = new k(paramString1, paramString2, d);
    a.execute(new Void[0]);
  }
  
  private boolean a()
  {
    return ((a != null) && (a.isFetching())) || ((b != null) && (b.isFetching()));
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    c = ((MessageTheBusinessFragment)getTargetFragment());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
  }
  
  public void onDetach()
  {
    super.onDetach();
    c = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.MessageTheBusinessFragment.RequestFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */