.class final Lcom/yelp/android/serializable/p;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "BusinessRepresentative.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/BusinessRepresentative;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BusinessRepresentative;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/yelp/android/serializable/BusinessRepresentative;

    invoke-direct {v0}, Lcom/yelp/android/serializable/BusinessRepresentative;-><init>()V

    .line 40
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/BusinessRepresentative;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/BusinessRepresentative;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/yelp/android/serializable/BusinessRepresentative;

    invoke-direct {v0}, Lcom/yelp/android/serializable/BusinessRepresentative;-><init>()V

    .line 47
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/BusinessRepresentative;->readFromJson(Lorg/json/JSONObject;)V

    .line 48
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/BusinessRepresentative;
    .locals 1

    .prologue
    .line 35
    new-array v0, p1, [Lcom/yelp/android/serializable/BusinessRepresentative;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/p;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BusinessRepresentative;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/p;->a(I)[Lcom/yelp/android/serializable/BusinessRepresentative;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/p;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/BusinessRepresentative;

    move-result-object v0

    return-object v0
.end method
