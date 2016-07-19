.class Lcom/yelp/android/ui/widgets/RecipientBoxView$4;
.super Lcom/yelp/android/ui/util/av$a;
.source "RecipientBoxView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/widgets/RecipientBoxView;->e()Landroid/view/animation/AlphaAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/RecipientBoxView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/RecipientBoxView;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$4;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$4;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Lcom/yelp/android/ui/widgets/RecipientBoxView;Z)Z

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$4;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Lcom/yelp/android/ui/widgets/RecipientBoxView;Lcom/yelp/android/serializable/User;)V

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$4;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Lcom/yelp/android/ui/widgets/RecipientBoxView;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$4;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->a(Landroid/view/View;)V

    .line 216
    return-void
.end method
