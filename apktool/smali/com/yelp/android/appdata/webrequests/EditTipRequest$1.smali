.class final Lcom/yelp/android/appdata/webrequests/EditTipRequest$1;
.super Ljava/lang/Object;
.source "EditTipRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/EditTipRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/appdata/webrequests/EditTipRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/EditTipRequest;
    .locals 4

    .prologue
    .line 48
    invoke-static {p1}, Lcom/yelp/android/appdata/webrequests/TipUploadRequestBase;->a(Landroid/os/Parcel;)Ljava/io/File;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 52
    :try_start_0
    new-instance v3, Lcom/yelp/android/appdata/webrequests/EditTipRequest;

    invoke-direct {v3, v1, v2, v0}, Lcom/yelp/android/appdata/webrequests/EditTipRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "File Deleted while parceled"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(I)[Lcom/yelp/android/appdata/webrequests/EditTipRequest;
    .locals 1

    .prologue
    .line 60
    new-array v0, p1, [Lcom/yelp/android/appdata/webrequests/EditTipRequest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/EditTipRequest$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/EditTipRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/EditTipRequest$1;->a(I)[Lcom/yelp/android/appdata/webrequests/EditTipRequest;

    move-result-object v0

    return-object v0
.end method
