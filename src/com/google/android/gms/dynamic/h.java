package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;

public final class h
  extends c.a
{
  private Fragment Mx;
  
  private h(Fragment paramFragment)
  {
    Mx = paramFragment;
  }
  
  public static h a(Fragment paramFragment)
  {
    if (paramFragment != null) {
      return new h(paramFragment);
    }
    return null;
  }
  
  public void d(d paramd)
  {
    paramd = (View)e.f(paramd);
    Mx.registerForContextMenu(paramd);
  }
  
  public void e(d paramd)
  {
    paramd = (View)e.f(paramd);
    Mx.unregisterForContextMenu(paramd);
  }
  
  public Bundle getArguments()
  {
    return Mx.getArguments();
  }
  
  public int getId()
  {
    return Mx.getId();
  }
  
  public boolean getRetainInstance()
  {
    return Mx.getRetainInstance();
  }
  
  public String getTag()
  {
    return Mx.getTag();
  }
  
  public int getTargetRequestCode()
  {
    return Mx.getTargetRequestCode();
  }
  
  public boolean getUserVisibleHint()
  {
    return Mx.getUserVisibleHint();
  }
  
  public d getView()
  {
    return e.k(Mx.getView());
  }
  
  public boolean isAdded()
  {
    return Mx.isAdded();
  }
  
  public boolean isDetached()
  {
    return Mx.isDetached();
  }
  
  public boolean isHidden()
  {
    return Mx.isHidden();
  }
  
  public boolean isInLayout()
  {
    return Mx.isInLayout();
  }
  
  public boolean isRemoving()
  {
    return Mx.isRemoving();
  }
  
  public boolean isResumed()
  {
    return Mx.isResumed();
  }
  
  public boolean isVisible()
  {
    return Mx.isVisible();
  }
  
  public d jf()
  {
    return e.k(Mx.getActivity());
  }
  
  public c jg()
  {
    return a(Mx.getParentFragment());
  }
  
  public d jh()
  {
    return e.k(Mx.getResources());
  }
  
  public c ji()
  {
    return a(Mx.getTargetFragment());
  }
  
  public void setHasOptionsMenu(boolean paramBoolean)
  {
    Mx.setHasOptionsMenu(paramBoolean);
  }
  
  public void setMenuVisibility(boolean paramBoolean)
  {
    Mx.setMenuVisibility(paramBoolean);
  }
  
  public void setRetainInstance(boolean paramBoolean)
  {
    Mx.setRetainInstance(paramBoolean);
  }
  
  public void setUserVisibleHint(boolean paramBoolean)
  {
    Mx.setUserVisibleHint(paramBoolean);
  }
  
  public void startActivity(Intent paramIntent)
  {
    Mx.startActivity(paramIntent);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    Mx.startActivityForResult(paramIntent, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */