.class Lcom/yelp/android/util/m$1;
.super Lcom/yelp/android/ui/util/av$a;
.source "OnScrollHideEditTextListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/util/m;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/util/m;


# direct methods
.method constructor <init>(Lcom/yelp/android/util/m;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/yelp/android/util/m$1;->a:Lcom/yelp/android/util/m;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/util/m$1;->a:Lcom/yelp/android/util/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/util/m;->a(Lcom/yelp/android/util/m;Z)Z

    .line 39
    iget-object v0, p0, Lcom/yelp/android/util/m$1;->a:Lcom/yelp/android/util/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/util/m;->b(Lcom/yelp/android/util/m;Z)Z

    .line 40
    return-void
.end method
