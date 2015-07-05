package android.support.v7.internal.widget;

class af
  implements Runnable
{
  private af(z paramz) {}
  
  public void run()
  {
    if (a.u)
    {
      if (a.getAdapter() != null) {
        a.post(this);
      }
      return;
    }
    z.b(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */