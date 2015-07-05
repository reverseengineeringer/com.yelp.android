.class final Lcom/yelp/android/serializable/dj;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "UpdatePrompt.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/UpdatePrompt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/UpdatePrompt;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/yelp/android/serializable/UpdatePrompt;

    invoke-direct {v0}, Lcom/yelp/android/serializable/UpdatePrompt;-><init>()V

    .line 31
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/UpdatePrompt;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/UpdatePrompt;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/yelp/android/serializable/UpdatePrompt;

    invoke-direct {v0}, Lcom/yelp/android/serializable/UpdatePrompt;-><init>()V

    .line 38
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/UpdatePrompt;->readFromJson(Lorg/json/JSONObject;)V

    .line 39
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/UpdatePrompt;
    .locals 1

    .prologue
    .line 26
    new-array v0, p1, [Lcom/yelp/android/serializable/UpdatePrompt;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dj;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/UpdatePrompt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dj;->a(I)[Lcom/yelp/android/serializable/UpdatePrompt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dj;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/UpdatePrompt;

    move-result-object v0

    return-object v0
.end method
