.class Lcom/yelp/android/ui/activities/drawer/a$2$1;
.super Ljava/lang/Object;
.source "DinoAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/drawer/a$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/drawer/a$2;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/drawer/a$2;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/a$2$1;->a:Lcom/yelp/android/ui/activities/drawer/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a$2$1;->a:Lcom/yelp/android/ui/activities/drawer/a$2;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/drawer/a$2;->a:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/a;->a(Lcom/yelp/android/ui/activities/drawer/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a$2$1;->a:Lcom/yelp/android/ui/activities/drawer/a$2;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/drawer/a$2;->a:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/a;->b(Lcom/yelp/android/ui/activities/drawer/a;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/a$2$1;->a:Lcom/yelp/android/ui/activities/drawer/a$2;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/drawer/a$2;->a:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/a;->d(Lcom/yelp/android/ui/activities/drawer/a;)Lcom/yelp/android/DinoListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/a$2$1;->a:Lcom/yelp/android/ui/activities/drawer/a$2;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/drawer/a$2;->a:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/drawer/a;->c(Lcom/yelp/android/ui/activities/drawer/a;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/DinoListView;->smoothScrollBy(II)V

    goto :goto_0
.end method
