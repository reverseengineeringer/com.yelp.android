.class final Lcom/yelp/android/serializable/ct;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "ReviewSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/ReviewSuggestion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewSuggestion;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/yelp/android/serializable/ReviewSuggestion;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewSuggestion;-><init>()V

    .line 19
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewSuggestion;->readFromParcel(Landroid/os/Parcel;)V

    .line 20
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReviewSuggestion;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/yelp/android/serializable/ReviewSuggestion;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewSuggestion;-><init>()V

    .line 26
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewSuggestion;->readFromJson(Lorg/json/JSONObject;)V

    .line 27
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/ReviewSuggestion;
    .locals 1

    .prologue
    .line 14
    new-array v0, p1, [Lcom/yelp/android/serializable/ReviewSuggestion;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ct;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ct;->a(I)[Lcom/yelp/android/serializable/ReviewSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ct;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReviewSuggestion;

    move-result-object v0

    return-object v0
.end method
