package com.yelp.android.appdata.experiment;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.l;
import java.util.Map;

public class h
  implements i
{
  public static h a = new h("ExperimentsSelected");
  public static h b = new h("Experiment");
  public static h c = new h("local_experiment");
  public static h d = new h("Features");
  private final String e;
  private SharedPreferences f;
  
  public h(String paramString)
  {
    e = paramString;
  }
  
  private SharedPreferences a()
  {
    if (f == null) {
      f = BaseYelpApplication.K().getSharedPreferences(e, 0);
    }
    return f;
  }
  
  private SharedPreferences.Editor b()
  {
    return a().edit();
  }
  
  public String a(String paramString)
  {
    return a().getString(paramString, null);
  }
  
  public void a(String paramString1, String paramString2)
  {
    a().edit().putString(paramString1, paramString2).apply();
  }
  
  public void a(Map<String, String> paramMap)
  {
    new l(e, paramMap).b(new Context[] { BaseYelpApplication.K() });
  }
  
  public void b(String paramString)
  {
    b().remove(paramString).apply();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.experiment.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */