.class public Lcom/yelp/android/serializable/SurveyAnswer;
.super Lcom/yelp/android/serializable/_SurveyAnswer;
.source "SurveyAnswer.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/SurveyAnswer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/yelp/android/serializable/dc;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dc;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/SurveyAnswer;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/serializable/_SurveyAnswer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_SurveyAnswer;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAnswerIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_SurveyAnswer;->getAnswerIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSuccessMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_SurveyAnswer;->getSuccessMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_SurveyAnswer;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_SurveyAnswer;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_SurveyAnswer;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_SurveyAnswer;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_SurveyAnswer;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_SurveyAnswer;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
