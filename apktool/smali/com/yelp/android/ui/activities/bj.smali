.class Lcom/yelp/android/ui/activities/bj;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bj;->c:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/bj;->a:Landroid/view/View;

    iput p3, p0, Lcom/yelp/android/ui/activities/bj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .prologue
    .line 896
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bj;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 897
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bj;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 899
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v3, p0, Lcom/yelp/android/ui/activities/bj;->b:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 901
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bj;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 892
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 887
    return-void
.end method
