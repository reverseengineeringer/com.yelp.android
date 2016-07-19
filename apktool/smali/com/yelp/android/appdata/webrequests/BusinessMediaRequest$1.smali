.class final Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest$1;
.super Ljava/lang/Object;
.source "BusinessMediaRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
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
        "Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 249
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 1

    .prologue
    .line 255
    new-array v0, p1, [Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest$1;->a(I)[Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    return-object v0
.end method
