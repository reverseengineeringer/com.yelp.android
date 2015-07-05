package com.google.android.gms.internal;

import java.io.IOException;

public class qv
  extends IOException
{
  public qv(String paramString)
  {
    super(paramString);
  }
  
  static qv rR()
  {
    return new qv("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
  }
  
  static qv rS()
  {
    return new qv("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
  }
  
  static qv rT()
  {
    return new qv("CodedInputStream encountered a malformed varint.");
  }
  
  static qv rU()
  {
    return new qv("Protocol message contained an invalid tag (zero).");
  }
  
  static qv rV()
  {
    return new qv("Protocol message end-group tag did not match expected tag.");
  }
  
  static qv rW()
  {
    return new qv("Protocol message tag had invalid wire type.");
  }
  
  static qv rX()
  {
    return new qv("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */