.class abstract Lcom/yelp/android/serializable/_AttributeFilter;
.super Ljava/lang/Object;
.source "_AttributeFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAlias:Ljava/lang/String;

.field protected mIsPopular:Z

.field protected mLocalizedLabel:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/serializable/_AttributeFilter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yelp/android/serializable/_AttributeFilter;->mAlias:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/yelp/android/serializable/_AttributeFilter;->mLocalizedLabel:Ljava/lang/String;

    .line 23
    iput-boolean p3, p0, Lcom/yelp/android/serializable/_AttributeFilter;->mIsPopular:Z

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/serializable/_AttributeFilter;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/serializable/_AttributeFilter;->mLocalizedLabel:Ljava/lang/String;

    return-object v0
.end method

.method public isPopular()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_AttributeFilter;->mIsPopular:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AttributeFilter;->mAlias:Ljava/lang/String;

    .line 62
    :cond_0
    const-string/jumbo v0, "localized_label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    const-string/jumbo v0, "localized_label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AttributeFilter;->mLocalizedLabel:Ljava/lang/String;

    .line 65
    :cond_1
    const-string/jumbo v0, "is_popular"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_AttributeFilter;->mIsPopular:Z

    .line 66
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AttributeFilter;->mAlias:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AttributeFilter;->mLocalizedLabel:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 55
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_AttributeFilter;->mIsPopular:Z

    .line 56
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/_AttributeFilter;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/yelp/android/serializable/_AttributeFilter;->mLocalizedLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_AttributeFilter;->mIsPopular:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 49
    return-void
.end method
