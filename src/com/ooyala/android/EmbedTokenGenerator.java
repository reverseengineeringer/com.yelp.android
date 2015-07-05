package com.ooyala.android;

import java.util.List;

public abstract interface EmbedTokenGenerator
{
  public abstract void getTokenForEmbedCodes(List<String> paramList, EmbedTokenGeneratorCallback paramEmbedTokenGeneratorCallback);
}

/* Location:
 * Qualified Name:     com.ooyala.android.EmbedTokenGenerator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */