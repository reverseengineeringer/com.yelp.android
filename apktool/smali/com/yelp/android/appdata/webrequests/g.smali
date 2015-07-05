.class final Lcom/yelp/android/appdata/webrequests/g;
.super Ljava/lang/Object;
.source "ApiException.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/appdata/webrequests/ApiException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/ApiException;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    new-instance v3, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-direct {v3, v2, v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiException;-><init>(ILorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/g;)V

    return-object v3

    .line 92
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(I)[Lcom/yelp/android/appdata/webrequests/ApiException;
    .locals 1

    .prologue
    .line 101
    new-array v0, p1, [Lcom/yelp/android/appdata/webrequests/ApiException;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/g;->a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/ApiException;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/g;->a(I)[Lcom/yelp/android/appdata/webrequests/ApiException;

    move-result-object v0

    return-object v0
.end method
