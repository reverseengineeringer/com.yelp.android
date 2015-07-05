.class final Lcom/yelp/android/serializable/ac;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "ConversationMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/ConversationMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ConversationMessage;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/yelp/android/serializable/ConversationMessage;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ConversationMessage;-><init>()V

    .line 53
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ConversationMessage;->readFromParcel(Landroid/os/Parcel;)V

    .line 54
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ConversationMessage;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/yelp/android/serializable/ConversationMessage;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ConversationMessage;-><init>()V

    .line 60
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ConversationMessage;->readFromJson(Lorg/json/JSONObject;)V

    .line 61
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/ConversationMessage;
    .locals 1

    .prologue
    .line 47
    new-array v0, p1, [Lcom/yelp/android/serializable/ConversationMessage;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ac;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ConversationMessage;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ac;->a(I)[Lcom/yelp/android/serializable/ConversationMessage;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ac;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ConversationMessage;

    move-result-object v0

    return-object v0
.end method
