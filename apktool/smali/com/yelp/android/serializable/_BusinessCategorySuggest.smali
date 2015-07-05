.class abstract Lcom/yelp/android/serializable/_BusinessCategorySuggest;
.super Ljava/lang/Object;
.source "_BusinessCategorySuggest.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAlias:Ljava/lang/String;

.field protected mExactMatch:Z

.field protected mParentTitle:Ljava/lang/String;

.field protected mParentTitleMatch:Z

.field protected mTitle:Ljava/lang/String;

.field protected mTitleMatch:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/serializable/_BusinessCategorySuggest;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mAlias:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mParentTitle:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mTitle:Ljava/lang/String;

    .line 26
    iput-boolean p4, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mExactMatch:Z

    .line 27
    iput-boolean p5, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mTitleMatch:Z

    .line 28
    iput-boolean p6, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mParentTitleMatch:Z

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getExactMatch()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mExactMatch:Z

    return v0
.end method

.method public getParentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mParentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getParentTitleMatch()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mParentTitleMatch:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleMatch()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mTitleMatch:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mAlias:Ljava/lang/String;

    .line 80
    :cond_0
    const-string/jumbo v0, "parent_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const-string/jumbo v0, "parent_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mParentTitle:Ljava/lang/String;

    .line 83
    :cond_1
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mTitle:Ljava/lang/String;

    .line 86
    :cond_2
    const-string/jumbo v0, "exact_match"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mExactMatch:Z

    .line 87
    const-string/jumbo v0, "title_match"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mTitleMatch:Z

    .line 88
    const-string/jumbo v0, "parent_title_match"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mParentTitleMatch:Z

    .line 89
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mAlias:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mParentTitle:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mTitle:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 71
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mExactMatch:Z

    .line 72
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mTitleMatch:Z

    .line 73
    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mParentTitleMatch:Z

    .line 74
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mParentTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mExactMatch:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mTitleMatch:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_BusinessCategorySuggest;->mParentTitleMatch:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 64
    return-void
.end method
