.class final Lcom/yelp/android/serializable/TalkTopic$1;
.super Lcom/yelp/android/serializable/a;
.source "TalkTopic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/TalkTopic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/a",
        "<",
        "Lcom/yelp/android/serializable/TalkTopic;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yelp/android/serializable/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/TalkTopic;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/yelp/android/serializable/TalkTopic;

    invoke-direct {v0}, Lcom/yelp/android/serializable/TalkTopic;-><init>()V

    .line 44
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/TalkTopic;->a(Landroid/os/Parcel;)V

    .line 45
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/TalkTopic;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/yelp/android/serializable/TalkTopic;

    invoke-direct {v0}, Lcom/yelp/android/serializable/TalkTopic;-><init>()V

    .line 51
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/TalkTopic;->a(Lorg/json/JSONObject;)V

    .line 52
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/TalkTopic;
    .locals 1

    .prologue
    .line 39
    new-array v0, p1, [Lcom/yelp/android/serializable/TalkTopic;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/TalkTopic$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/TalkTopic$1;->a(I)[Lcom/yelp/android/serializable/TalkTopic;

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
    .line 36
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/TalkTopic$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v0

    return-object v0
.end method
