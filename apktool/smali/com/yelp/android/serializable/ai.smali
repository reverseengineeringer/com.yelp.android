.class final Lcom/yelp/android/serializable/ai;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/Event;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 437
    new-instance v0, Lcom/yelp/android/serializable/Event;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Event;-><init>()V

    .line 438
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Event;->readFromParcel(Landroid/os/Parcel;)V

    .line 439
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 444
    new-instance v0, Lcom/yelp/android/serializable/Event;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Event;-><init>()V

    .line 445
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Event;->readFromJson(Lorg/json/JSONObject;)V

    .line 446
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 432
    new-array v0, p1, [Lcom/yelp/android/serializable/Event;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ai;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ai;->a(I)[Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ai;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method
