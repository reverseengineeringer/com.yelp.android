package com.yelp.android.ui.activities.mutatebiz;

import com.yelp.android.appdata.LocaleSettings;
import java.util.TreeSet;

class AddBusiness$3
  implements b.a
{
  AddBusiness$3(AddBusiness paramAddBusiness) {}
  
  public void a()
  {
    a.disableLoading();
    AddBusiness.a(a, a.p);
  }
  
  public void a(String paramString)
  {
    a.disableLoading();
    if (LocaleSettings.a.contains(paramString)) {
      a.p = paramString;
    }
    AddBusiness.a(a, a.p);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.AddBusiness.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */