package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.bumptech.glide.i;
import java.util.HashSet;

public class SupportRequestManagerFragment
  extends Fragment
{
  private i a;
  private final a b;
  private final k c = new a(null);
  private final HashSet<SupportRequestManagerFragment> d = new HashSet();
  private SupportRequestManagerFragment e;
  
  public SupportRequestManagerFragment()
  {
    this(new a());
  }
  
  @SuppressLint({"ValidFragment"})
  public SupportRequestManagerFragment(a parama)
  {
    b = parama;
  }
  
  private void a(SupportRequestManagerFragment paramSupportRequestManagerFragment)
  {
    d.add(paramSupportRequestManagerFragment);
  }
  
  private void b(SupportRequestManagerFragment paramSupportRequestManagerFragment)
  {
    d.remove(paramSupportRequestManagerFragment);
  }
  
  a a()
  {
    return b;
  }
  
  public void a(i parami)
  {
    a = parami;
  }
  
  public i b()
  {
    return a;
  }
  
  public k c()
  {
    return c;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    e = j.a().a(getActivity().getSupportFragmentManager());
    if (e != this) {
      e.a(this);
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    b.c();
  }
  
  public void onDetach()
  {
    super.onDetach();
    if (e != null)
    {
      e.b(this);
      e = null;
    }
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    if (a != null) {
      a.a();
    }
  }
  
  public void onStart()
  {
    super.onStart();
    b.a();
  }
  
  public void onStop()
  {
    super.onStop();
    b.b();
  }
  
  private class a
    implements k
  {
    private a() {}
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.manager.SupportRequestManagerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */