.class final Lcom/yelp/android/serializable/ReviewHighlight$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "ReviewHighlight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/ReviewHighlight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/ReviewHighlight;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewHighlight;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewHighlight;-><init>()V

    .line 65
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewHighlight;->a(Landroid/os/Parcel;)V

    .line 66
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReviewHighlight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewHighlight;-><init>()V

    .line 72
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewHighlight;->a(Lorg/json/JSONObject;)V

    .line 73
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/ReviewHighlight;
    .locals 1

    .prologue
    .line 59
    new-array v0, p1, [Lcom/yelp/android/serializable/ReviewHighlight;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReviewHighlight$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewHighlight;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReviewHighlight$1;->a(I)[Lcom/yelp/android/serializable/ReviewHighlight;

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
    .line 55
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReviewHighlight$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReviewHighlight;

    move-result-object v0

    return-object v0
.end method
