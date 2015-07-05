.class public final Lcom/yelp/android/appdata/webrequests/ay;
.super Lcom/yelp/android/appdata/webrequests/av;
.source "ComplimentActionRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/Compliment;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;",
            "Lcom/yelp/android/serializable/Compliment;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    const-string/jumbo v0, "compliment/send"

    invoke-direct {p0, p1, v0, p2}, Lcom/yelp/android/appdata/webrequests/av;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;Lcom/yelp/android/serializable/Compliment;)V

    .line 70
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/ay;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "text"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ay;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string/jumbo v0, "name"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getType()Lcom/yelp/android/serializable/Compliment$ComplimentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Compliment$ComplimentType;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ay;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getItem()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getItem()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getItem()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->mKey:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getComplimentableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ay;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/ay;->a:Lcom/yelp/android/serializable/Compliment;

    .line 77
    return-void
.end method


# virtual methods
.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/av;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Compliment;

    move-result-object v0

    return-object v0
.end method
