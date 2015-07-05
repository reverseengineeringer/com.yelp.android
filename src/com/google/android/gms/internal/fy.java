package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

@ey
public final class fy
{
  public final int errorCode;
  public final int orientation;
  public final long qA;
  public final cq qP;
  public final cz qQ;
  public final String qR;
  public final ct qS;
  public final List<String> qw;
  public final List<String> qx;
  public final gu se;
  public final av tL;
  public final String tO;
  public final long tV;
  public final boolean tW;
  public final long tX;
  public final List<String> tY;
  public final String ub;
  public final JSONObject vD;
  public final cr vE;
  public final ay vF;
  public final long vG;
  public final long vH;
  public final bv.a vI;
  
  public fy(av paramav, gu paramgu, List<String> paramList1, int paramInt1, List<String> paramList2, List<String> paramList3, int paramInt2, long paramLong1, String paramString1, boolean paramBoolean, cq paramcq, cz paramcz, String paramString2, cr paramcr, ct paramct, long paramLong2, ay paramay, long paramLong3, long paramLong4, long paramLong5, String paramString3, JSONObject paramJSONObject, bv.a parama)
  {
    tL = paramav;
    se = paramgu;
    if (paramList1 != null)
    {
      paramav = Collections.unmodifiableList(paramList1);
      qw = paramav;
      errorCode = paramInt1;
      if (paramList2 == null) {
        break label174;
      }
      paramav = Collections.unmodifiableList(paramList2);
      label45:
      qx = paramav;
      if (paramList3 == null) {
        break label179;
      }
    }
    label174:
    label179:
    for (paramav = Collections.unmodifiableList(paramList3);; paramav = null)
    {
      tY = paramav;
      orientation = paramInt2;
      qA = paramLong1;
      tO = paramString1;
      tW = paramBoolean;
      qP = paramcq;
      qQ = paramcz;
      qR = paramString2;
      vE = paramcr;
      qS = paramct;
      tX = paramLong2;
      vF = paramay;
      tV = paramLong3;
      vG = paramLong4;
      vH = paramLong5;
      ub = paramString3;
      vD = paramJSONObject;
      vI = parama;
      return;
      paramav = null;
      break;
      paramav = null;
      break label45;
    }
  }
  
  public fy(fy.a parama, gu paramgu, cq paramcq, cz paramcz, String paramString, ct paramct, bv.a parama1)
  {
    this(vJ.tL, paramgu, vK.qw, errorCode, vK.qx, vK.tY, vK.orientation, vK.qA, vJ.tO, vK.tW, paramcq, paramcz, paramString, vE, paramct, vK.tX, lS, vK.tV, vG, vH, vK.ub, vD, parama1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */