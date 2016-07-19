.class public Lcom/yelp/android/al/f;
.super Ljava/lang/Object;
.source "ViewAnimation.java"

# interfaces
.implements Lcom/yelp/android/al/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/al/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/al/c",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/al/f$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/al/f$a;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yelp/android/al/f;->a:Lcom/yelp/android/al/f$a;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/yelp/android/al/c$a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/yelp/android/al/c$a;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 36
    invoke-interface {p2}, Lcom/yelp/android/al/c$a;->b_()Landroid/view/View;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 39
    iget-object v1, p0, Lcom/yelp/android/al/f;->a:Lcom/yelp/android/al/f$a;

    invoke-interface {v1}, Lcom/yelp/android/al/f$a;->a()Landroid/view/animation/Animation;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
