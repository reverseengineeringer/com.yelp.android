.class Lcom/yelp/android/ui/panels/BizAttributesFragment$1;
.super Ljava/lang/Object;
.source "BizAttributesFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/BizAttributePanel$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/BizAttributesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/BizAttributesFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/text/Spanned;
    .locals 5

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->b(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->c(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0705a3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 214
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 216
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v1

    .line 223
    :goto_1
    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f07015b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->d(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f07053f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f07011b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->e(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/serializable/SurveyQuestion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/SurveyQuestion;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SurveyQuestion;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;Lcom/yelp/android/serializable/SurveyQuestion;)Lcom/yelp/android/serializable/SurveyQuestion;

    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/widgets/WidgetSpan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->removeAllViews()V

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->e(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/serializable/SurveyQuestion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/SurveyQuestion;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;Ljava/util/List;)V

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/widgets/WidgetSpan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->g(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/widgets/WidgetSpan;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->h(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->d(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckInsReceiptAddPhotoVideoButton:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->b(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckInsReceiptReviewStars:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->b(Lcom/yelp/android/ui/panels/BizAttributesFragment;Landroid/view/ViewGroup;)Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_2
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckInsReceiptTipButton:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->i(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/panels/BizAttributesFragment$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->i(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/panels/BizAttributesFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment$a;->a()V

    .line 255
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$1;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Z)V

    .line 261
    return-void
.end method
