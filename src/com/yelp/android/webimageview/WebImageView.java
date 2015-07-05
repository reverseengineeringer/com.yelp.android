package com.yelp.android.webimageview;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import java.util.concurrent.TimeUnit;

public class WebImageView
  extends ImageView
{
  public static final String ACTION_INVALID_BUNDLE_URL = "com.yelp.android.webimageview.intent.invalid_bundle_url";
  public static final String EXTRA_IMAGE_URL = "image_url";
  private boolean mFollowCrossRedirects;
  private boolean mLoaded;
  private Drawable mLoadingDrawable;
  private long mPriority;
  private int mReqHeight;
  private int mReqWidth;
  private boolean mSavePermanently;
  private String mUrl;
  
  public WebImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public WebImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.WebImageView);
    if (paramContext != null)
    {
      applyTypedArray(paramContext);
      paramContext.recycle();
    }
  }
  
  public static int getResourceForName(Context paramContext, String paramString)
  {
    String str = paramString;
    if (paramString.contains(".")) {
      str = paramString.substring(0, paramString.lastIndexOf("."));
    }
    paramString = str;
    if (str.contains("@")) {
      paramString = str.substring(0, str.lastIndexOf("@"));
    }
    return paramContext.getResources().getIdentifier(paramString, "drawable", paramContext.getPackageName());
  }
  
  public void applyTypedArray(TypedArray paramTypedArray)
  {
    boolean bool = true;
    setLoadingDrawable(paramTypedArray.getDrawable(1));
    mSavePermanently = paramTypedArray.getBoolean(3, false);
    mPriority = paramTypedArray.getInt(5, 20);
    mFollowCrossRedirects = paramTypedArray.getBoolean(4, false);
    String str = paramTypedArray.getString(2);
    if (!TextUtils.isEmpty(str)) {}
    for (;;)
    {
      setImageUrl(str, paramTypedArray.getBoolean(0, bool), null);
      invalidate();
      return;
      bool = false;
    }
  }
  
  public boolean isLoaded()
  {
    return mLoaded;
  }
  
  public void loadImage(WebImageView.ImageLoadedCallback paramImageLoadedCallback)
  {
    try
    {
      if (mUrl == null) {
        throw new IllegalStateException("Cannot load a null Image url");
      }
    }
    finally {}
    if (!mLoaded)
    {
      setImageDrawable(mLoadingDrawable);
      ImageLoader.start(mUrl, mReqWidth, mReqHeight, new WebImageView.WebImageLoaderHandler(mUrl, this, Long.MAX_VALUE - SystemClock.elapsedRealtime() + mPriority, paramImageLoadedCallback), mSavePermanently, mFollowCrossRedirects);
    }
  }
  
  public void reset()
  {
    try
    {
      if (mLoadingDrawable != null) {
        setImageDrawable(mLoadingDrawable);
      }
      mLoaded = false;
      mUrl = null;
      return;
    }
    finally {}
  }
  
  public void setImageBitmap(Bitmap paramBitmap, boolean paramBoolean)
  {
    setImageBitmap(paramBitmap);
    mLoaded = paramBoolean;
  }
  
  public void setImageUrl(String paramString)
  {
    setImageUrl(paramString, 0, 0);
  }
  
  public void setImageUrl(String paramString, int paramInt)
  {
    setImageUrl(paramString, paramInt, 0, 0);
  }
  
  public void setImageUrl(String paramString, int paramInt1, int paramInt2)
  {
    setImageUrl(paramString, true, null, paramInt1, paramInt2);
  }
  
  public void setImageUrl(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    if (TextUtils.isEmpty(paramString))
    {
      reset();
      setImageResource(paramInt1);
      return;
    }
    setImageUrl(paramString, paramInt2, paramInt3);
  }
  
  public void setImageUrl(String paramString, boolean paramBoolean, WebImageView.ImageLoadedCallback paramImageLoadedCallback)
  {
    setImageUrl(paramString, paramBoolean, paramImageLoadedCallback, 0, 0);
  }
  
  public void setImageUrl(String paramString, boolean paramBoolean, WebImageView.ImageLoadedCallback paramImageLoadedCallback, int paramInt1, int paramInt2)
  {
    reset();
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      do
      {
        return;
        if ((!paramString.startsWith("http")) && (!paramString.startsWith("file://"))) {
          break;
        }
        mUrl = paramString;
        mReqWidth = paramInt1;
        mReqHeight = paramInt2;
      } while (!paramBoolean);
      loadImage(paramImageLoadedCallback);
      return;
      if (paramString.startsWith("android.resource"))
      {
        setImageURI(Uri.parse(paramString));
        return;
      }
    } while (!paramString.startsWith("bundle://"));
    paramString = paramString.substring("bundle://".length());
    paramInt1 = getResourceForName(getContext(), paramString);
    if (paramInt1 == 0)
    {
      paramImageLoadedCallback = new Intent("com.yelp.android.webimageview.intent.invalid_bundle_url");
      paramImageLoadedCallback.putExtra("image_url", paramString);
      getContext().sendBroadcast(paramImageLoadedCallback);
      return;
    }
    setImageResource(paramInt1);
  }
  
  public void setLoadingDrawable(int paramInt)
  {
    setLoadingDrawable(getResources().getDrawable(paramInt));
  }
  
  public void setLoadingDrawable(Drawable paramDrawable)
  {
    mLoadingDrawable = paramDrawable;
    if (!mLoaded) {
      setImageDrawable(mLoadingDrawable);
    }
  }
  
  public void setPriority(int paramInt)
  {
    mPriority = TimeUnit.MILLISECONDS.convert(paramInt, TimeUnit.SECONDS);
  }
  
  public void setSavePermanently(boolean paramBoolean)
  {
    mSavePermanently = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.WebImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */