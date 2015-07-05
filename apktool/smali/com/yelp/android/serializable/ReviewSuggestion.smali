.class public Lcom/yelp/android/serializable/ReviewSuggestion;
.super Lcom/yelp/android/serializable/_ReviewSuggestion;
.source "ReviewSuggestion.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/ReviewSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/yelp/android/serializable/ct;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ct;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ReviewSuggestion;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReviewSuggestion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewSuggestion;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewSuggestion;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewSuggestion;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLatestReviewRating()I
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewSuggestion;->getLatestReviewRating()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getReasonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewSuggestion;->getReasonText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReviewActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewSuggestion;->getReviewActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReviewSuggestion;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReviewSuggestion;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_ReviewSuggestion;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
