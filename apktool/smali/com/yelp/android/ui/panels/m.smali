.class Lcom/yelp/android/ui/panels/m;
.super Ljava/lang/Object;
.source "BizAttributesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/SurveyAnswer;

.field final synthetic b:Lcom/yelp/android/ui/panels/BizAttributesFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;Lcom/yelp/android/serializable/SurveyAnswer;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/yelp/android/ui/panels/m;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/m;->a:Lcom/yelp/android/serializable/SurveyAnswer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/panels/m;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SurveyQuestion;

    .line 409
    iget-object v1, p0, Lcom/yelp/android/ui/panels/m;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->k(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/m;->a:Lcom/yelp/android/serializable/SurveyAnswer;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/SurveyAnswer;->getAnswerIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 412
    const-string/jumbo v2, "answer_identifier"

    iget-object v3, p0, Lcom/yelp/android/ui/panels/m;->a:Lcom/yelp/android/serializable/SurveyAnswer;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/SurveyAnswer;->getAnswerIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string/jumbo v2, "question_identifier"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/SurveyQuestion;->getQuestionIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/yelp/android/ui/panels/m;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->h(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->CheckInsReceiptSurveyQuestion:Lcom/yelp/android/analytics/iris/EventIri;

    :goto_0
    check-cast v0, Lcom/yelp/android/analytics/iris/b;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/panels/m;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->l(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/panels/BizAttributePanel;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/m;->a:Lcom/yelp/android/serializable/SurveyAnswer;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/SurveyAnswer;->getSuccessMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Ljava/lang/String;)V

    .line 418
    return-void

    .line 415
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedSurveyQuestion:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    goto :goto_0
.end method
