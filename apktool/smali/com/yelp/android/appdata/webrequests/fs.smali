.class public Lcom/yelp/android/appdata/webrequests/fs;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "SaveTopicRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/ft;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/appdata/webrequests/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "talk/topic/save"

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->COARSE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->DAY:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->METERS:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 32
    const-string/jumbo v0, "address"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/fs;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/fs;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/fs;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "category"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/fs;->addPostParam(Ljava/lang/String;I)V

    .line 36
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/fs;->a:Z

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ft;
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    const-string/jumbo v1, "topic"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    sget-object v0, Lcom/yelp/android/serializable/TalkTopic;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "topic"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TalkTopic;

    .line 45
    :cond_0
    const-string/jumbo v1, "revision"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    new-instance v2, Lcom/yelp/android/appdata/webrequests/ft;

    invoke-direct {v2, v0, v1}, Lcom/yelp/android/appdata/webrequests/ft;-><init>(Lcom/yelp/android/serializable/TalkTopic;Ljava/lang/String;)V

    return-object v2
.end method

.method public isLocationAbsolutelyRequired()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/fs;->a:Z

    return v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/fs;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ft;

    move-result-object v0

    return-object v0
.end method
