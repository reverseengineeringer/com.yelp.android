.class Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;
.super Ljava/lang/Object;
.source "PanelReviewTranslate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATED:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    if-ne v0, v1, :cond_2

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->ORIGINAL:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->b(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 194
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Z)V

    goto :goto_0

    .line 196
    :cond_0
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->b(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "com.yelp.android.review.translate"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a()V

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->c(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->c(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$a;->a()V

    .line 239
    :cond_1
    :goto_1
    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->ORIGINAL:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    if-ne v0, v1, :cond_1

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->b(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 210
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->G()Lcom/yelp/android/serializable/TranslatedReview;

    move-result-object v3

    if-nez v3, :cond_3

    .line 211
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 214
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->b(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 217
    invoke-virtual {v0, v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Z)V

    goto :goto_3

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    sget-object v2, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATING:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a()V

    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Ljava/util/List;)V

    goto :goto_1

    .line 225
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATED:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->b(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 227
    invoke-virtual {v0, v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Z)V

    goto :goto_4

    .line 229
    :cond_7
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->b(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "com.yelp.android.review.translate"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a()V

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->c(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$1;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->c(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;)Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$a;->a()V

    goto/16 :goto_1
.end method
