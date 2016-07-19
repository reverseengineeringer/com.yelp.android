.class Lcom/yelp/android/ui/panels/BizAttributesFragment$7;
.super Ljava/lang/Object;
.source "BizAttributesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/SurveyAnswer;

.field final synthetic b:Lcom/yelp/android/ui/panels/BizAttributesFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;Lcom/yelp/android/serializable/SurveyAnswer;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$7;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$7;->a:Lcom/yelp/android/serializable/SurveyAnswer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 464
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$7;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SurveyQuestion;

    .line 465
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$7;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->k(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$7;->a:Lcom/yelp/android/serializable/SurveyAnswer;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/SurveyAnswer;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 468
    const-string/jumbo v2, "answer_identifier"

    iget-object v3, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$7;->a:Lcom/yelp/android/serializable/SurveyAnswer;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/SurveyAnswer;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string/jumbo v2, "question_identifier"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/SurveyQuestion;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$7;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->h(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->CheckInsReceiptSurveyQuestion:Lcom/yelp/android/analytics/iris/EventIri;

    :goto_0
    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 476
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$7;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->l(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/panels/BizAttributePanel;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$7;->a:Lcom/yelp/android/serializable/SurveyAnswer;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/SurveyAnswer;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Ljava/lang/String;)V

    .line 477
    return-void

    .line 471
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ReviewPostedSurveyQuestion:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0
.end method
