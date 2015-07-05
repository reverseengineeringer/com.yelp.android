.class final Lcom/yelp/android/serializable/db;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "SpecialHours.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/SpecialHours;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/SpecialHours;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/yelp/android/serializable/SpecialHours;

    invoke-direct {v0}, Lcom/yelp/android/serializable/SpecialHours;-><init>()V

    .line 19
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/SpecialHours;->readFromParcel(Landroid/os/Parcel;)V

    .line 20
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/SpecialHours;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/yelp/android/serializable/SpecialHours;

    invoke-direct {v0}, Lcom/yelp/android/serializable/SpecialHours;-><init>()V

    .line 26
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/SpecialHours;->readFromJson(Lorg/json/JSONObject;)V

    .line 27
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/SpecialHours;
    .locals 1

    .prologue
    .line 14
    new-array v0, p1, [Lcom/yelp/android/serializable/SpecialHours;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/db;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/SpecialHours;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/db;->a(I)[Lcom/yelp/android/serializable/SpecialHours;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/db;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/SpecialHours;

    move-result-object v0

    return-object v0
.end method
