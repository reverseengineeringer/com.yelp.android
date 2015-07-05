package com.yelp.android.ui.activities.settings;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.kahuna.sdk.h;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.analytics.j;

public class w
  implements t
{
  public void a(Context paramContext, SharedPreferences.Editor paramEditor, String paramString)
  {
    paramEditor.putBoolean(paramString, h.h());
  }
  
  public boolean a(ChangeSettings paramChangeSettings, String paramString, Object paramObject)
  {
    if (Boolean.valueOf(String.valueOf(paramObject)).booleanValue()) {
      h.f();
    }
    for (;;)
    {
      j.a(KahunaAttributeIri.KahunaEnabled, String.valueOf(h.h()));
      return true;
      h.g();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */