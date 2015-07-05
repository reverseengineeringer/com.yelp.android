.class Lcom/yelp/android/ui/activities/reviewpage/as;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/as;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 385
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 386
    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 388
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/as;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    const v2, 0x7f07036a

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 391
    return-void
.end method
