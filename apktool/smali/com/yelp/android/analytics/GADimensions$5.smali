.class final enum Lcom/yelp/android/analytics/GADimensions$5;
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
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/analytics/GADimensions;-><init>(Ljava/lang/String;IILcom/yelp/android/analytics/GADimensions$1;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->Z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
