package org.apache.commons.lang3.exception;

import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.tuple.Pair;

public abstract interface a
{
  public abstract a addContextValue(String paramString, Object paramObject);
  
  public abstract List<Pair<String, Object>> getContextEntries();
  
  public abstract Set<String> getContextLabels();
  
  public abstract List<Object> getContextValues(String paramString);
  
  public abstract Object getFirstContextValue(String paramString);
  
  public abstract String getFormattedExceptionMessage(String paramString);
  
  public abstract a setContextValue(String paramString, Object paramObject);
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.exception.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */