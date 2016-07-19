package com.yelp.android.serializable;

import android.os.Parcel;
import android.text.TextUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;

public class Video
  extends _Video
  implements IdentifiableMedia
{
  public static final JsonParser.DualCreator<Video> CREATOR = new Video.1();
  private Feedback n = new Feedback();
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    n = ((Feedback)paramParcel.readParcelable(Feedback.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    n = new Feedback(Collections.emptyList(), l);
  }
  
  public void a(boolean paramBoolean)
  {
    k = paramBoolean;
    if (paramBoolean)
    {
      j().a();
      return;
    }
    j().b();
  }
  
  public boolean a(Media.MediaType paramMediaType)
  {
    return Media.MediaType.VIDEO.equals(paramMediaType);
  }
  
  public boolean a(b paramb)
  {
    if (!(paramb instanceof Video)) {}
    do
    {
      return false;
      paramb = (Video)paramb;
    } while ((TextUtils.isEmpty(paramb.a())) || (!paramb.a().equals(c)));
    return true;
  }
  
  public String b()
  {
    if (b != null) {
      return b.p();
    }
    return null;
  }
  
  public Video.Provider c()
  {
    return Video.Provider.access$000(g);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (!(paramObject instanceof Video)) {
          return false;
        }
        paramObject = (Video)paramObject;
        if (!c().equals(((Video)paramObject).c())) {
          return false;
        }
        if (c != null) {
          break;
        }
      } while (c == null);
      return false;
    } while (c.equals(c));
    return false;
  }
  
  public int hashCode()
  {
    if (c == null) {}
    for (int i = 0;; i = c.hashCode()) {
      return i + 31;
    }
  }
  
  public Feedback j()
  {
    return n;
  }
  
  public boolean m()
  {
    return c().equals(Video.Provider.OOYALA);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(n, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Video
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */