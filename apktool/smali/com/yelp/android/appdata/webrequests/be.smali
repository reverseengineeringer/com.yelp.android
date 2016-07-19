.class public Lcom/yelp/android/appdata/webrequests/be;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "DisableKahunaSettingsRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    const-string/jumbo v0, "preferences/disable_kahuna_settings"

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 12
    return-void
.end method
