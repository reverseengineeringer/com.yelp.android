package com.yelp.android.services;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable.Creator;
import com.yelp.android.analytics.g.a;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.Video;

public class VideoShareFormatter
  extends ShareFormatter<Video>
{
  public static final Parcelable.Creator<VideoShareFormatter> CREATOR = new VideoShareFormatter.1();
  
  public VideoShareFormatter(Video paramVideo)
  {
    super(paramVideo);
  }
  
  protected Uri a()
  {
    return Uri.parse(((Video)c()).l());
  }
  
  public String a(Context paramContext)
  {
    return paramContext.getString(2131165624);
  }
  
  public void a(Context paramContext, e.a parama, Intent paramIntent)
  {
    super.a(paramContext, parama, paramIntent);
    if (parama.e()) {
      paramIntent.putExtra("android.intent.extra.SUBJECT", paramContext.getString(2131165418));
    }
  }
  
  public g.a b()
  {
    return new g.a().a(EventIri.BusinessVideoShareNative);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.VideoShareFormatter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */