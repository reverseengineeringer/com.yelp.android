.class public abstract Lcom/yelp/android/appdata/webrequests/MediaRequest;
.super Lcom/yelp/android/av/g;
.source "MediaRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/dm;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final MAX_LIMIT:I = 0x32


# direct methods
.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 33
    return-void
.end method


# virtual methods
.method public abstract countMedia(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;)I"
        }
    .end annotation
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public final isAllMediaFetched(Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 48
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->countMedia(Ljava/util/List;)I

    move-result v0

    if-lt v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract next(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;
.end method

.method public reset()Lcom/yelp/android/appdata/webrequests/MediaRequest;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->resetWithOffset(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public abstract resetWithOffset(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;
.end method

.method public abstract retry()Lcom/yelp/android/appdata/webrequests/MediaRequest;
.end method
