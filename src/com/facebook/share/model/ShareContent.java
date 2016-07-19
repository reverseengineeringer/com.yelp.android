package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class ShareContent<P extends ShareContent, E>
  implements ShareModel
{
  private final Uri a;
  private final List<String> b;
  private final String c;
  private final String d;
  
  ShareContent(Parcel paramParcel)
  {
    a = ((Uri)paramParcel.readParcelable(Uri.class.getClassLoader()));
    b = a(paramParcel);
    c = paramParcel.readString();
    d = paramParcel.readString();
  }
  
  private List<String> a(Parcel paramParcel)
  {
    ArrayList localArrayList = new ArrayList();
    paramParcel.readStringList(localArrayList);
    if (localArrayList.size() == 0) {
      return null;
    }
    return Collections.unmodifiableList(localArrayList);
  }
  
  public Uri a()
  {
    return a;
  }
  
  public List<String> b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeStringList(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */