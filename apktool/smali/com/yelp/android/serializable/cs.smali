.class final Lcom/yelp/android/serializable/cs;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "ReviewHighlight.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/ReviewHighlight;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewHighlight;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewHighlight;-><init>()V

    .line 64
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewHighlight;->readFromParcel(Landroid/os/Parcel;)V

    .line 65
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReviewHighlight;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewHighlight;-><init>()V

    .line 71
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewHighlight;->readFromJson(Lorg/json/JSONObject;)V

    .line 72
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/ReviewHighlight;
    .locals 1

    .prologue
    .line 58
    new-array v0, p1, [Lcom/yelp/android/serializable/ReviewHighlight;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cs;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewHighlight;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cs;->a(I)[Lcom/yelp/android/serializable/ReviewHighlight;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cs;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReviewHighlight;

    move-result-object v0

    return-object v0
.end method
