package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.Photo;
import com.yelp.android.util.m;
import com.yelp.android.util.n;
import com.yelp.android.util.p;
import com.yelp.android.util.q;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Collections;
import org.apache.http.HttpEntity;

public abstract class PhotoUploadRequestBase<T>
  extends eo<Float, T>
  implements Parcelable
{
  protected HttpEntity mEntity;
  private final File mImageFile;
  private String mImageParamName;
  protected final long mImageSize;
  private Photo mPhoto;
  protected n mProgressListener;
  
  protected PhotoUploadRequestBase(String paramString, ep<Float, T> paramep, File paramFile)
  {
    super(ApiRequest.RequestType.POST, paramString, LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, LocationService.AccuracyUnit.MILES, paramep);
    if (paramFile != null)
    {
      mImageFile = paramFile;
      if (!mImageFile.exists()) {
        throw new FileNotFoundException(mImageFile.getAbsolutePath());
      }
      mImageSize = mImageFile.length();
      return;
    }
    mImageFile = null;
    mImageSize = 0L;
  }
  
  public static File readFromParcel(Parcel paramParcel)
  {
    String str = paramParcel.readString();
    paramParcel = null;
    if (!TextUtils.isEmpty(str)) {
      paramParcel = new File(str);
    }
    return paramParcel;
  }
  
  public File getFile()
  {
    return mImageFile;
  }
  
  protected HttpEntity getPostEntity()
  {
    return mEntity;
  }
  
  public Photo getUploadedPhoto()
  {
    return mPhoto;
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    mProgressListener = new eb(this);
    setupEntity();
  }
  
  public void setImageParamName(String paramString)
  {
    mImageParamName = paramString;
  }
  
  protected void setUploadedPhoto(Photo paramPhoto)
  {
    mPhoto = paramPhoto;
  }
  
  public void setupEntity()
  {
    if (mImageFile != null) {
      try
      {
        if (mImageParamName == null) {}
        for (Object localObject = m.i;; localObject = mImageParamName.getBytes())
        {
          localObject = new q((byte[])localObject, (byte[])localObject, null, new FileInputStream(mImageFile), mImageSize);
          mEntity = new p(getPostParameters(), Collections.singleton(localObject), mProgressListener);
          return;
        }
        mEntity = new p(getPostParameters(), null, mProgressListener);
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        throw new RuntimeException(localFileNotFoundException);
      }
    }
  }
  
  public abstract void writeMoreToParcel(Parcel paramParcel, int paramInt);
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    String str = null;
    if (mImageFile != null) {
      str = mImageFile.getAbsolutePath();
    }
    paramParcel.writeString(str);
    writeMoreToParcel(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.PhotoUploadRequestBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */