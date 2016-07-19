package com.yelp.android.serializable;

import android.os.Parcelable;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Feedback
  extends _Feedback
  implements Parcelable
{
  public static JsonParser.DualCreator<Feedback> CREATOR = new Feedback.1();
  
  public Feedback()
  {
    super(Collections.emptyList(), 0);
  }
  
  public Feedback(List<String> paramList, int paramInt)
  {
    super(paramList, paramInt);
  }
  
  public void a()
  {
    a(b + 1);
  }
  
  public void a(int paramInt)
  {
    a = new ArrayList();
    if (b < paramInt) {
      a.add("POSITIVE");
    }
    for (;;)
    {
      b = paramInt;
      return;
      a.add("NONE");
    }
  }
  
  public void b()
  {
    a(b - 1);
  }
  
  public boolean c()
  {
    return (AppData.b().q().b()) && (a.contains("POSITIVE"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Feedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */