.class final Lcom/yelp/android/serializable/BusinessLocalAd$1;
.super Lcom/yelp/android/serializable/a;
.source "BusinessLocalAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/BusinessLocalAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/a",
        "<",
        "Lcom/yelp/android/serializable/BusinessLocalAd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/yelp/android/serializable/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BusinessLocalAd;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/yelp/android/serializable/BusinessLocalAd;

    invoke-direct {v0}, Lcom/yelp/android/serializable/BusinessLocalAd;-><init>()V

    .line 65
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/BusinessLocalAd;->a(Landroid/os/Parcel;)V

    .line 66
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/BusinessLocalAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/yelp/android/serializable/BusinessLocalAd;

    invoke-direct {v0}, Lcom/yelp/android/serializable/BusinessLocalAd;-><init>()V

    .line 77
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/BusinessLocalAd;->a(Lorg/json/JSONObject;)V

    .line 78
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/BusinessLocalAd;
    .locals 1

    .prologue
    .line 71
    new-array v0, p1, [Lcom/yelp/android/serializable/BusinessLocalAd;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/BusinessLocalAd$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BusinessLocalAd;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/BusinessLocalAd$1;->a(I)[Lcom/yelp/android/serializable/BusinessLocalAd;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/BusinessLocalAd$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/BusinessLocalAd;

    move-result-object v0

    return-object v0
.end method
