package com.facebook.share.internal;

import android.app.Activity;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.internal.a;
import com.facebook.internal.e;
import com.facebook.internal.e.a;
import com.facebook.internal.f;
import com.facebook.internal.f.a;
import java.util.ArrayList;
import java.util.List;

public class d
  extends f<LikeContent, Object>
{
  private static final int b = CallbackManagerImpl.RequestCodeOffset.Like.toRequestCode();
  
  d(Activity paramActivity)
  {
    super(paramActivity, b);
  }
  
  d(Fragment paramFragment)
  {
    super(paramFragment, b);
  }
  
  private static Bundle b(LikeContent paramLikeContent)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("object_id", paramLikeContent.a());
    localBundle.putString("object_type", paramLikeContent.b());
    return localBundle;
  }
  
  public static boolean e()
  {
    return (Build.VERSION.SDK_INT >= 14) && (e.a(h()));
  }
  
  public static boolean f()
  {
    return (Build.VERSION.SDK_INT >= 14) && (e.b(h()));
  }
  
  private static com.facebook.internal.d h()
  {
    return LikeDialogFeature.LIKE_DIALOG;
  }
  
  protected List<f<LikeContent, Object>.a> c()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new a(null));
    localArrayList.add(new b(null));
    return localArrayList;
  }
  
  protected a d()
  {
    return new a(a());
  }
  
  private class a
    extends f<LikeContent, Object>.a
  {
    private a()
    {
      super();
    }
    
    public boolean a(LikeContent paramLikeContent)
    {
      return (paramLikeContent != null) && (d.e());
    }
    
    public a b(final LikeContent paramLikeContent)
    {
      a locala = d();
      e.a(locala, new e.a()
      {
        public Bundle a()
        {
          return d.a(paramLikeContent);
        }
        
        public Bundle b()
        {
          Log.e("LikeDialog", "Attempting to present the Like Dialog with an outdated Facebook app on the device");
          return new Bundle();
        }
      }, d.g());
      return locala;
    }
  }
  
  private class b
    extends f<LikeContent, Object>.a
  {
    private b()
    {
      super();
    }
    
    public boolean a(LikeContent paramLikeContent)
    {
      return (paramLikeContent != null) && (d.f());
    }
    
    public a b(LikeContent paramLikeContent)
    {
      a locala = d();
      e.a(locala, d.a(paramLikeContent), d.g());
      return locala;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */