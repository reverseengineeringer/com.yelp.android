package com.yelp.android.appdata.experiment;

import android.content.Context;
import android.content.SharedPreferences;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ae;
import java.util.Map;

public class e
  implements f
{
  public static e a = new e("Experiment");
  public static e b = new e("local_experiment");
  public static e c = new e("Features");
  private final String d;
  
  public e(String paramString)
  {
    d = paramString;
  }
  
  private SharedPreferences a()
  {
    return AppData.b().getSharedPreferences(d, 0);
  }
  
  public String a(String paramString)
  {
    return a().getString(paramString, null);
  }
  
  public void a(Map<String, String> paramMap)
  {
    new ae(d, paramMap).b(new Context[] { AppData.b() });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.experiment.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */