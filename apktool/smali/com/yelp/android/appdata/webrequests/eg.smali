.class public Lcom/yelp/android/appdata/webrequests/eg;
.super Lcom/yelp/android/appdata/webrequests/ep;
.source "RichSearchSuggestRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/appdata/webrequests/ep",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Landroid/location/Location;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    invoke-static {p2}, Lcom/yelp/android/appdata/webrequests/eg;->a(Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/ep;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Landroid/location/Location;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "term"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/eg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/eg;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const-string/jumbo v0, "location"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/eg;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/eg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/eg;->j:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v3, Lcom/yelp/android/appdata/webrequests/eg;->a:Landroid/location/Location;

    const-string/jumbo v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/eg;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Landroid/location/Location;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 38
    return-void
.end method

.method private static a(Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->CONTRIBUTION:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    if-ne p0, v0, :cond_0

    .line 45
    const-string/jumbo v0, "suggest/active_nearby"

    .line 49
    :goto_0
    return-object v0

    .line 46
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->BOOKMARK:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    if-ne p0, v0, :cond_1

    .line 47
    const-string/jumbo v0, "bookmarks/suggest"

    goto :goto_0

    .line 49
    :cond_1
    const-string/jumbo v0, "suggest/rich"

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    sget-object v3, Lcom/yelp/android/serializable/RichSearchSuggestion;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/ep;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/webrequests/eg;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/eg;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
