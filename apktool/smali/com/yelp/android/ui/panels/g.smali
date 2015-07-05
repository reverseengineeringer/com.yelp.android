.class Lcom/yelp/android/ui/panels/g;
.super Ljava/lang/Object;
.source "BizAttributesFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/f;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/BizAttributesFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/text/Spanned;
    .locals 5

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->b(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->c(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070593

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 192
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 193
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v1

    .line 197
    :goto_1
    return-object v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0700d2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->d(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070541

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f07009d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->e(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/serializable/SurveyQuestion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/SurveyQuestion;->getQuestion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SurveyQuestion;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;Lcom/yelp/android/serializable/SurveyQuestion;)Lcom/yelp/android/serializable/SurveyQuestion;

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/widgets/WidgetSpan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->removeAllViews()V

    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->e(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/serializable/SurveyQuestion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/SurveyQuestion;->getAnswers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;Ljava/util/ArrayList;)V

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/widgets/WidgetSpan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->g(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/widgets/WidgetSpan;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->h(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->d(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckInsReceiptAddPhotoVideoButton:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->b(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckInsReceiptReviewStars:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->b(Lcom/yelp/android/ui/panels/BizAttributesFragment;Landroid/view/ViewGroup;)Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_2
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckInsReceiptTipButton:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->i(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/panels/o;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->i(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/panels/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/o;->a()V

    .line 227
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Z)V

    .line 233
    return-void
.end method
