.class final Lcom/yelp/android/serializable/y;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "CheckInFeedback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/CheckInFeedback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/CheckInFeedback;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/yelp/android/serializable/CheckInFeedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/CheckInFeedback;-><init>()V

    .line 32
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/CheckInFeedback;->readFromParcel(Landroid/os/Parcel;)V

    .line 33
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/CheckInFeedback;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/yelp/android/serializable/CheckInFeedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/CheckInFeedback;-><init>()V

    .line 39
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/CheckInFeedback;->readFromJson(Lorg/json/JSONObject;)V

    .line 40
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/CheckInFeedback;
    .locals 1

    .prologue
    .line 26
    new-array v0, p1, [Lcom/yelp/android/serializable/CheckInFeedback;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/y;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/CheckInFeedback;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/y;->a(I)[Lcom/yelp/android/serializable/CheckInFeedback;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/y;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/CheckInFeedback;

    move-result-object v0

    return-object v0
.end method
