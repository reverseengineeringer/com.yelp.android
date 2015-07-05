.class Lcom/yelp/android/ui/util/af;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HideToolbarAnimationListener.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/ab;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/ab;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/yelp/android/ui/util/af;->a:Lcom/yelp/android/ui/util/ab;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/util/af;->a:Lcom/yelp/android/ui/util/ab;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ab;->d()V

    .line 160
    return-void
.end method
