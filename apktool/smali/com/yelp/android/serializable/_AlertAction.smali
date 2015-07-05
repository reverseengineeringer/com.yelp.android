.class abstract Lcom/yelp/android/serializable/_AlertAction;
.super Ljava/lang/Object;
.source "_AlertAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mActedLabel:Ljava/lang/String;

.field protected mLabel:Ljava/lang/String;

.field protected mPath:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/serializable/_AlertAction;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yelp/android/serializable/_AlertAction;->mLabel:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/yelp/android/serializable/_AlertAction;->mPath:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/yelp/android/serializable/_AlertAction;->mActedLabel:Ljava/lang/String;

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

.method public getActedLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertAction;->mActedLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertAction;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertAction;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const-string/jumbo v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertAction;->mLabel:Ljava/lang/String;

    .line 61
    :cond_0
    const-string/jumbo v0, "path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const-string/jumbo v0, "path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertAction;->mPath:Ljava/lang/String;

    .line 64
    :cond_1
    const-string/jumbo v0, "acted_label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    const-string/jumbo v0, "acted_label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertAction;->mActedLabel:Ljava/lang/String;

    .line 67
    :cond_2
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertAction;->mLabel:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertAction;->mPath:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertAction;->mActedLabel:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/yelp/android/serializable/_AlertAction;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    const-string/jumbo v1, "label"

    iget-object v2, p0, Lcom/yelp/android/serializable/_AlertAction;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_AlertAction;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 75
    const-string/jumbo v1, "path"

    iget-object v2, p0, Lcom/yelp/android/serializable/_AlertAction;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_AlertAction;->mActedLabel:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 78
    const-string/jumbo v1, "acted_label"

    iget-object v2, p0, Lcom/yelp/android/serializable/_AlertAction;->mActedLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    :cond_2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertAction;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertAction;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertAction;->mActedLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return-void
.end method
