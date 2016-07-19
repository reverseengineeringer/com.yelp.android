.class interface abstract Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse$a;
.super Ljava/lang/Object;
.source "BusinessSearchRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
