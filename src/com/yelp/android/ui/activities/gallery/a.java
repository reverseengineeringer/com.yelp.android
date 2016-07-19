package com.yelp.android.ui.activities.gallery;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video.Media;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.CheckBox;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import com.yelp.android.ui.util.MediaStoreUtil.MediaType;
import com.yelp.android.ui.util.at.a;
import com.yelp.android.ui.util.av;
import com.yelp.android.ui.util.g;
import com.yelp.android.ui.util.q;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;

public class a
  extends CursorAdapter
  implements g
{
  private LayoutInflater a;
  private a b;
  private final q c;
  private final t d;
  private MediaStoreUtil.MediaType e;
  private b f;
  private int g = 1;
  
  public a(Context paramContext, a parama, Cursor paramCursor, MediaStoreUtil.MediaType paramMediaType, b paramb)
  {
    super(paramContext, paramCursor, false);
    a = LayoutInflater.from(paramContext);
    b = parama;
    c = new q();
    c.a(true);
    d = t.a(paramContext);
    e = paramMediaType;
    f = paramb;
  }
  
  private boolean a(Cursor paramCursor)
  {
    boolean bool = true;
    if (!MediaStoreUtil.MediaType.PHOTO_AND_VIDEO.equals(e)) {
      bool = MediaStoreUtil.MediaType.PHOTO.equals(e);
    }
    while (paramCursor.getInt(paramCursor.getColumnIndex("media_type")) == 1) {
      return bool;
    }
    return false;
  }
  
  public void a(int paramInt)
  {
    g = paramInt;
  }
  
  public void bindView(final View paramView, Context paramContext, Cursor paramCursor)
  {
    int j = 0;
    paramContext = (d)paramView.getTag();
    int i = paramCursor.getInt(paramCursor.getColumnIndex("_id"));
    final boolean bool1 = a(paramCursor);
    if (bool1)
    {
      paramView = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
      paramView = Uri.withAppendedPath(paramView, Integer.toString(i));
      c.a(a, new at.a()
      {
        public void a(ImageView paramAnonymousImageView, int paramAnonymousInt1, int paramAnonymousInt2)
        {
          a.a(a.this).a(paramView).a(paramAnonymousInt1, paramAnonymousInt1).a(paramAnonymousImageView);
        }
      });
      paramCursor = b;
      if (!bool1) {
        break label127;
      }
    }
    label127:
    for (i = 8;; i = 0)
    {
      paramCursor.setVisibility(i);
      if (g != 1) {
        break label133;
      }
      a.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          a.b(a.this).a(paramView, bool1);
        }
      });
      return;
      paramView = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
      break;
    }
    label133:
    c.setVisibility(0);
    boolean bool2 = f.a(paramView, bool1);
    paramCursor = e;
    if (bool2) {}
    for (i = j;; i = 8)
    {
      paramCursor.setVisibility(i);
      d.setChecked(bool2);
      a.setOnClickListener(new c((ViewGroup)a.getParent(), paramView, bool1));
      d.setOnClickListener(new c((ViewGroup)d.getParent().getParent(), paramView, bool1));
      return;
    }
  }
  
  public void clear()
  {
    changeCursor(null);
  }
  
  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    paramContext = a.inflate(2130903543, paramViewGroup, false);
    paramContext.setTag(new d(paramContext));
    int i = ((GridView)paramViewGroup).getColumnWidth();
    if ((!c.a()) && (i > 0)) {
      c.a(i, i);
    }
    return paramContext;
  }
  
  protected static abstract interface a
  {
    public abstract void a(Uri paramUri, boolean paramBoolean);
  }
  
  protected static abstract interface b
  {
    public abstract boolean a(Uri paramUri, boolean paramBoolean);
  }
  
  private class c
    implements View.OnClickListener
  {
    private final View b;
    private final Uri c;
    private final boolean d;
    
    c(View paramView, Uri paramUri, boolean paramBoolean)
    {
      b = paramView;
      c = paramUri;
      d = paramBoolean;
    }
    
    public void onClick(View paramView)
    {
      a.b(a.this).a(c, d);
      b.startAnimation(av.a(1.0F, 0.97F));
    }
  }
  
  private static class d
  {
    ImageView a;
    ImageView b;
    FrameLayout c;
    CheckBox d;
    ImageView e;
    
    public d(View paramView)
    {
      a = ((ImageView)paramView.findViewById(2131689747));
      b = ((ImageView)paramView.findViewById(2131690967));
      c = ((FrameLayout)paramView.findViewById(2131690354));
      d = ((CheckBox)paramView.findViewById(2131690355));
      e = ((ImageView)paramView.findViewById(2131690356));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */