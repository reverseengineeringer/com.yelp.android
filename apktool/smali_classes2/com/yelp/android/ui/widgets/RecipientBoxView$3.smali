.class Lcom/yelp/android/ui/widgets/RecipientBoxView$3;
.super Lcom/yelp/android/ui/util/av$a;
.source "RecipientBoxView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/widgets/RecipientBoxView;->d(Lcom/yelp/android/serializable/User;)Landroid/view/animation/AlphaAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/User;

.field final synthetic b:Lcom/yelp/android/ui/widgets/RecipientBoxView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/RecipientBoxView;Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$3;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    iput-object p2, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$3;->a:Lcom/yelp/android/serializable/User;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$3;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Lcom/yelp/android/ui/widgets/RecipientBoxView;Z)Z

    .line 199
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$3;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$3;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Lcom/yelp/android/ui/widgets/RecipientBoxView;Ljava/lang/String;)V

    .line 194
    return-void
.end method
