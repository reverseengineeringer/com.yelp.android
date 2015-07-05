.class public Lcom/yelp/android/appdata/webrequests/ar;
.super Lcom/yelp/android/av/h;
.source "ClearTwitterSettingsRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/av/i;)V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "account/logout/twitter"

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 9
    return-void
.end method
