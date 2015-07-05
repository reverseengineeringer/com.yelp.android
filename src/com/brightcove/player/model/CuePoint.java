package com.brightcove.player.model;

import com.brightcove.player.util.ErrorUtil;
import java.util.Map;

public class CuePoint
  extends MetadataObject
  implements Comparable<CuePoint>
{
  private int position;
  private CuePoint.PositionType positionType;
  private String type;
  
  public CuePoint(int paramInt, String paramString, Map<String, Object> paramMap)
  {
    super(paramMap);
    positionType = CuePoint.PositionType.POINT_IN_TIME;
    position = paramInt;
    type = paramString;
  }
  
  public CuePoint(CuePoint.PositionType paramPositionType, String paramString, Map<String, Object> paramMap)
  {
    super(paramMap);
    if (paramPositionType == CuePoint.PositionType.POINT_IN_TIME) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("otherConstructor"));
    }
    positionType = paramPositionType;
    type = paramString;
  }
  
  public int compareTo(CuePoint paramCuePoint)
  {
    if ((positionType == CuePoint.PositionType.BEFORE) && (positionType != CuePoint.PositionType.BEFORE)) {}
    do
    {
      return -1;
      if ((positionType == CuePoint.PositionType.AFTER) && (positionType != CuePoint.PositionType.AFTER)) {
        return 1;
      }
      if (positionType != CuePoint.PositionType.POINT_IN_TIME) {
        break;
      }
      if (positionType == CuePoint.PositionType.BEFORE) {
        return 1;
      }
    } while ((positionType == CuePoint.PositionType.AFTER) || (position < position));
    if (position > position) {
      return 1;
    }
    return 0;
  }
  
  public int getPosition()
  {
    if (positionType != CuePoint.PositionType.POINT_IN_TIME) {
      throw new IllegalStateException(String.format(ErrorUtil.getMessage("invalidPointInTime"), new Object[] { positionType.toString() }));
    }
    return position;
  }
  
  public CuePoint.PositionType getPositionType()
  {
    return positionType;
  }
  
  public String getType()
  {
    return type;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CuePoint {");
    localStringBuilder.append("position:");
    localStringBuilder.append(position);
    localStringBuilder.append(" positionType:");
    if (positionType == null)
    {
      localObject = "null";
      localStringBuilder.append(localObject);
      localStringBuilder.append(" type:");
      if (type != null) {
        break label97;
      }
    }
    label97:
    for (Object localObject = "null";; localObject = type)
    {
      localStringBuilder.append((String)localObject);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
      localObject = positionType;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.model.CuePoint
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */