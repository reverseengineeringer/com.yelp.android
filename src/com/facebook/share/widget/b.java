package com.facebook.share.widget;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.internal.d;
import com.facebook.internal.e;
import com.facebook.internal.e.a;
import com.facebook.internal.f.a;
import com.facebook.share.internal.MessageDialogFeature;
import com.facebook.share.internal.OpenGraphMessageDialogFeature;
import com.facebook.share.internal.i;
import com.facebook.share.internal.j;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import com.yelp.android.ay.a.a;
import java.util.ArrayList;
import java.util.List;

public final class b
  extends com.facebook.internal.f<ShareContent, a.a>
  implements com.yelp.android.ay.a
{
  private static final int b = CallbackManagerImpl.RequestCodeOffset.Message.toRequestCode();
  private boolean c = false;
  
  b(Activity paramActivity, int paramInt)
  {
    super(paramActivity, paramInt);
    j.a(paramInt);
  }
  
  b(Fragment paramFragment, int paramInt)
  {
    super(paramFragment, paramInt);
    j.a(paramInt);
  }
  
  public static boolean a(Class<? extends ShareContent> paramClass)
  {
    paramClass = c(paramClass);
    return (paramClass != null) && (e.a(paramClass));
  }
  
  private static d c(Class<? extends ShareContent> paramClass)
  {
    if (ShareLinkContent.class.isAssignableFrom(paramClass)) {
      return MessageDialogFeature.MESSAGE_DIALOG;
    }
    if (SharePhotoContent.class.isAssignableFrom(paramClass)) {
      return MessageDialogFeature.PHOTOS;
    }
    if (ShareVideoContent.class.isAssignableFrom(paramClass)) {
      return MessageDialogFeature.VIDEO;
    }
    if (ShareOpenGraphContent.class.isAssignableFrom(paramClass)) {
      return OpenGraphMessageDialogFeature.OG_MESSAGE_DIALOG;
    }
    return null;
  }
  
  protected List<com.facebook.internal.f<ShareContent, a.a>.a> c()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new a(null));
    return localArrayList;
  }
  
  protected com.facebook.internal.a d()
  {
    return new com.facebook.internal.a(a());
  }
  
  public boolean e()
  {
    return c;
  }
  
  private class a
    extends com.facebook.internal.f<ShareContent, a.a>.a
  {
    private a()
    {
      super();
    }
    
    public boolean a(ShareContent paramShareContent)
    {
      return (paramShareContent != null) && (b.a(paramShareContent.getClass()));
    }
    
    public com.facebook.internal.a b(final ShareContent paramShareContent)
    {
      i.a(paramShareContent);
      final com.facebook.internal.a locala = d();
      final boolean bool = e();
      b.a(b.this);
      e.a(locala, new e.a()
      {
        public Bundle a()
        {
          return com.facebook.share.internal.f.a(locala.c(), paramShareContent, bool);
        }
        
        public Bundle b()
        {
          return com.facebook.share.internal.a.a(locala.c(), paramShareContent, bool);
        }
      }, b.b(paramShareContent.getClass()));
      return locala;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */