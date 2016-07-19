package com.yelp.android.serializable;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class MediaCategory
  extends _MediaCategory
{
  public static final a<MediaCategory> CREATOR = new MediaCategory.2();
  private ArrayList<Media> f;
  
  public static MediaCategory a(List<Media> paramList)
  {
    MediaCategory localMediaCategory = new MediaCategory();
    c = "all_media";
    e = paramList.size();
    a = new ArrayList();
    b = new ArrayList();
    localMediaCategory.b(paramList);
    return localMediaCategory;
  }
  
  private ArrayList<Media> h()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(a);
    localArrayList.addAll(b);
    Collections.sort(localArrayList, new MediaCategory.1(this));
    return localArrayList;
  }
  
  public ArrayList<Media> a()
  {
    return f;
  }
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    f = h();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    f = h();
  }
  
  public int b()
  {
    return f.size();
  }
  
  public void b(List<Media> paramList)
  {
    HashSet localHashSet1 = new HashSet(a);
    HashSet localHashSet2 = new HashSet(b);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Media localMedia = (Media)paramList.next();
      if ((localMedia instanceof Photo)) {
        localHashSet1.add((Photo)localMedia);
      } else if ((localMedia instanceof Video)) {
        localHashSet2.add((Video)localMedia);
      }
    }
    a = new ArrayList(localHashSet1);
    b = new ArrayList(localHashSet2);
    f = h();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.MediaCategory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */