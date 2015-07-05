.class public Lcom/yelp/android/serializable/SurveyQuestion;
.super Lcom/yelp/android/serializable/_SurveyQuestion;
.source "SurveyQuestion.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/SurveyQuestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/yelp/android/serializable/dd;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dd;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/SurveyQuestion;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/serializable/_SurveyQuestion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_SurveyQuestion;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAnswers()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_SurveyQuestion;->getAnswers()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getQuestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_SurveyQuestion;->getQuestion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getQuestionIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_SurveyQuestion;->getQuestionIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_SurveyQuestion;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_SurveyQuestion;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_SurveyQuestion;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_SurveyQuestion;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
