.class final Lcom/yelp/android/appdata/webrequests/YelpException$1;
.super Ljava/lang/Object;
.source "YelpException.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/YelpException;
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
        "Lcom/yelp/android/appdata/webrequests/YelpException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/YelpException;
    .locals 2

    .prologue
    .line 84
    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->setIsRecoverable(Z)V

    .line 86
    return-object v1

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)[Lcom/yelp/android/appdata/webrequests/YelpException;
    .locals 1

    .prologue
    .line 90
    new-array v0, p1, [Lcom/yelp/android/appdata/webrequests/YelpException;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/YelpException$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/YelpException;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/YelpException$1;->a(I)[Lcom/yelp/android/appdata/webrequests/YelpException;

    move-result-object v0

    return-object v0
.end method
