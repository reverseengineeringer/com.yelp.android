.class public Lcom/yelp/android/appdata/webrequests/dz;
.super Lcom/yelp/android/appdata/webrequests/k;
.source "ReviewSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/dz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/dz$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/ReviewSource;Lcom/yelp/android/appdata/webrequests/k$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/yelp/android/ui/activities/reviews/ReviewSource;",
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dz$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "/review/save"

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/k;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 34
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/dz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/dz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, "rating"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/dz;->b(Ljava/lang/String;I)V

    .line 37
    const-string/jumbo v0, "source"

    invoke-virtual {p4}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/dz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;Lcom/yelp/android/appdata/webrequests/k$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ui/activities/reviews/ReviewSource;",
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dz$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/dz;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/ReviewSource;Lcom/yelp/android/appdata/webrequests/k$b;)V

    .line 48
    const-string/jumbo v0, "review_id"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/dz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/dz$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 110
    .line 118
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    move-object v1, v0

    .line 122
    :goto_0
    const-string/jumbo v0, "review"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Lcom/yelp/android/serializable/YelpBusinessReview;->CREATOR:Lcom/yelp/android/serializable/a;

    const-string/jumbo v2, "review"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/a;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    move-object v5, v0

    .line 125
    :goto_1
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    const-string/jumbo v0, "warning"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    const-string/jumbo v0, "converted_to_tip"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 128
    const-string/jumbo v0, "survey_questions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v6, Lcom/yelp/android/serializable/SurveyQuestion;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v6}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v6

    .line 131
    const-string/jumbo v0, "review_suggestions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v7, Lcom/yelp/android/serializable/ReviewSuggestion;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v7}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v7

    .line 135
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dz$a;

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/appdata/webrequests/dz$a;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;ZLjava/lang/String;Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v0

    :cond_0
    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v1, v3

    goto :goto_0
.end method

.method public synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/dz;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/dz$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method
