.class Lcom/yelp/android/ui/widgets/x;
.super Lcom/yelp/android/ui/util/dd;
.source "RecipientBoxView.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/User;

.field final synthetic b:Lcom/yelp/android/ui/widgets/RecipientBoxView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/RecipientBoxView;Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/x;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    iput-object p2, p0, Lcom/yelp/android/ui/widgets/x;->a:Lcom/yelp/android/serializable/User;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/x;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Lcom/yelp/android/ui/widgets/RecipientBoxView;Z)Z

    .line 196
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/x;->b:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/x;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Lcom/yelp/android/ui/widgets/RecipientBoxView;Ljava/lang/String;)V

    .line 191
    return-void
.end method
