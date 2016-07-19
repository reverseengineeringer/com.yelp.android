package com.bugsnag.android;

import java.io.IOException;

class User
  implements JsonStream.Streamable
{
  private String email;
  private String id;
  private String name;
  
  User() {}
  
  User(User paramUser)
  {
    this(id, email, name);
  }
  
  User(String paramString1, String paramString2, String paramString3)
  {
    id = paramString1;
    email = paramString2;
    name = paramString3;
  }
  
  public void setEmail(String paramString)
  {
    email = paramString;
  }
  
  public void setId(String paramString)
  {
    id = paramString;
  }
  
  public void setName(String paramString)
  {
    name = paramString;
  }
  
  public void toStream(JsonStream paramJsonStream)
    throws IOException
  {
    paramJsonStream.beginObject();
    if (id != null) {
      paramJsonStream.name("id").value(id);
    }
    if (email != null) {
      paramJsonStream.name("email").value(email);
    }
    if (name != null) {
      paramJsonStream.name("name").value(name);
    }
    paramJsonStream.endObject();
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.User
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */