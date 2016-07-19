package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.serializable.SurveyQuestion;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import java.util.ArrayList;

public class dz$a
{
  private final YelpBusiness a;
  private final String b;
  private final String c;
  private final boolean d;
  private final YelpBusinessReview e;
  private final ArrayList<SurveyQuestion> f;
  private final ArrayList<ReviewSuggestion> g;
  
  public dz$a(YelpBusiness paramYelpBusiness, String paramString1, boolean paramBoolean, String paramString2, YelpBusinessReview paramYelpBusinessReview, ArrayList<SurveyQuestion> paramArrayList, ArrayList<ReviewSuggestion> paramArrayList1)
  {
    a = paramYelpBusiness;
    b = paramString1;
    c = paramString2;
    d = paramBoolean;
    e = paramYelpBusinessReview;
    f = paramArrayList;
    g = paramArrayList1;
  }
  
  public YelpBusiness a()
  {
    return a;
  }
  
  public ArrayList<SurveyQuestion> b()
  {
    return f;
  }
  
  public ArrayList<ReviewSuggestion> c()
  {
    return g;
  }
  
  public String d()
  {
    return b;
  }
  
  public String e()
  {
    return c;
  }
  
  public boolean f()
  {
    return d;
  }
  
  public YelpBusinessReview g()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */