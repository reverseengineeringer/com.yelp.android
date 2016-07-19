package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import com.bumptech.glide.i;
import java.util.HashSet;

@TargetApi(11)
public class RequestManagerFragment
  extends Fragment
{
  private final a a;
  private final k b = new a(null);
  private i c;
  private final HashSet<RequestManagerFragment> d = new HashSet();
  private RequestManagerFragment e;
  
  public RequestManagerFragment()
  {
    this(new a());
  }
  
  @SuppressLint({"ValidFragment"})
  RequestManagerFragment(a parama)
  {
    a = parama;
  }
  
  private void a(RequestManagerFragment paramRequestManagerFragment)
  {
    d.add(paramRequestManagerFragment);
  }
  
  private void b(RequestManagerFragment paramRequestManagerFragment)
  {
    d.remove(paramRequestManagerFragment);
  }
  
  a a()
  {
    return a;
  }
  
  public void a(i parami)
  {
    c = parami;
  }
  
  public i b()
  {
    return c;
  }
  
  public k c()
  {
    return b;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    e = j.a().a(getActivity().getFragmentManager());
    if (e != this) {
      e.a(this);
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    a.c();
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
    if (c != null) {
      c.a();
    }
  }
  
  public void onStart()
  {
    super.onStart();
    a.a();
  }
  
  public void onStop()
  {
    super.onStop();
    a.b();
  }
  
  public void onTrimMemory(int paramInt)
  {
    if (c != null) {
      c.a(paramInt);
    }
  }
  
  private class a
    implements k
  {
    private a() {}
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.manager.RequestManagerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */