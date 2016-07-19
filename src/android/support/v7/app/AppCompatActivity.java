package android.support.v7.app;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.al;
import android.support.v4.app.al.a;
import android.support.v4.app.s;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class AppCompatActivity
  extends FragmentActivity
  implements al.a, a.b, e
{
  private f mDelegate;
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    getDelegate().b(paramView, paramLayoutParams);
  }
  
  public f getDelegate()
  {
    if (mDelegate == null) {
      mDelegate = f.a(this, this);
    }
    return mDelegate;
  }
  
  public a.a getDrawerToggleDelegate()
  {
    return getDelegate().g();
  }
  
  public MenuInflater getMenuInflater()
  {
    return getDelegate().b();
  }
  
  public ActionBar getSupportActionBar()
  {
    return getDelegate().a();
  }
  
  public Intent getSupportParentActivityIntent()
  {
    return s.a(this);
  }
  
  public void invalidateOptionsMenu()
  {
    getDelegate().e();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    getDelegate().a(paramConfiguration);
  }
  
  public void onContentChanged()
  {
    onSupportContentChanged();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    getDelegate().h();
    getDelegate().a(paramBundle);
    super.onCreate(paramBundle);
  }
  
  public void onCreateSupportNavigateUpTaskStack(al paramal)
  {
    paramal.a(this);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    getDelegate().f();
  }
  
  public final boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem)) {
      return true;
    }
    ActionBar localActionBar = getSupportActionBar();
    if ((paramMenuItem.getItemId() == 16908332) && (localActionBar != null) && ((localActionBar.b() & 0x4) != 0)) {
      return onSupportNavigateUp();
    }
    return false;
  }
  
  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    return super.onMenuOpened(paramInt, paramMenu);
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    super.onPanelClosed(paramInt, paramMenu);
  }
  
  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    getDelegate().b(paramBundle);
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    getDelegate().d();
  }
  
  public void onPrepareSupportNavigateUpTaskStack(al paramal) {}
  
  protected void onStop()
  {
    super.onStop();
    getDelegate().c();
  }
  
  public void onSupportActionModeFinished(com.yelp.android.r.a parama) {}
  
  public void onSupportActionModeStarted(com.yelp.android.r.a parama) {}
  
  @Deprecated
  public void onSupportContentChanged() {}
  
  public boolean onSupportNavigateUp()
  {
    Object localObject = getSupportParentActivityIntent();
    if (localObject != null)
    {
      if (supportShouldUpRecreateTask((Intent)localObject))
      {
        localObject = al.a(this);
        onCreateSupportNavigateUpTaskStack((al)localObject);
        onPrepareSupportNavigateUpTaskStack((al)localObject);
        ((al)localObject).a();
      }
      for (;;)
      {
        try
        {
          android.support.v4.app.a.b(this);
          return true;
        }
        catch (IllegalStateException localIllegalStateException)
        {
          finish();
          continue;
        }
        supportNavigateUpTo(localIllegalStateException);
      }
    }
    return false;
  }
  
  protected void onTitleChanged(CharSequence paramCharSequence, int paramInt)
  {
    super.onTitleChanged(paramCharSequence, paramInt);
    getDelegate().a(paramCharSequence);
  }
  
  public com.yelp.android.r.a onWindowStartingSupportActionMode(com.yelp.android.r.a.a parama)
  {
    return null;
  }
  
  public void setContentView(int paramInt)
  {
    getDelegate().a(paramInt);
  }
  
  public void setContentView(View paramView)
  {
    getDelegate().a(paramView);
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    getDelegate().a(paramView, paramLayoutParams);
  }
  
  public void setSupportActionBar(Toolbar paramToolbar)
  {
    getDelegate().a(paramToolbar);
  }
  
  @Deprecated
  public void setSupportProgress(int paramInt) {}
  
  @Deprecated
  public void setSupportProgressBarIndeterminate(boolean paramBoolean) {}
  
  @Deprecated
  public void setSupportProgressBarIndeterminateVisibility(boolean paramBoolean) {}
  
  @Deprecated
  public void setSupportProgressBarVisibility(boolean paramBoolean) {}
  
  public com.yelp.android.r.a startSupportActionMode(com.yelp.android.r.a.a parama)
  {
    return getDelegate().a(parama);
  }
  
  public void supportInvalidateOptionsMenu()
  {
    getDelegate().e();
  }
  
  public void supportNavigateUpTo(Intent paramIntent)
  {
    s.b(this, paramIntent);
  }
  
  public boolean supportRequestWindowFeature(int paramInt)
  {
    return getDelegate().b(paramInt);
  }
  
  public boolean supportShouldUpRecreateTask(Intent paramIntent)
  {
    return s.a(this, paramIntent);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.AppCompatActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */