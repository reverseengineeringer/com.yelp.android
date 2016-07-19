.class final Lcom/yelp/android/serializable/Tip$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Tip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Tip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/Tip;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Tip;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/yelp/android/serializable/Tip;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Tip;-><init>()V

    .line 56
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Tip;->a(Landroid/os/Parcel;)V

    .line 57
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Tip;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/yelp/android/serializable/Tip;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Tip;-><init>()V

    .line 63
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Tip;->a(Lorg/json/JSONObject;)V

    .line 64
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Tip;
    .locals 1

    .prologue
    .line 50
    new-array v0, p1, [Lcom/yelp/android/serializable/Tip;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Tip$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Tip$1;->a(I)[Lcom/yelp/android/serializable/Tip;

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
    .line 46
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Tip$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    return-object v0
.end method
