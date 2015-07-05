.class public Lcom/yelp/android/serializable/SearchResultAnnotation;
.super Lcom/yelp/android/serializable/_SearchResultAnnotation;
.source "SearchResultAnnotation.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/SearchResultAnnotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/yelp/android/serializable/cy;

    invoke-direct {v0}, Lcom/yelp/android/serializable/cy;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/SearchResultAnnotation;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 65
    check-cast p1, Lcom/yelp/android/serializable/SearchResultAnnotation;

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getRedVal()I

    move-result v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getRedVal()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getBlueVal()I

    move-result v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getBlueVal()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getGreenVal()I

    move-result v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getGreenVal()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getImagePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_5
    :goto_1
    move v1, v0

    goto :goto_0

    .line 76
    :cond_6
    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 79
    :cond_7
    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 82
    :cond_8
    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getImagePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto/16 :goto_0

    .line 87
    :cond_9
    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_1
.end method

.method public bridge synthetic getBlueVal()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->getBlueVal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getGreenVal()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->getGreenVal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->getImagePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRedVal()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->getRedVal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 43
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->readFromJson(Lorg/json/JSONObject;)V

    .line 44
    const-string/jumbo v0, "title_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const-string/jumbo v0, "title_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 46
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/serializable/SearchResultAnnotation;->mRedVal:I

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/serializable/SearchResultAnnotation;->mGreenVal:I

    .line 48
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/SearchResultAnnotation;->mBlueVal:I

    .line 54
    :goto_0
    return-void

    .line 50
    :cond_0
    iput v1, p0, Lcom/yelp/android/serializable/SearchResultAnnotation;->mRedVal:I

    .line 51
    iput v1, p0, Lcom/yelp/android/serializable/SearchResultAnnotation;->mGreenVal:I

    .line 52
    iput v1, p0, Lcom/yelp/android/serializable/SearchResultAnnotation;->mBlueVal:I

    goto :goto_0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_SearchResultAnnotation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
