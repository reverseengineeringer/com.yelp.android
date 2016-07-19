.class final Lcom/yelp/android/serializable/FeedEventCreatedActivity$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "FeedEventCreatedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/FeedEventCreatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/FeedEventCreatedActivity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/FeedEventCreatedActivity;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/yelp/android/serializable/FeedEventCreatedActivity;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FeedEventCreatedActivity;-><init>()V

    .line 33
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/FeedEventCreatedActivity;->a(Landroid/os/Parcel;)V

    .line 34
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/FeedEventCreatedActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/yelp/android/serializable/FeedEventCreatedActivity;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FeedEventCreatedActivity;-><init>()V

    .line 40
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/FeedEventCreatedActivity;->a(Lorg/json/JSONObject;)V

    .line 41
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/FeedEventCreatedActivity;
    .locals 1

    .prologue
    .line 28
    new-array v0, p1, [Lcom/yelp/android/serializable/FeedEventCreatedActivity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/FeedEventCreatedActivity$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/FeedEventCreatedActivity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/FeedEventCreatedActivity$1;->a(I)[Lcom/yelp/android/serializable/FeedEventCreatedActivity;

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
    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/FeedEventCreatedActivity$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/FeedEventCreatedActivity;

    move-result-object v0

    return-object v0
.end method
