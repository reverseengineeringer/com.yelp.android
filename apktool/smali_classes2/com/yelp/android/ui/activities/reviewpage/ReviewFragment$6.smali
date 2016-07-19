.class Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$6;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/widget/ToggleButton;IIZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$6;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 445
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 446
    check-cast p1, Landroid/widget/Checkable;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$6;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$6;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070201

    const v3, 0x7f0703a5

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/app/Activity;II)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 454
    return-void
.end method
