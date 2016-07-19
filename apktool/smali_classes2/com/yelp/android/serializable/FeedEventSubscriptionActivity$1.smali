.class final Lcom/yelp/android/serializable/FeedEventSubscriptionActivity$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "FeedEventSubscriptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;-><init>()V

    .line 41
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;->a(Landroid/os/Parcel;)V

    .line 42
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;-><init>()V

    .line 48
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;->a(Lorg/json/JSONObject;)V

    .line 49
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;
    .locals 1

    .prologue
    .line 36
    new-array v0, p1, [Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity$1;->a(I)[Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;

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
    .line 33
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;

    move-result-object v0

    return-object v0
.end method
