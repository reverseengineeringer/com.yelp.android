.class Lcom/yelp/android/ui/widgets/y;
.super Lcom/yelp/android/ui/util/dd;
.source "RecipientBoxView.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/RecipientBoxView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/RecipientBoxView;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/y;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/y;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Lcom/yelp/android/ui/widgets/RecipientBoxView;Z)Z

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/y;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Lcom/yelp/android/ui/widgets/RecipientBoxView;Lcom/yelp/android/serializable/User;)V

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/y;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Lcom/yelp/android/ui/widgets/RecipientBoxView;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/y;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/cr;->a(Landroid/view/View;)V

    .line 212
    return-void
.end method
