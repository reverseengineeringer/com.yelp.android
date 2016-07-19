package android.support.v7.internal.view.menu;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.v4.view.d.b;
import android.view.ActionProvider;
import android.view.ActionProvider.VisibilityListener;
import android.view.MenuItem;
import android.view.View;
import com.yelp.android.e.b;

@TargetApi(16)
class j
  extends i
{
  j(Context paramContext, b paramb)
  {
    super(paramContext, paramb);
  }
  
  i.a a(ActionProvider paramActionProvider)
  {
    return new a(a, paramActionProvider);
  }
  
  class a
    extends i.a
    implements ActionProvider.VisibilityListener
  {
    d.b c;
    
    public a(Context paramContext, ActionProvider paramActionProvider)
    {
      super(paramContext, paramActionProvider);
    }
    
    public View a(MenuItem paramMenuItem)
    {
      return a.onCreateActionView(paramMenuItem);
    }
    
    public void a(d.b paramb)
    {
      c = paramb;
      ActionProvider localActionProvider = a;
      if (paramb != null) {}
      for (paramb = this;; paramb = null)
      {
        localActionProvider.setVisibilityListener(paramb);
        return;
      }
    }
    
    public boolean b()
    {
      return a.overridesItemVisibility();
    }
    
    public boolean c()
    {
      return a.isVisible();
    }
    
    public void onActionProviderVisibilityChanged(boolean paramBoolean)
    {
      if (c != null) {
        c.a(paramBoolean);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */