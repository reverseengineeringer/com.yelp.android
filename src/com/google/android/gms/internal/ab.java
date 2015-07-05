package com.google.android.gms.internal;

@ey
public class ab
{
  private final ab.a mu;
  private final Runnable mv;
  private av mw;
  private boolean mx = false;
  private boolean my = false;
  private long mz = 0L;
  
  public ab(u paramu)
  {
    this(paramu, new ab.a(gq.wR));
  }
  
  ab(u paramu, ab.a parama)
  {
    mu = parama;
    mv = new ab.1(this, paramu);
  }
  
  public void a(av paramav, long paramLong)
  {
    if (mx) {
      gr.W("An ad refresh is already scheduled.");
    }
    do
    {
      return;
      mw = paramav;
      mx = true;
      mz = paramLong;
    } while (my);
    gr.U("Scheduling ad refresh " + paramLong + " milliseconds from now.");
    mu.postDelayed(mv, paramLong);
  }
  
  public boolean aD()
  {
    return mx;
  }
  
  public void c(av paramav)
  {
    a(paramav, 60000L);
  }
  
  public void cancel()
  {
    mx = false;
    mu.removeCallbacks(mv);
  }
  
  public void pause()
  {
    my = true;
    if (mx) {
      mu.removeCallbacks(mv);
    }
  }
  
  public void resume()
  {
    my = false;
    if (mx)
    {
      mx = false;
      a(mw, mz);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */