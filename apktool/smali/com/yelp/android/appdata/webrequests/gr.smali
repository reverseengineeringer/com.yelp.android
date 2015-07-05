.class final Lcom/yelp/android/appdata/webrequests/gr;
.super Ljava/lang/Object;
.source "UserLocalMediaRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;
    .locals 6

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 108
    new-instance v0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;
    .locals 1

    .prologue
    .line 113
    new-array v0, p1, [Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/gr;->a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/gr;->a(I)[Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    move-result-object v0

    return-object v0
.end method
