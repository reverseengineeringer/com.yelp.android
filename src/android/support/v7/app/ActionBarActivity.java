package android.support.v7.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.ActionBarDrawerToggle.Delegate;
import android.support.v4.app.ActionBarDrawerToggle.DelegateProvider;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.NavUtils;
import android.support.v4.app.TaskStackBuilder;
import android.support.v4.app.TaskStackBuilder.SupportParentable;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.yelp.android.m.a;
import com.yelp.android.m.b;

public class ActionBarActivity
  extends FragmentActivity
  implements ActionBarDrawerToggle.DelegateProvider, TaskStackBuilder.SupportParentable, y
{
  private c mDelegate;
  
  private c getDelegate()
  {
    if (mDelegate == null) {
      mDelegate = c.a(this);
    }
    return mDelegate;
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    getDelegate().b(paramView, paramLayoutParams);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (getDelegate().a(paramKeyEvent)) {
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public final ActionBarDrawerToggle.Delegate getDrawerToggleDelegate()
  {
    return getDelegate().i();
  }
  
  public MenuInflater getMenuInflater()
  {
    return getDelegate().d();
  }
  
  public ActionBar getSupportActionBar()
  {
    return getDelegate().b();
  }
  
  public Intent getSupportParentActivityIntent()
  {
    return NavUtils.getParentActivityIntent(this);
  }
  
  public r getV7DrawerToggleDelegate()
  {
    return getDelegate().j();
  }
  
  public void invalidateOptionsMenu()
  {
    getDelegate().g();
  }
  
  public void onBackPressed()
  {
    if (!getDelegate().h()) {
      super.onBackPressed();
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    getDelegate().a(paramConfiguration);
  }
  
  public final void onContentChanged()
  {
    getDelegate().l();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getDelegate().a(paramBundle);
  }
  
  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    return getDelegate().c(paramInt, paramMenu);
  }
  
  public void onCreateSupportNavigateUpTaskStack(TaskStackBuilder paramTaskStackBuilder)
  {
    paramTaskStackBuilder.addParentStack(this);
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    View localView = super.onCreateView(paramString, paramContext, paramAttributeSet);
    if (localView != null) {
      return localView;
    }
    return getDelegate().a(paramString, paramContext, paramAttributeSet);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    getDelegate().o();
  }
  
  public boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent)
  {
    return getDelegate().a(paramInt, paramKeyEvent);
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
    return getDelegate().b(paramInt, paramMenu);
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    getDelegate().a(paramInt, paramMenu);
  }
  
  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    getDelegate().b(paramBundle);
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    getDelegate().f();
  }
  
  protected boolean onPrepareOptionsPanel(View paramView, Menu paramMenu)
  {
    return getDelegate().a(paramView, paramMenu);
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    return getDelegate().a(paramInt, paramView, paramMenu);
  }
  
  public void onPrepareSupportNavigateUpTaskStack(TaskStackBuilder paramTaskStackBuilder) {}
  
  protected void onStop()
  {
    super.onStop();
    getDelegate().e();
  }
  
  public void onSupportActionModeFinished(a parama) {}
  
  public void onSupportActionModeStarted(a parama) {}
  
  public void onSupportContentChanged() {}
  
  public boolean onSupportNavigateUp()
  {
    Object localObject = getSupportParentActivityIntent();
    if (localObject != null)
    {
      if (supportShouldUpRecreateTask((Intent)localObject))
      {
        localObject = TaskStackBuilder.create(this);
        onCreateSupportNavigateUpTaskStack((TaskStackBuilder)localObject);
        onPrepareSupportNavigateUpTaskStack((TaskStackBuilder)localObject);
        ((TaskStackBuilder)localObject).startActivities();
      }
      for (;;)
      {
        try
        {
          ActivityCompat.finishAffinity(this);
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
  
  public void setSupportProgress(int paramInt)
  {
    getDelegate().c(paramInt);
  }
  
  public void setSupportProgressBarIndeterminate(boolean paramBoolean)
  {
    getDelegate().c(paramBoolean);
  }
  
  public void setSupportProgressBarIndeterminateVisibility(boolean paramBoolean)
  {
    getDelegate().b(paramBoolean);
  }
  
  public void setSupportProgressBarVisibility(boolean paramBoolean)
  {
    getDelegate().a(paramBoolean);
  }
  
  public a startSupportActionMode(b paramb)
  {
    return getDelegate().a(paramb);
  }
  
  void superAddContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addContentView(paramView, paramLayoutParams);
  }
  
  boolean superOnCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }
  
  boolean superOnMenuOpened(int paramInt, Menu paramMenu)
  {
    return super.onMenuOpened(paramInt, paramMenu);
  }
  
  void superOnPanelClosed(int paramInt, Menu paramMenu)
  {
    super.onPanelClosed(paramInt, paramMenu);
  }
  
  boolean superOnPrepareOptionsPanel(View paramView, Menu paramMenu)
  {
    return super.onPrepareOptionsPanel(paramView, paramMenu);
  }
  
  boolean superOnPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }
  
  void superSetContentView(int paramInt)
  {
    super.setContentView(paramInt);
  }
  
  void superSetContentView(View paramView)
  {
    super.setContentView(paramView);
  }
  
  void superSetContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
  }
  
  public void supportInvalidateOptionsMenu()
  {
    getDelegate().g();
  }
  
  public void supportNavigateUpTo(Intent paramIntent)
  {
    NavUtils.navigateUpTo(this, paramIntent);
  }
  
  public boolean supportRequestWindowFeature(int paramInt)
  {
    return getDelegate().b(paramInt);
  }
  
  public boolean supportShouldUpRecreateTask(Intent paramIntent)
  {
    return NavUtils.shouldUpRecreateTask(this, paramIntent);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.ActionBarActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */