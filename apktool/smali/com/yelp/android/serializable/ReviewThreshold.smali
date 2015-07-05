.class public Lcom/yelp/android/serializable/ReviewThreshold;
.super Lcom/yelp/android/serializable/_ReviewThreshold;
.source "ReviewThreshold.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/_ReviewThreshold;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/yelp/android/serializable/ReviewThreshold;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/ReviewThreshold;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/yelp/android/serializable/cu;

    invoke-direct {v0}, Lcom/yelp/android/serializable/cu;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ReviewThreshold;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yelp/android/serializable/ReviewThreshold;->mTextAtThreshold:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/yelp/android/serializable/ReviewThreshold;->mThreshold:I

    .line 21
    iput p3, p0, Lcom/yelp/android/serializable/ReviewThreshold;->mRedVal:I

    .line 22
    iput p4, p0, Lcom/yelp/android/serializable/ReviewThreshold;->mGreenVal:I

    .line 23
    iput p5, p0, Lcom/yelp/android/serializable/ReviewThreshold;->mBlueVal:I

    .line 24
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/yelp/android/serializable/ReviewThreshold;)I
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewThreshold;->getThreshold()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/serializable/ReviewThreshold;->mThreshold:I

    if-ne v0, v1, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewThreshold;->getThreshold()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/serializable/ReviewThreshold;->mThreshold:I

    if-le v0, v1, :cond_1

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/yelp/android/serializable/ReviewThreshold;

    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReviewThreshold;->compareTo(Lcom/yelp/android/serializable/ReviewThreshold;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBlueVal()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;->getBlueVal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getGreenVal()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;->getGreenVal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRedVal()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;->getRedVal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextAtThreshold()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;->getTextAtThreshold()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getThreshold()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewThreshold;->getThreshold()I

    move-result v0

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 56
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReviewThreshold;->readFromJson(Lorg/json/JSONObject;)V

    .line 57
    const-string/jumbo v0, "bold_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string/jumbo v0, "bold_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/serializable/ReviewThreshold;->mRedVal:I

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/serializable/ReviewThreshold;->mGreenVal:I

    .line 61
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/ReviewThreshold;->mBlueVal:I

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    iput v1, p0, Lcom/yelp/android/serializable/ReviewThreshold;->mRedVal:I

    .line 64
    iput v1, p0, Lcom/yelp/android/serializable/ReviewThreshold;->mGreenVal:I

    .line 65
    iput v1, p0, Lcom/yelp/android/serializable/ReviewThreshold;->mBlueVal:I

    goto :goto_0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReviewThreshold;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_ReviewThreshold;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
