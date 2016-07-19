.class public Lcom/yelp/android/util/YelpLog$YelpLogException;
.super Ljava/lang/Exception;
.source "YelpLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/YelpLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YelpLogException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x72163d6e14393927L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 156
    invoke-static {p0}, Lcom/yelp/android/util/YelpLog;->removeTopOfStackTrace(Ljava/lang/Throwable;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {p0}, Lcom/yelp/android/util/YelpLog;->removeTopOfStackTrace(Ljava/lang/Throwable;)V

    .line 162
    return-void
.end method
