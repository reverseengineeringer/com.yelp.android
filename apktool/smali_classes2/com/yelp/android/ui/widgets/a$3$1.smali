.class Lcom/yelp/android/ui/widgets/a$3$1;
.super Ljava/lang/Object;
.source "Darwin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/widgets/a$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/a$3;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/a$3;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/a$3$1;->a:Lcom/yelp/android/ui/widgets/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/a$3$1;->a:Lcom/yelp/android/ui/widgets/a$3;

    iget-object v0, v0, Lcom/yelp/android/ui/widgets/a$3;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/a$3$1;->a:Lcom/yelp/android/ui/widgets/a$3;

    iget-object v1, v1, Lcom/yelp/android/ui/widgets/a$3;->b:Lcom/yelp/android/ui/widgets/a;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/a;->b(Lcom/yelp/android/ui/widgets/a;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 87
    return-void
.end method
