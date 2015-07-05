package com.google.android.gms.dynamic;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public final class b
  extends c.a
{
  private Fragment TG;
  
  private b(Fragment paramFragment)
  {
    TG = paramFragment;
  }
  
  public static b a(Fragment paramFragment)
  {
    if (paramFragment != null) {
      return new b(paramFragment);
    }
    return null;
  }
  
  public void d(d paramd)
  {
    paramd = (View)e.f(paramd);
    TG.registerForContextMenu(paramd);
  }
  
  public void e(d paramd)
  {
    paramd = (View)e.f(paramd);
    TG.unregisterForContextMenu(paramd);
  }
  
  public Bundle getArguments()
  {
    return TG.getArguments();
  }
  
  public int getId()
  {
    return TG.getId();
  }
  
  public boolean getRetainInstance()
  {
    return TG.getRetainInstance();
  }
  
  public String getTag()
  {
    return TG.getTag();
  }
  
  public int getTargetRequestCode()
  {
    return TG.getTargetRequestCode();
  }
  
  public boolean getUserVisibleHint()
  {
    return TG.getUserVisibleHint();
  }
  
  public d getView()
  {
    return e.k(TG.getView());
  }
  
  public boolean isAdded()
  {
    return TG.isAdded();
  }
  
  public boolean isDetached()
  {
    return TG.isDetached();
  }
  
  public boolean isHidden()
  {
    return TG.isHidden();
  }
  
  public boolean isInLayout()
  {
    return TG.isInLayout();
  }
  
  public boolean isRemoving()
  {
    return TG.isRemoving();
  }
  
  public boolean isResumed()
  {
    return TG.isResumed();
  }
  
  public boolean isVisible()
  {
    return TG.isVisible();
  }
  
  public d jf()
  {
    return e.k(TG.getActivity());
  }
  
  public c jg()
  {
    return a(TG.getParentFragment());
  }
  
  public d jh()
  {
    return e.k(TG.getResources());
  }
  
  public c ji()
  {
    return a(TG.getTargetFragment());
  }
  
  public void setHasOptionsMenu(boolean paramBoolean)
  {
    TG.setHasOptionsMenu(paramBoolean);
  }
  
  public void setMenuVisibility(boolean paramBoolean)
  {
    TG.setMenuVisibility(paramBoolean);
  }
  
  public void setRetainInstance(boolean paramBoolean)
  {
    TG.setRetainInstance(paramBoolean);
  }
  
  public void setUserVisibleHint(boolean paramBoolean)
  {
    TG.setUserVisibleHint(paramBoolean);
  }
  
  public void startActivity(Intent paramIntent)
  {
    TG.startActivity(paramIntent);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    TG.startActivityForResult(paramIntent, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */