package com.yelp.android.ui.activities.talk;

import android.content.Intent;
import com.yelp.android.ui.activities.settings.ChangeSettings;
import com.yelp.android.ui.panels.aa;

class g
  implements aa
{
  g(AllTalkTab paramAllTalkTab) {}
  
  public void m_()
  {
    Intent localIntent = ChangeSettings.a(a.getActivity(), 2130903400, a.getString(2131493990));
    a.startActivityForResult(localIntent, 1052);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */