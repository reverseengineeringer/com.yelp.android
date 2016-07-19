package com.yelp.android.services.push;

import android.app.Notification;
import android.content.Intent;
import android.net.Uri;

public abstract interface h
{
  public abstract Notification a(Notifier.a parama);
  
  public abstract Intent a(Intent paramIntent, Uri paramUri, Notifier.NotificationType paramNotificationType, int paramInt);
  
  public abstract Intent a(Uri paramUri, Notifier.NotificationType paramNotificationType, boolean paramBoolean);
  
  public abstract void a(g paramg, Notifier.b paramb);
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */