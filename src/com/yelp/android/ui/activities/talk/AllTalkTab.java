package com.yelp.android.ui.activities.talk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.da;
import com.yelp.android.appdata.webrequests.da.a;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.ui.activities.settings.ChangeSettings;
import com.yelp.android.util.ErrorType;

public class AllTalkTab
  extends TalkTopicList<da.a>
{
  k.b<da.a> a = new AllTalkTab.2(this);
  private View e;
  private TextView f;
  
  protected boolean f()
  {
    Object localObject = getActivity();
    localObject = ChangeSettings.a((Context)localObject, getFragmentManager(), PreferenceManager.getDefaultSharedPreferences((Context)localObject), ((Activity)localObject).getString(2131166981));
    z();
    if (TextUtils.isEmpty((CharSequence)localObject))
    {
      h();
      return false;
    }
    f.setText((CharSequence)localObject);
    b = new da(p(), (String)localObject, a);
    ((da)b).a(new Void[0]);
    return true;
  }
  
  protected ApiRequest.b<da.a> g()
  {
    return a;
  }
  
  public void h()
  {
    a(ErrorType.NO_TALK_LOCATION, new AllTalkTab.1(this));
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    e = getLayoutInflater(paramBundle).inflate(2130903425, m(), false);
    f = ((TextView)e.findViewById(2131690528));
    p_();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt2 != -1) && (paramInt2 != 0))
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    if (paramInt1 == 1061)
    {
      h();
      p_();
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (q() != null) {
      d(e);
    }
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    a("request_all_talk_topics", b);
  }
  
  public void onResume()
  {
    super.onResume();
    b = a("request_all_talk_topics", b, g());
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.AllTalkTab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */