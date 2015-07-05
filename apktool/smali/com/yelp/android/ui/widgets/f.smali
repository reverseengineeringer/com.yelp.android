.class Lcom/yelp/android/ui/widgets/f;
.super Ljava/lang/Object;
.source "Darwin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/e;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/f;->a:Lcom/yelp/android/ui/widgets/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/f;->a:Lcom/yelp/android/ui/widgets/e;

    iget-object v0, v0, Lcom/yelp/android/ui/widgets/e;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/f;->a:Lcom/yelp/android/ui/widgets/e;

    iget-object v1, v1, Lcom/yelp/android/ui/widgets/e;->b:Lcom/yelp/android/ui/widgets/b;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/b;->b(Lcom/yelp/android/ui/widgets/b;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    return-void
.end method
