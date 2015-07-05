.class abstract Lcom/yelp/android/serializable/_RichSearchSuggestion;
.super Ljava/lang/Object;
.source "_RichSearchSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAlias:Ljava/lang/String;

.field protected mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

.field protected mDescription:Ljava/lang/String;

.field protected mImagePath:Ljava/lang/String;

.field protected mImageUrl:Ljava/lang/String;

.field protected mSuggestionTypeString:Ljava/lang/String;

.field protected mTerm:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/serializable/_RichSearchSuggestion;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mSuggestionTypeString:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mTerm:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mDescription:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mImagePath:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mImageUrl:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mAlias:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mSuggestionTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public getTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mTerm:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 86
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mSuggestionTypeString:Ljava/lang/String;

    .line 89
    :cond_0
    const-string/jumbo v0, "term"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const-string/jumbo v0, "term"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mTerm:Ljava/lang/String;

    .line 92
    :cond_1
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mDescription:Ljava/lang/String;

    .line 95
    :cond_2
    const-string/jumbo v0, "image_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    const-string/jumbo v0, "image_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mImagePath:Ljava/lang/String;

    .line 98
    :cond_3
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 99
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mImageUrl:Ljava/lang/String;

    .line 101
    :cond_4
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 102
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mAlias:Ljava/lang/String;

    .line 104
    :cond_5
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 105
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 107
    :cond_6
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mSuggestionTypeString:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mTerm:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mDescription:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mImagePath:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mImageUrl:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mAlias:Ljava/lang/String;

    .line 82
    const-class v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 83
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mSuggestionTypeString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mTerm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    return-void
.end method
