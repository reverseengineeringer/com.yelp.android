.class public Lcom/yelp/android/serializable/Movie;
.super Lcom/yelp/android/serializable/_Movie;
.source "Movie.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Movie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/serializable/bi;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bi;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Movie;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Movie;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Movie;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Movie;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Movie;->getRating()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRuntime()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Movie;->getRuntime()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getShowtimes()[I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Movie;->getShowtimes()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTicketingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Movie;->getTicketingUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Movie;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Movie;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Movie;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Movie;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Movie;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
