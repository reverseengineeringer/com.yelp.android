.class public Lcom/yelp/android/appdata/webrequests/fa;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "ReviewSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/fb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/ReviewSource;Lcom/yelp/android/appdata/webrequests/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/yelp/android/ui/activities/reviews/ReviewSource;",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "/review/save"

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 24
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/fa;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/fa;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "rating"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/fa;->addPostParam(Ljava/lang/String;I)V

    .line 27
    const-string/jumbo v0, "source"

    invoke-virtual {p4}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/fa;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;Lcom/yelp/android/appdata/webrequests/j;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ui/activities/reviews/ReviewSource;",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/fa;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/ReviewSource;Lcom/yelp/android/appdata/webrequests/j;)V

    .line 33
    const-string/jumbo v0, "review_id"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/fa;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/fb;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 91
    .line 99
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    move-object v1, v0

    .line 103
    :goto_0
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    const-string/jumbo v0, "warning"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    const-string/jumbo v0, "converted_to_tip"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 106
    const-string/jumbo v0, "review_id"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    const-string/jumbo v0, "survey_questions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v6, Lcom/yelp/android/serializable/SurveyQuestion;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v6}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v6

    .line 109
    const-string/jumbo v0, "review_suggestions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v7, Lcom/yelp/android/serializable/ReviewSuggestion;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v7}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v7

    .line 112
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fb;

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/appdata/webrequests/fb;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v0

    :cond_0
    move-object v1, v5

    goto :goto_0
.end method

.method public isLocationAbsolutelyRequired()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/fa;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/fb;

    move-result-object v0

    return-object v0
.end method
