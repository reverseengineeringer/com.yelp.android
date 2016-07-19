package com.yelp.android.ck;

import com.yelp.android.ui.activities.settings.ChangeSettings;

public class d
  implements g
{
  private static final Integer a = Integer.valueOf(1);
  private String b;
  
  public void a(ChangeSettings paramChangeSettings, String paramString, int paramInt)
  {
    b = paramString;
    paramString = new d.a(this, paramChangeSettings);
    if (paramInt == a.intValue())
    {
      paramChangeSettings.a(paramString);
      return;
    }
    paramChangeSettings.showLoadingDialog(2131166492);
    paramChangeSettings.a(paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ck.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */