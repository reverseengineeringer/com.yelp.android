.class public Lcom/yelp/android/appdata/webrequests/fm;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "UserProfilePhotoSetPrimary.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "/user/profile/photo/set_primary"

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 12
    const-string/jumbo v0, "photo_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/fm;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method
