package com.yelp.android.ui.util;

import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.bg;
import com.yelp.android.ui.widgets.WebImageView;

public abstract class cv
{
  private final View a;
  private final WebImageView b;
  private String c;
  
  protected cv(View paramView, int paramInt)
  {
    a = paramView;
    b = ((WebImageView)a.findViewById(paramInt));
    a();
  }
  
  private String a(Photo paramPhoto)
  {
    if (paramPhoto != null) {
      return paramPhoto.getThumbnailUrl();
    }
    return null;
  }
  
  private void a()
  {
    if (a == null) {
      throw new IllegalArgumentException("You cannot instantiate a WebImageViewHolder with a null View");
    }
    if (b == null) {
      throw new IllegalArgumentException("You cannot instantiate a WebImageViewHolder with an invalid WebImageView resource ID");
    }
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    b.setOnClickListener(paramOnClickListener);
  }
  
  public void a(bg parambg)
  {
    a(a(parambg.getPhoto()));
  }
  
  public void a(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (!paramString.equals(c)))
    {
      c = paramString;
      b.reset();
      b.setImageUrl(c, 2130837659);
    }
  }
  
  public View b()
  {
    return a;
  }
  
  public WebImageView c()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */