package com.yelp.android.ui.activities;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.yelp.android.appdata.n;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.ui.util.z;
import java.util.ArrayList;

class cv
  extends BaseAdapter
{
  private final ArrayList<Media> b;
  private final boolean c;
  private final j d;
  private final z e;
  private final View.OnClickListener f = new cx(this);
  
  public cv(Context paramContext, ArrayList<Media> paramArrayList, boolean paramBoolean)
  {
    d = h.c(paramArrayList);
    b = paramBoolean;
    boolean bool;
    c = bool;
    e = new z();
  }
  
  public Media a(int paramInt)
  {
    if (getItemViewType(paramInt) == 0) {
      return (Media)b.get(paramInt);
    }
    return null;
  }
  
  public int getCount()
  {
    int j = b.size();
    int i = j;
    if (ActivityMediaBrowser.g(a) != null)
    {
      i = j;
      if (ActivityMediaBrowser.c(a) == null) {
        i = j + 1;
      }
    }
    return i;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    if ((ActivityMediaBrowser.g(a) != null) && (paramInt == getCount() - 1) && (ActivityMediaBrowser.c(a) == null)) {
      return 1;
    }
    return 0;
  }
  
  @TargetApi(16)
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (getItemViewType(paramInt) == 1)
    {
      localView = paramView;
      if (paramView == null) {
        localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903123, paramViewGroup, false);
      }
      localView.findViewById(2131493325).setOnClickListener(f);
      paramView = localView;
      return paramView;
    }
    View localView = paramView;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903388, paramViewGroup, false);
      paramView.setTag(new cy(this, paramView));
      localView = paramView;
      if (n.a(16))
      {
        localView = paramView;
        if (!e.a())
        {
          int i = ((GridView)paramViewGroup).getColumnWidth();
          e.a(i, i);
          localView = paramView;
        }
      }
    }
    paramViewGroup = (cy)localView.getTag();
    Media localMedia = a(paramInt);
    e.a(a, new cw(this, localMedia));
    paramView = b;
    if (localMedia.isMediaType(Media.MediaType.VIDEO)) {}
    for (paramInt = 0;; paramInt = 8)
    {
      paramView.setVisibility(paramInt);
      paramInt = localMedia.getFeedbackPositiveCount();
      paramView = localView;
      if (!c) {
        break;
      }
      if (paramInt != 0) {
        break label235;
      }
      d.setVisibility(8);
      return localView;
    }
    label235:
    c.setText(Integer.toString(localMedia.getFeedbackPositiveCount()));
    d.setVisibility(0);
    return localView;
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */