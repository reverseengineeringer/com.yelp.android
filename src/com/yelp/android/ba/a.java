package com.yelp.android.ba;

import android.content.Context;
import android.support.v7.widget.bt;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.bumptech.glide.d;
import com.bumptech.glide.j;
import com.yelp.android.serializable.BizPhotoFeedEntry;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.Photo;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.android.ui.activities.photoviewer.ActivityMediaViewer;
import com.yelp.android.ui.activities.photoviewer.PhotoChrome;
import com.yelp.android.ui.activities.photoviewer.ad;
import com.yelp.android.ui.util.DynamicImageView;
import com.yelp.android.ui.util.ax;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.RoundedImageView;
import java.util.ArrayList;

public class a
{
  private final ImageView a;
  private final PhotoChrome b;
  private final RoundedImageView c;
  private final RoundedImageView d;
  private final DynamicImageView e;
  private final View f;
  private final j g;
  private BizPhotoFeedEntry h;
  
  public a(FeedType paramFeedType, View paramView, int paramInt, ad paramad, bt parambt, j paramj)
  {
    g = paramj;
    f = paramView.findViewById(paramInt);
    a = ((ImageView)f.findViewById(2131493519));
    b = ((PhotoChrome)f.findViewById(2131493242));
    b.a(true, true, false, false, false, true, paramad);
    b.a(false);
    c = ((RoundedImageView)f.findViewById(2131493679));
    d = ((RoundedImageView)f.findViewById(2131493680));
    e = ((DynamicImageView)f.findViewById(2131493520));
    e.a(parambt);
  }
  
  private View.OnClickListener a(View.OnClickListener paramOnClickListener, Context paramContext, BizPhotoFeedEntry paramBizPhotoFeedEntry, String paramString, int paramInt)
  {
    return new c(this, paramOnClickListener, paramContext, paramBizPhotoFeedEntry, paramString, paramInt);
  }
  
  private void a(View.OnClickListener paramOnClickListener, View paramView, Context paramContext, BizPhotoFeedEntry paramBizPhotoFeedEntry, String paramString, int paramInt)
  {
    paramOnClickListener.onClick(paramView);
    paramContext.startActivity(ActivityMediaViewer.b(paramContext, paramString, paramBizPhotoFeedEntry.getMedia(), paramInt));
  }
  
  public int a()
  {
    if (h.getMedia().size() <= 2) {
      return -1;
    }
    return e.getNumberScrolled();
  }
  
  public void a(Context paramContext, BizPhotoFeedEntry paramBizPhotoFeedEntry, View.OnClickListener paramOnClickListener, w paramw)
  {
    h = paramBizPhotoFeedEntry;
    b.setVisibility(8);
    a.setVisibility(8);
    c.setVisibility(8);
    d.setVisibility(8);
    e.setVisibility(8);
    if (paramBizPhotoFeedEntry.getMedia().size() == 1)
    {
      b.setVisibility(0);
      a.setVisibility(0);
      paramw = (Photo)paramBizPhotoFeedEntry.getMedia().get(0);
      g.a(paramw.getLargestUrl()).a(2130838496).a(a);
      b.a(paramw);
      b.setOnClickListener(new b(this, paramOnClickListener, paramContext, paramBizPhotoFeedEntry, paramw));
    }
    do
    {
      return;
      if (paramBizPhotoFeedEntry.getMedia().size() == 2)
      {
        c.setVisibility(0);
        d.setVisibility(0);
        paramw = (Photo)paramBizPhotoFeedEntry.getMedia().get(0);
        Photo localPhoto = (Photo)paramBizPhotoFeedEntry.getMedia().get(1);
        g.a(paramw.getLargestUrl()).c().a(c);
        g.a(localPhoto.getLargestUrl()).c().a(d);
        c.setOnClickListener(a(paramOnClickListener, paramContext, paramBizPhotoFeedEntry, paramw.getBusinessId(), 0));
        d.setOnClickListener(a(paramOnClickListener, paramContext, paramBizPhotoFeedEntry, localPhoto.getBusinessId(), 1));
        return;
      }
    } while (paramBizPhotoFeedEntry.getMedia().size() < 3);
    e.setVisibility(0);
    paramContext = new ax(paramBizPhotoFeedEntry.getMedia(), paramContext);
    e.setAdapter(paramContext);
    e.setOnPhotoSelectionIntent(null);
    e.setItemSelectedListener(paramw);
  }
  
  public void a(FeedEntry paramFeedEntry, Context paramContext, View.OnClickListener paramOnClickListener, w paramw)
  {
    h = ((BizPhotoFeedEntry)paramFeedEntry);
    a(paramContext, h, paramOnClickListener, paramw);
  }
  
  public BizPhotoFeedEntry b()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ba.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */