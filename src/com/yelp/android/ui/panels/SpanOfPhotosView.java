package com.yelp.android.ui.panels;

import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.yelp.android.b;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.ui.util.SlightlyLessBrokenLinearLayout;
import com.yelp.android.ui.util.bc;
import com.yelp.android.ui.util.br;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.ui.widgets.i;
import java.util.List;

public class SpanOfPhotosView
  extends SlightlyLessBrokenLinearLayout
{
  public static final String a = SpanOfPhotosView.class + ".empty";
  private br b;
  private br c;
  private final int d;
  private final int e;
  private int f;
  private final int g;
  private j h;
  
  public SpanOfPhotosView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SpanOfPhotosView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772155);
  }
  
  public SpanOfPhotosView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, b.SpanOfPhotosView, paramInt, paramInt);
    f = paramAttributeSet.getInteger(1, 3);
    g = paramAttributeSet.getDimensionPixelSize(2, paramContext.getResources().getDimensionPixelSize(2131427517));
    e = paramAttributeSet.getInt(4, 0);
    d = paramAttributeSet.getResourceId(5, 0);
    h = h.c(paramContext);
    paramAttributeSet.recycle();
  }
  
  private View a(Media paramMedia)
  {
    View localView = LayoutInflater.from(getContext()).inflate(2130903390, this, false);
    ImageView localImageView = (ImageView)localView.findViewById(2131492992);
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)localImageView.getLayoutParams();
    height = g;
    width = g;
    h.a(paramMedia.getThumbnailUrl()).a(2130838258).a(localImageView);
    localView.setOnClickListener(b);
    if (paramMedia.isMediaType(Media.MediaType.VIDEO)) {
      localView.findViewById(2131493982).setVisibility(0);
    }
    return localView;
  }
  
  private LinearLayout.LayoutParams a(LinearLayout.LayoutParams paramLayoutParams)
  {
    setMinimumHeight(g);
    setMinimumWidth(g);
    leftMargin = cp.a(getContext(), 2130772040);
    rightMargin = cp.a(getContext(), 2130772040);
    weight = 1.0F;
    gravity = 17;
    return paramLayoutParams;
  }
  
  public ImageView a(boolean paramBoolean)
  {
    ImageView localImageView = new ImageView(getContext());
    localImageView.setAdjustViewBounds(true);
    localImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
    if (paramBoolean)
    {
      localImageView.setImageResource(d);
      localImageView.setOnClickListener(c);
      return localImageView;
    }
    localImageView.setImageResource(2130838258);
    localImageView.setOnClickListener(b);
    return localImageView;
  }
  
  public void a()
  {
    removeAllViews();
  }
  
  public void a(PendingIntent paramPendingIntent, bc parambc)
  {
    b = new br(paramPendingIntent, false, parambc);
    c = new br(paramPendingIntent, true, parambc);
  }
  
  public void a(List<? extends Media> paramList, int paramInt, View.OnClickListener paramOnClickListener)
  {
    a();
    int i;
    int j;
    label36:
    Object localObject;
    if (paramOnClickListener == null)
    {
      i = Math.min(paramList.size(), f);
      if (i > 0) {
        setVisibility(0);
      }
      j = 0;
      if (j >= i) {
        break label209;
      }
      if ((j < paramList.size()) || (paramOnClickListener == null)) {
        break label161;
      }
      localObject = new i(getContext());
      b.setText(2131165338);
      a.setImageResource(paramInt);
      ((i)localObject).setOnClickListener(paramOnClickListener);
      ((i)localObject).setTag(Integer.valueOf(j));
      addView((View)localObject, a(new LinearLayout.LayoutParams(g, g)));
    }
    for (;;)
    {
      j += 1;
      break label36;
      i = Math.min(paramList.size() + 1, f);
      break;
      label161:
      localObject = a((Media)paramList.get(j));
      ((View)localObject).setTag(Integer.valueOf(j));
      addView((View)localObject, a((LinearLayout.LayoutParams)((View)localObject).getLayoutParams()));
    }
    label209:
    if (i < e)
    {
      setVisibility(0);
      paramInt = e;
      while (i < paramInt)
      {
        addView(a(true), a(new LinearLayout.LayoutParams(g, g)));
        i += 1;
      }
    }
    if ((paramList.isEmpty()) && (paramOnClickListener == null)) {
      setVisibility(8);
    }
  }
  
  public int b()
  {
    return getChildCount();
  }
  
  public int getMaxPhotoCount()
  {
    return f;
  }
  
  public void setItemSelectedListener(w paramw)
  {
    if (b != null) {
      b.c = paramw;
    }
    if (c != null) {
      c.c = paramw;
    }
  }
  
  public void setMaxPhotos(int paramInt)
  {
    f = paramInt;
  }
  
  public void setMedia(List<? extends Media> paramList)
  {
    a(paramList, 0, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.SpanOfPhotosView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */