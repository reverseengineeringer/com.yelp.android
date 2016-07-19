package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.User;
import java.util.ArrayList;
import java.util.Map;

public final class cc$a
{
  final ArrayList<User> a;
  final int b;
  final Map<String, String> c;
  
  public cc$a(Map<String, String> paramMap, ArrayList<User> paramArrayList, int paramInt)
  {
    c = paramMap;
    a = paramArrayList;
    b = paramInt;
  }
  
  public ArrayList<User> a()
  {
    return a;
  }
  
  public Map<String, String> b()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cc.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */