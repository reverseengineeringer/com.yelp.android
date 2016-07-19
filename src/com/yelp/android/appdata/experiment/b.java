package com.yelp.android.appdata.experiment;

import java.util.Random;

public class b<C extends Enum<C>>
  extends a<C>
{
  public b(String paramString, Class<C> paramClass)
  {
    super(paramString, paramClass);
  }
  
  protected C a()
  {
    Random localRandom = new Random();
    Enum[] arrayOfEnum = (Enum[])b.getEnumConstants();
    return arrayOfEnum[localRandom.nextInt(arrayOfEnum.length)];
  }
  
  public C b()
  {
    Object localObject = g.a().a(a);
    if (localObject == null)
    {
      localObject = a();
      g.a().a(a, ((Enum)localObject).name());
      return (C)localObject;
    }
    return Enum.valueOf(b, (String)localObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.experiment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */