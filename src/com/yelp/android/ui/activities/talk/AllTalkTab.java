package com.yelp.android.ui.activities.talk;

import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.appdata.webrequests.dw;
import com.yelp.android.appdata.webrequests.dx;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.ui.activities.settings.ChangeSettings;
import com.yelp.android.util.ErrorType;

public class AllTalkTab
  extends TalkTopicList<dx>
{
  j<dx> a = new h(this);
  private View e;
  private TextView g;
  
  protected boolean e()
  {
    String str = ChangeSettings.a(PreferenceManager.getDefaultSharedPreferences(getActivity()), getActivity());
    x();
    if (TextUtils.isEmpty(str))
    {
      g();
      return false;
    }
    g.setText(str);
    b = new dw(p(), str, a);
    ((dw)b).executeWithLocation(new Void[0]);
    return true;
  }
  
  protected m<dx> f()
  {
    return a;
  }
  
  public void g()
  {
    a(ErrorType.NO_TALK_LOCATION, new g(this));
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    e = getLayoutInflater(paramBundle).inflate(2130903326, m(), false);
    g = ((TextView)e.findViewById(2131493704));
    a_();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt2 != -1) && (paramInt2 != 0))
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    if (paramInt1 == 1052)
    {
      g();
      a_();
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (r() != null) {
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
    b = a("request_all_talk_topics", b, f());
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