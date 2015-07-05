.class final Lcom/yelp/android/serializable/df;
.super Lcom/yelp/android/serializable/ah;
.source "TalkTopic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/ah",
        "<",
        "Lcom/yelp/android/serializable/TalkTopic;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/serializable/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/TalkTopic;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/yelp/android/serializable/TalkTopic;

    invoke-direct {v0}, Lcom/yelp/android/serializable/TalkTopic;-><init>()V

    .line 42
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/TalkTopic;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/TalkTopic;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/yelp/android/serializable/TalkTopic;

    invoke-direct {v0}, Lcom/yelp/android/serializable/TalkTopic;-><init>()V

    .line 49
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/TalkTopic;->readFromJson(Lorg/json/JSONObject;)V

    .line 50
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/TalkTopic;
    .locals 1

    .prologue
    .line 37
    new-array v0, p1, [Lcom/yelp/android/serializable/TalkTopic;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/df;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/df;->a(I)[Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/df;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v0

    return-object v0
.end method
