.class Lcom/yelp/android/ui/util/r$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HideToolbarAnimationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/r;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/r;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/r;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/yelp/android/ui/util/r$2;->a:Lcom/yelp/android/ui/util/r;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/util/r$2;->a:Lcom/yelp/android/ui/util/r;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/r;->a()V

    .line 137
    return-void
.end method
