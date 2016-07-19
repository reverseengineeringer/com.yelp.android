package com.yelp.android.services;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable.Creator;
import com.yelp.android.analytics.g.a;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.Photo;

public class PhotoShareFormatter
  extends ShareFormatter<Photo>
{
  public static final Parcelable.Creator<PhotoShareFormatter> CREATOR = new PhotoShareFormatter.1();
  
  public PhotoShareFormatter(Photo paramPhoto)
  {
    super(paramPhoto);
  }
  
  protected Uri a()
  {
    return Uri.parse(((Photo)c()).l());
  }
  
  public String a(Context paramContext)
  {
    return paramContext.getString(2131165623);
  }
  
  public void a(Context paramContext, e.a parama, Intent paramIntent)
  {
    super.a(paramContext, parama, paramIntent);
    if (parama.e()) {
      paramIntent.putExtra("android.intent.extra.SUBJECT", paramContext.getString(2131165417));
    }
  }
  
  public g.a b()
  {
    return new g.a().a(EventIri.BusinessPhotoShare);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.PhotoShareFormatter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */