package com.adjust.sdk;

import android.net.Uri;

public abstract interface OnDeeplinkResponseListener
{
  public abstract boolean launchReceivedDeeplink(Uri paramUri);
}

/* Location:
 * Qualified Name:     com.adjust.sdk.OnDeeplinkResponseListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */