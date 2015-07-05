package com.ooyala.android;

import java.util.Set;

public abstract interface StreamSelector
{
  public abstract Stream bestStream(Set<Stream> paramSet);
}

/* Location:
 * Qualified Name:     com.ooyala.android.StreamSelector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */