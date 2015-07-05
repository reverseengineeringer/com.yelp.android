package com.google.android.gms.dynamic;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;

class a$4
  implements a.a
{
  a$4(a parama, FrameLayout paramFrameLayout, LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {}
  
  public void b(LifecycleDelegate paramLifecycleDelegate)
  {
    TC.removeAllViews();
    TC.addView(a.b(Ty).onCreateView(TD, TE, TB));
  }
  
  public int getState()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.a.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */