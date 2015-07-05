.class final Lcom/yelp/android/appdata/webrequests/x;
.super Ljava/lang/Object;
.source "BusinessMediaRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
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
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 5

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-static {v1, v0, v4}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->photosStartingAtSpecificPhoto(Ljava/lang/String;Ljava/lang/String;I)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 162
    :cond_0
    if-eqz v2, :cond_1

    .line 163
    invoke-static {v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->singleVideo(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    invoke-direct {v0, v1, v3, v4}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public a(I)[Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 1

    .prologue
    .line 171
    new-array v0, p1, [Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/x;->a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/x;->a(I)[Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    return-object v0
.end method
