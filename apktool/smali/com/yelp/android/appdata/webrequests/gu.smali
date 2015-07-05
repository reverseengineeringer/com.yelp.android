.class final Lcom/yelp/android/appdata/webrequests/gu;
.super Ljava/lang/Object;
.source "UserPhotoRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;
    .locals 6

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;-><init>(Ljava/lang/String;IIILcom/yelp/android/appdata/webrequests/m;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;
    .locals 1

    .prologue
    .line 107
    new-array v0, p1, [Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/gu;->a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/gu;->a(I)[Lcom/yelp/android/appdata/webrequests/UserPhotoRequest;

    move-result-object v0

    return-object v0
.end method
