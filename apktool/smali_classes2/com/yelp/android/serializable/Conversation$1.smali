.class final Lcom/yelp/android/serializable/Conversation$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/Conversation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Conversation;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/yelp/android/serializable/Conversation;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Conversation;-><init>()V

    .line 38
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Conversation;->a(Landroid/os/Parcel;)V

    .line 39
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Conversation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/yelp/android/serializable/Conversation;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Conversation;-><init>()V

    .line 45
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Conversation;->a(Lorg/json/JSONObject;)V

    .line 46
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Conversation;
    .locals 1

    .prologue
    .line 32
    new-array v0, p1, [Lcom/yelp/android/serializable/Conversation;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Conversation$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Conversation$1;->a(I)[Lcom/yelp/android/serializable/Conversation;

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
    .line 28
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Conversation$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v0

    return-object v0
.end method
