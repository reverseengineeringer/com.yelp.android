.class Lcom/yelp/android/ui/panels/g$2;
.super Ljava/lang/Object;
.source "YourNextReviewAwaitsItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/g;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/g;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/yelp/android/ui/panels/g$2;->a:Lcom/yelp/android/ui/panels/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g$2;->a:Lcom/yelp/android/ui/panels/g;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/g;->c(Lcom/yelp/android/ui/panels/g;)Lcom/yelp/android/ui/panels/g$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/g$a;->a()V

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g$2;->a:Lcom/yelp/android/ui/panels/g;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/g$2;->a:Lcom/yelp/android/ui/panels/g;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/g;->d(Lcom/yelp/android/ui/panels/g;)Lcom/yelp/android/ui/activities/reviews/StarsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getNumStars()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/panels/g;->a(Lcom/yelp/android/ui/panels/g;I)V

    .line 110
    return-void
.end method
