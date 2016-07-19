.class Lcom/yelp/android/analytics/adjust/YelpAdjustLogger$AdjustException;
.super Ljava/lang/Exception;
.source "YelpAdjustLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/analytics/adjust/YelpAdjustLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdjustException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 81
    invoke-static {p0}, Lcom/yelp/android/util/YelpLog;->removeTopOfStackTrace(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {p0}, Lcom/yelp/android/util/YelpLog;->removeTopOfStackTrace(Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method
