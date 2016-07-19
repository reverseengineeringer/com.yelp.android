package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.android.ui.activities.reviews.ReviewState;

public class ReviewBroadcast
  extends Review
{
  public static final a<ReviewBroadcast> CREATOR = new ReviewBroadcast.1();
  private String d;
  private String e;
  private boolean f = false;
  
  public void a(int paramInt)
  {
    c = paramInt;
  }
  
  public void a(Parcel paramParcel)
  {
    boolean bool = true;
    super.a(paramParcel);
    d = paramParcel.readString();
    e = paramParcel.readString();
    if (paramParcel.readByte() == 1) {}
    for (;;)
    {
      f = bool;
      return;
      bool = false;
    }
  }
  
  public void a(ReviewState paramReviewState)
  {
    e = paramReviewState.getDescription();
  }
  
  public void a(String paramString)
  {
    d = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public void b(String paramString)
  {
    b = paramString;
  }
  
  public void c(String paramString)
  {
    a = paramString;
  }
  
  public String d()
  {
    return d;
  }
  
  public ReviewState e()
  {
    return ReviewState.fromDescription(e);
  }
  
  public boolean f()
  {
    return f;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    if (f) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ReviewBroadcast
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */