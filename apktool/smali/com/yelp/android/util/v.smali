.class Lcom/yelp/android/util/v;
.super Lcom/yelp/android/ui/util/dd;
.source "OnScrollHideEditTextListener.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/util/u;


# direct methods
.method constructor <init>(Lcom/yelp/android/util/u;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yelp/android/util/v;->a:Lcom/yelp/android/util/u;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/util/v;->a:Lcom/yelp/android/util/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/util/u;->a(Lcom/yelp/android/util/u;Z)Z

    .line 38
    iget-object v0, p0, Lcom/yelp/android/util/v;->a:Lcom/yelp/android/util/u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/util/u;->b(Lcom/yelp/android/util/u;Z)Z

    .line 39
    return-void
.end method
