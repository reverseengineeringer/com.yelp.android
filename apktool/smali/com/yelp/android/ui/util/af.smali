.class public Lcom/yelp/android/ui/util/af;
.super Lcom/yelp/android/ui/util/SuggestionFilter;
.source "RichSearchSuggestionFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/ui/util/SuggestionFilter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Lcom/yelp/android/ui/util/SuggestionFilter$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z",
            "Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;",
            "Lcom/yelp/android/ui/util/SuggestionFilter$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/ui/util/SuggestionFilter;-><init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Lcom/yelp/android/ui/util/SuggestionFilter$b;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected a()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SearchBarSuggestRichDisplay:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method protected a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Landroid/location/Location;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/ep;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yelp/android/appdata/webrequests/ep",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    if-eqz p3, :cond_0

    .line 36
    new-instance v0, Lcom/yelp/android/appdata/webrequests/eg;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/af;->d()Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    move-result-object v2

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/eg;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Landroid/location/Location;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/eg;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/af;->d()Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/yelp/android/appdata/webrequests/eg;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchBarSuggestRich:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 54
    return-void
.end method
