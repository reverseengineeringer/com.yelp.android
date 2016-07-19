.class final Lcom/yelp/android/serializable/CheckInFeedback$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "CheckInFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/CheckInFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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
    .line 23
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/CheckInFeedback;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/yelp/android/serializable/CheckInFeedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/CheckInFeedback;-><init>()V

    .line 33
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/CheckInFeedback;->a(Landroid/os/Parcel;)V

    .line 34
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/CheckInFeedback;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/yelp/android/serializable/CheckInFeedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/CheckInFeedback;-><init>()V

    .line 40
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/CheckInFeedback;->a(Lorg/json/JSONObject;)V

    .line 41
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/CheckInFeedback;
    .locals 1

    .prologue
    .line 27
    new-array v0, p1, [Lcom/yelp/android/serializable/CheckInFeedback;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/CheckInFeedback$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/CheckInFeedback;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/CheckInFeedback$1;->a(I)[Lcom/yelp/android/serializable/CheckInFeedback;

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
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/CheckInFeedback$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/CheckInFeedback;

    move-result-object v0

    return-object v0
.end method
