package com.yelp.android.ui.activities.media;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.content.i;
import android.widget.ImageView;
import com.bumptech.glide.c;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.yelp.android.ui.util.MediaStoreUtil;
import com.yelp.android.ui.util.MediaStoreUtil.MediaType;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.aa;
import java.lang.ref.WeakReference;

public class d
  extends aa<Void, Void, Uri>
{
  private final WeakReference<ImageView> a;
  private final WeakReference<Context> b;
  private final WeakReference<i> d;
  private MediaStoreUtil.MediaType e;
  
  public d(Context paramContext, ImageView paramImageView, MediaStoreUtil.MediaType paramMediaType)
  {
    a = new WeakReference(paramImageView);
    b = new WeakReference(paramContext);
    d = new WeakReference(MediaStoreUtil.a(paramContext, paramMediaType, 1));
    e = paramMediaType;
  }
  
  protected Uri a(Void... paramVarArgs)
  {
    paramVarArgs = (Context)b.get();
    Object localObject = (i)d.get();
    if ((paramVarArgs == null) || (localObject == null)) {
      return null;
    }
    paramVarArgs = ((i)localObject).e();
    if ((paramVarArgs == null) || (!paramVarArgs.moveToFirst()))
    {
      YelpLog.e(this, "No cursor results!");
      if (paramVarArgs != null) {
        paramVarArgs.close();
      }
      return null;
    }
    int i = paramVarArgs.getInt(paramVarArgs.getColumnIndex("_id"));
    localObject = Uri.withAppendedPath(MediaStoreUtil.a(e), Integer.toString(i));
    paramVarArgs.close();
    return (Uri)localObject;
  }
  
  protected void a(Uri paramUri)
  {
    ImageView localImageView = (ImageView)a.get();
    Context localContext = (Context)b.get();
    if ((localImageView == null) || (localContext == null)) {
      return;
    }
    int i = (int)localContext.getResources().getDimension(2131427466);
    h.c(localContext).g().a(paramUri).a(i, i).a(localImageView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.media.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */