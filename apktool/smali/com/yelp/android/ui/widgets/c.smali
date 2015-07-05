.class Lcom/yelp/android/ui/widgets/c;
.super Ljava/lang/Object;
.source "Darwin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/yelp/android/ui/widgets/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/b;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/c;->b:Lcom/yelp/android/ui/widgets/b;

    iput-object p2, p0, Lcom/yelp/android/ui/widgets/c;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/c;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/c;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/c;->b:Lcom/yelp/android/ui/widgets/b;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/b;->a(Lcom/yelp/android/ui/widgets/b;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53
    return-void
.end method
