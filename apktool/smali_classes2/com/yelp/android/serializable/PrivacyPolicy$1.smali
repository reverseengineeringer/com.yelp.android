.class final Lcom/yelp/android/serializable/PrivacyPolicy$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "PrivacyPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/PrivacyPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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
    .line 49
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\s+"

    const-string/jumbo v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PrivacyPolicy;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/yelp/android/serializable/PrivacyPolicy;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PrivacyPolicy;-><init>()V

    .line 59
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->a(Landroid/os/Parcel;)V

    .line 60
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PrivacyPolicy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/yelp/android/serializable/PrivacyPolicy;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PrivacyPolicy;-><init>()V

    .line 66
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->a(Lorg/json/JSONObject;)V

    .line 67
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PrivacyPolicy;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/serializable/PrivacyPolicy$1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/PrivacyPolicy;->a(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PrivacyPolicy;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/serializable/PrivacyPolicy$1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/PrivacyPolicy;->d(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PrivacyPolicy;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/serializable/PrivacyPolicy$1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/PrivacyPolicy;->g(Ljava/lang/String;)V

    .line 73
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/PrivacyPolicy;
    .locals 1

    .prologue
    .line 53
    new-array v0, p1, [Lcom/yelp/android/serializable/PrivacyPolicy;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/PrivacyPolicy$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PrivacyPolicy;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/PrivacyPolicy$1;->a(I)[Lcom/yelp/android/serializable/PrivacyPolicy;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/PrivacyPolicy$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PrivacyPolicy;

    move-result-object v0

    return-object v0
.end method
