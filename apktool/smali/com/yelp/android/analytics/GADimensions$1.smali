.class final enum Lcom/yelp/android/analytics/GADimensions$1;
.super Lcom/yelp/android/analytics/GADimensions;
.source "GADimensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/analytics/GADimensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/analytics/GADimensions;-><init>(Ljava/lang/String;IILcom/yelp/android/analytics/GADimensions$1;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const-string/jumbo v0, "confirmed"

    .line 27
    :goto_0
    return-object v0

    .line 24
    :cond_0
    const-string/jumbo v0, "unconfirmed"

    goto :goto_0

    .line 27
    :cond_1
    const-string/jumbo v0, "anonymous"

    goto :goto_0
.end method
