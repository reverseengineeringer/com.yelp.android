package com.yelp.android.ui.activities.gallery;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video.Media;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import com.bumptech.glide.h;
import com.yelp.android.ui.util.MediaStoreUtil.MediaType;
import com.yelp.android.ui.util.z;

public class k
  extends CursorAdapter
  implements com.yelp.android.ui.util.j
{
  private LayoutInflater a;
  private n b;
  private final z c;
  private final com.bumptech.glide.j d;
  private MediaStoreUtil.MediaType e;
  
  public k(Context paramContext, n paramn, Cursor paramCursor, MediaStoreUtil.MediaType paramMediaType)
  {
    super(paramContext, paramCursor, false);
    a = LayoutInflater.from(paramContext);
    b = paramn;
    c = new z();
    c.a(true);
    d = h.c(paramContext);
    e = paramMediaType;
  }
  
  @TargetApi(11)
  private boolean a(Cursor paramCursor)
  {
    if (com.yelp.android.appdata.n.b(11)) {}
    do
    {
      return true;
      if (!MediaStoreUtil.MediaType.PHOTO_AND_VIDEO.equals(e)) {
        return MediaStoreUtil.MediaType.PHOTO.equals(e);
      }
    } while (paramCursor.getInt(paramCursor.getColumnIndex("media_type")) == 1);
    return false;
  }
  
  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    paramContext = (o)paramView.getTag();
    int i = paramCursor.getInt(paramCursor.getColumnIndex("_id"));
    boolean bool = a(paramCursor);
    if (bool)
    {
      paramView = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
      paramView = Uri.withAppendedPath(paramView, Integer.toString(i));
      c.a(a, new l(this, paramView));
      paramCursor = b;
      if (!bool) {
        break label116;
      }
    }
    label116:
    for (i = 8;; i = 0)
    {
      paramCursor.setVisibility(i);
      a.setOnClickListener(new m(this, paramView, bool));
      return;
      paramView = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
      break;
    }
  }
  
  public void clear()
  {
    changeCursor(null);
  }
  
  @TargetApi(16)
  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    paramContext = a.inflate(2130903420, paramViewGroup, false);
    paramContext.setTag(new o(paramContext));
    if ((com.yelp.android.appdata.n.a(16)) && (!c.a()))
    {
      int i = ((GridView)paramViewGroup).getColumnWidth();
      c.a(i, i);
    }
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */