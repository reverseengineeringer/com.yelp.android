.class final Lcom/yelp/android/serializable/cv;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "RichSearchSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/RichSearchSuggestion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/RichSearchSuggestion;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-direct {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;-><init>()V

    .line 60
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->readFromParcel(Landroid/os/Parcel;)V

    .line 61
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/RichSearchSuggestion;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-direct {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;-><init>()V

    .line 67
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->readFromJson(Lorg/json/JSONObject;)V

    .line 68
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/RichSearchSuggestion;
    .locals 1

    .prologue
    .line 54
    new-array v0, p1, [Lcom/yelp/android/serializable/RichSearchSuggestion;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cv;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/RichSearchSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cv;->a(I)[Lcom/yelp/android/serializable/RichSearchSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cv;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/RichSearchSuggestion;

    move-result-object v0

    return-object v0
.end method
