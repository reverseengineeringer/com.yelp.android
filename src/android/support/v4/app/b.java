package android.support.v4.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcelable;
import android.view.View;
import java.util.List;
import java.util.Map;

class b
{
  private static SharedElementCallback a(a parama)
  {
    b localb = null;
    if (parama != null) {
      localb = new b(parama);
    }
    return localb;
  }
  
  public static void a(Activity paramActivity)
  {
    paramActivity.finishAfterTransition();
  }
  
  public static void a(Activity paramActivity, a parama)
  {
    paramActivity.setEnterSharedElementCallback(a(parama));
  }
  
  public static void b(Activity paramActivity)
  {
    paramActivity.postponeEnterTransition();
  }
  
  public static void b(Activity paramActivity, a parama)
  {
    paramActivity.setExitSharedElementCallback(a(parama));
  }
  
  public static void c(Activity paramActivity)
  {
    paramActivity.startPostponedEnterTransition();
  }
  
  public static abstract class a
  {
    public abstract Parcelable a(View paramView, Matrix paramMatrix, RectF paramRectF);
    
    public abstract View a(Context paramContext, Parcelable paramParcelable);
    
    public abstract void a(List<View> paramList);
    
    public abstract void a(List<String> paramList, List<View> paramList1, List<View> paramList2);
    
    public abstract void a(List<String> paramList, Map<String, View> paramMap);
    
    public abstract void b(List<String> paramList, List<View> paramList1, List<View> paramList2);
  }
  
  private static class b
    extends SharedElementCallback
  {
    private b.a a;
    
    public b(b.a parama)
    {
      a = parama;
    }
    
    public Parcelable onCaptureSharedElementSnapshot(View paramView, Matrix paramMatrix, RectF paramRectF)
    {
      return a.a(paramView, paramMatrix, paramRectF);
    }
    
    public View onCreateSnapshotView(Context paramContext, Parcelable paramParcelable)
    {
      return a.a(paramContext, paramParcelable);
    }
    
    public void onMapSharedElements(List<String> paramList, Map<String, View> paramMap)
    {
      a.a(paramList, paramMap);
    }
    
    public void onRejectSharedElements(List<View> paramList)
    {
      a.a(paramList);
    }
    
    public void onSharedElementEnd(List<String> paramList, List<View> paramList1, List<View> paramList2)
    {
      a.b(paramList, paramList1, paramList2);
    }
    
    public void onSharedElementStart(List<String> paramList, List<View> paramList1, List<View> paramList2)
    {
      a.a(paramList, paramList1, paramList2);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */