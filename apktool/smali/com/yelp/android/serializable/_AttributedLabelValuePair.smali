.class abstract Lcom/yelp/android/serializable/_AttributedLabelValuePair;
.super Ljava/lang/Object;
.source "_AttributedLabelValuePair.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mLabel:Ljava/lang/String;

.field protected mValue:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/serializable/_AttributedLabelValuePair;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->mLabel:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->mValue:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string/jumbo v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->mLabel:Ljava/lang/String;

    .line 54
    :cond_0
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->mValue:Ljava/lang/String;

    .line 57
    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->mLabel:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->mValue:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 62
    const-string/jumbo v1, "label"

    iget-object v2, p0, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->mValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 65
    const-string/jumbo v1, "value"

    iget-object v2, p0, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return-void
.end method
