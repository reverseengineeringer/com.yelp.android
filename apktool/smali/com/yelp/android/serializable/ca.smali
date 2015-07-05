.class final Lcom/yelp/android/serializable/ca;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "PrivacyPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/PrivacyPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\s+"

    const-string/jumbo v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PrivacyPolicy;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/yelp/android/serializable/PrivacyPolicy;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PrivacyPolicy;-><init>()V

    .line 58
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->readFromParcel(Landroid/os/Parcel;)V

    .line 59
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PrivacyPolicy;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/yelp/android/serializable/PrivacyPolicy;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PrivacyPolicy;-><init>()V

    .line 65
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->readFromJson(Lorg/json/JSONObject;)V

    .line 66
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PrivacyPolicy;->getShareProfileStory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/serializable/ca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/PrivacyPolicy;->setShareProfileStory(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PrivacyPolicy;->getShareDemographicsStory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/serializable/ca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/PrivacyPolicy;->setShareDemographicsStory(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PrivacyPolicy;->getShareBasicInfoStory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/serializable/ca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/PrivacyPolicy;->setShareBasicInfoStory(Ljava/lang/String;)V

    .line 70
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/PrivacyPolicy;
    .locals 1

    .prologue
    .line 52
    new-array v0, p1, [Lcom/yelp/android/serializable/PrivacyPolicy;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ca;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PrivacyPolicy;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ca;->a(I)[Lcom/yelp/android/serializable/PrivacyPolicy;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ca;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PrivacyPolicy;

    move-result-object v0

    return-object v0
.end method
