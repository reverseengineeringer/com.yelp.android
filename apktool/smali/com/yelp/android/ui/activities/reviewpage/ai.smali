.class Lcom/yelp/android/ui/activities/reviewpage/ai;
.super Ljava/lang/Object;
.source "PanelReviewTranslate.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATED:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->b(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 267
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 268
    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->setTranslatedText(Ljava/lang/String;)V

    .line 270
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->setDisplayTranslatedText(Z)V

    goto :goto_0

    .line 273
    :cond_1
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->b(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "com.yelp.android.review.translate"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a()V

    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->c(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Lcom/yelp/android/ui/activities/reviewpage/aj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->c(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Lcom/yelp/android/ui/activities/reviewpage/aj;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviewpage/aj;->a()V

    .line 281
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->X()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->b(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityFirstTranslation;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 286
    :cond_3
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->b(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 252
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getTranslatedText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 253
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->setDisplayTranslatedText(Z)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->ORIGINAL:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ai;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a()V

    .line 259
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 247
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ai;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/Map;)V

    return-void
.end method
