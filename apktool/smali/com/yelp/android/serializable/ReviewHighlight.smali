.class public Lcom/yelp/android/serializable/ReviewHighlight;
.super Lcom/yelp/android/serializable/_ReviewHighlight;
.source "ReviewHighlight.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/ReviewHighlight;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mReviewHighlightType:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/yelp/android/serializable/cs;

    invoke-direct {v0}, Lcom/yelp/android/serializable/cs;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ReviewHighlight;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarkedUpSentence(Landroid/content/Context;)Landroid/text/Spanned;
    .locals 5

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704af

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReviewHighlight;->getSentence()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReviewCount()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->getReviewCount()I

    move-result v0

    return v0
.end method

.method public getReviewHighlightType()Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewHighlight;->mReviewHighlightType:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReviewHighlight;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/ReviewHighlight;->mReviewHighlightType:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewHighlight;->mReviewHighlightType:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    return-object v0
.end method

.method public bridge synthetic getReviewId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->getReviewId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSentence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->getSentence()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewHighlight;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReviewHighlight;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReviewHighlight;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_ReviewHighlight;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
