package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.yelp.android.r.a;

public class l
  extends Dialog
  implements e
{
  private f a;
  
  public l(Context paramContext, int paramInt)
  {
    super(paramContext, a(paramContext, paramInt));
    a().a(null);
  }
  
  private static int a(Context paramContext, int paramInt)
  {
    int i = paramInt;
    if (paramInt == 0)
    {
      TypedValue localTypedValue = new TypedValue();
      paramContext.getTheme().resolveAttribute(com.yelp.android.j.a.a.dialogTheme, localTypedValue, true);
      i = resourceId;
    }
    return i;
  }
  
  public f a()
  {
    if (a == null) {
      a = f.a(this, this);
    }
    return a;
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    a().b(paramView, paramLayoutParams);
  }
  
  public boolean b(int paramInt)
  {
    return a().b(paramInt);
  }
  
  public void invalidateOptionsMenu()
  {
    a().e();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    a().h();
    super.onCreate(paramBundle);
    a().a(paramBundle);
  }
  
  protected void onStop()
  {
    super.onStop();
    a().c();
  }
  
  public void onSupportActionModeFinished(a parama) {}
  
  public void onSupportActionModeStarted(a parama) {}
  
  public a onWindowStartingSupportActionMode(com.yelp.android.r.a.a parama)
  {
    return null;
  }
  
  public void setContentView(int paramInt)
  {
    a().a(paramInt);
  }
  
  public void setContentView(View paramView)
  {
    a().a(paramView);
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    a().a(paramView, paramLayoutParams);
  }
  
  public void setTitle(int paramInt)
  {
    super.setTitle(paramInt);
    a().a(getContext().getString(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    super.setTitle(paramCharSequence);
    a().a(paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */