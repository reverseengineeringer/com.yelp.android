.class final Lcom/yelp/android/serializable/dg;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Tip.java"


# annotations
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
    .line 40
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Tip;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/yelp/android/serializable/Tip;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Tip;-><init>()V

    .line 50
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Tip;->readFromParcel(Landroid/os/Parcel;)V

    .line 51
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Tip;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/yelp/android/serializable/Tip;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Tip;-><init>()V

    .line 57
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Tip;->readFromJson(Lorg/json/JSONObject;)V

    .line 58
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Tip;
    .locals 1

    .prologue
    .line 44
    new-array v0, p1, [Lcom/yelp/android/serializable/Tip;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dg;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dg;->a(I)[Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dg;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    return-object v0
.end method
