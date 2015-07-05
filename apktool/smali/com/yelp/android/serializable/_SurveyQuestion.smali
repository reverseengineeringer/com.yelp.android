.class abstract Lcom/yelp/android/serializable/_SurveyQuestion;
.super Ljava/lang/Object;
.source "_SurveyQuestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAnswers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SurveyAnswer;",
            ">;"
        }
    .end annotation
.end field

.field protected mQuestion:Ljava/lang/String;

.field protected mQuestionIdentifier:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method protected constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SurveyAnswer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/serializable/_SurveyQuestion;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mAnswers:Ljava/util/ArrayList;

    .line 24
    iput-object p2, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mQuestion:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mQuestionIdentifier:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getAnswers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SurveyAnswer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mAnswers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mQuestion:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestionIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mQuestionIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v0, "answers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    const-string/jumbo v0, "answers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/SurveyAnswer;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mAnswers:Ljava/util/ArrayList;

    .line 65
    :goto_0
    const-string/jumbo v0, "question"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-string/jumbo v0, "question"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mQuestion:Ljava/lang/String;

    .line 68
    :cond_0
    const-string/jumbo v0, "question_identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const-string/jumbo v0, "question_identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mQuestionIdentifier:Ljava/lang/String;

    .line 71
    :cond_1
    return-void

    .line 63
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mAnswers:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/yelp/android/serializable/SurveyAnswer;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mAnswers:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mQuestion:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mQuestionIdentifier:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mAnswers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 76
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mAnswers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SurveyAnswer;

    .line 78
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SurveyAnswer;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 80
    :cond_0
    const-string/jumbo v0, "answers"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mQuestion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 83
    const-string/jumbo v0, "question"

    iget-object v2, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mQuestion:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mQuestionIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 86
    const-string/jumbo v0, "question_identifier"

    iget-object v2, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mQuestionIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    :cond_3
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mAnswers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mQuestion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/yelp/android/serializable/_SurveyQuestion;->mQuestionIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return-void
.end method
