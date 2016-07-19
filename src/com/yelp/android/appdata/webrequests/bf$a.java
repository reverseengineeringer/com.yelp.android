package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.PlatformDisambiguatedAddress;
import java.util.ArrayList;
import java.util.List;

public class bf$a
{
  private final boolean a;
  private final ArrayList<PlatformDisambiguatedAddress> b;
  
  public bf$a(boolean paramBoolean, List<PlatformDisambiguatedAddress> paramList)
  {
    a = paramBoolean;
    b = new ArrayList(paramList);
  }
  
  public boolean a()
  {
    return a;
  }
  
  public ArrayList<PlatformDisambiguatedAddress> b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bf.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */