package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.util.e;
import com.yelp.android.util.g.a;
import com.yelp.android.util.j;
import java.io.File;
import java.io.FileNotFoundException;
import org.apache.http.HttpEntity;

public abstract class TipUploadRequestBase<T>
  extends dq<Float, T>
  implements Parcelable
{
  protected final long g;
  protected g.a h;
  private String i;
  private final File j;
  
  protected TipUploadRequestBase(String paramString, dq.a<Float, T> parama, File paramFile)
    throws FileNotFoundException
  {
    super(ApiRequest.RequestType.POST, paramString, LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, LocationService.AccuracyUnit.MILES, parama);
    if (paramFile != null)
    {
      j = paramFile;
      if (!j.exists()) {
        throw new FileNotFoundException(j.getAbsolutePath());
      }
      g = j.length();
      return;
    }
    j = null;
    g = 0L;
  }
  
  public static File a(Parcel paramParcel)
  {
    String str = paramParcel.readString();
    paramParcel = null;
    if (!TextUtils.isEmpty(str)) {
      paramParcel = new File(str);
    }
    return paramParcel;
  }
  
  protected HttpEntity a()
  {
    if (j != null) {
      return e.a(i, j.getPath(), t());
    }
    return new j(t(), null, null);
  }
  
  public abstract void a(Parcel paramParcel, int paramInt);
  
  protected void e()
  {
    super.e();
    h = new g.a()
    {
      public void a(int paramAnonymousInt)
      {
        e(new Float[] { Float.valueOf(paramAnonymousInt / (float)g) });
      }
    };
  }
  
  public void e(String paramString)
  {
    i = paramString;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    String str = null;
    if (j != null) {
      str = j.getAbsolutePath();
    }
    paramParcel.writeString(str);
    a(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.TipUploadRequestBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */