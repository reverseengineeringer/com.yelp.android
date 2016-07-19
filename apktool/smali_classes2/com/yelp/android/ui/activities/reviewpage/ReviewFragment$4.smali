.class Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$4;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$4;->c:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$4;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$4;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$4;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$4;->c:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$4;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$4;->b:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$4;->c:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$4;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$4;->b:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0
.end method
