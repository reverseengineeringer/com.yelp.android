.class Lcom/yelp/android/ui/activities/reviewpage/ah;
.super Ljava/lang/Object;
.source "PanelReviewTranslate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ah;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ah;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATING:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ah;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a()V

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ah;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

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

    .line 236
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getTranslatedText()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ah;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Ljava/util/List;)V

    .line 241
    return-void
.end method
