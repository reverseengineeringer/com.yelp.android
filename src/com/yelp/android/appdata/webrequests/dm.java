package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Video;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONObject;

public class dm
{
  private final ArrayList<Photo> a;
  private final ArrayList<Video> b;
  private final ArrayList<Media> c;
  private final int d;
  private final int e;
  
  public dm(ArrayList<Photo> paramArrayList, ArrayList<Video> paramArrayList1, ArrayList<Media> paramArrayList2, int paramInt1, int paramInt2)
  {
    a = paramArrayList;
    b = paramArrayList1;
    c = paramArrayList2;
    d = paramInt1;
    e = paramInt2;
  }
  
  public static dm a(JSONObject paramJSONObject, int paramInt)
  {
    ArrayList localArrayList1 = new ArrayList();
    if (paramJSONObject.has("photos")) {
      localArrayList1 = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("photos"), Photo.CREATOR);
    }
    ArrayList localArrayList2 = new ArrayList();
    if (paramJSONObject.has("videos")) {
      localArrayList2 = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("videos"), Video.CREATOR);
    }
    int i = paramJSONObject.optInt("total", localArrayList1.size() + paramInt + localArrayList2.size());
    paramInt = paramJSONObject.optInt("offset", paramInt);
    return new dm(localArrayList1, localArrayList2, a(localArrayList1, localArrayList2), i, paramInt);
  }
  
  private static ArrayList<Media> a(ArrayList<Photo> paramArrayList, ArrayList<Video> paramArrayList1)
  {
    ArrayList localArrayList = new ArrayList();
    int k = 0;
    int j = 0;
    if (localArrayList.size() < paramArrayList.size() + paramArrayList1.size())
    {
      int i;
      if (j == paramArrayList.size())
      {
        i = 0;
        label41:
        if (i == 0) {
          break label119;
        }
        localArrayList.add(paramArrayList.get(j));
        i = k;
        j += 1;
      }
      for (;;)
      {
        k = i;
        break;
        if (k == paramArrayList1.size())
        {
          i = 1;
          break label41;
        }
        if (((Photo)paramArrayList.get(j)).getIndex() < ((Video)paramArrayList1.get(k)).getIndex())
        {
          i = 1;
          break label41;
        }
        i = 0;
        break label41;
        label119:
        localArrayList.add(paramArrayList1.get(k));
        i = k + 1;
      }
    }
    return localArrayList;
  }
  
  public ArrayList<Photo> a()
  {
    return a;
  }
  
  public ArrayList<Video> b()
  {
    return b;
  }
  
  public ArrayList<Media> c()
  {
    return c;
  }
  
  public int d()
  {
    return d;
  }
  
  public int e()
  {
    return e;
  }
  
  public int f()
  {
    return c.size();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */