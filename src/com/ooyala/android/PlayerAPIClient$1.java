package com.ooyala.android;

import java.util.Map;
import java.util.concurrent.Semaphore;

class PlayerAPIClient$1
  implements EmbedTokenGeneratorCallback
{
  PlayerAPIClient$1(PlayerAPIClient paramPlayerAPIClient, Map paramMap, Semaphore paramSemaphore) {}
  
  public void setEmbedToken(String paramString)
  {
    val$params.put("embedToken", paramString);
    val$sem.release();
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.PlayerAPIClient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */