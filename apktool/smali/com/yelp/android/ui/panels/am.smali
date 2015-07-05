.class Lcom/yelp/android/ui/panels/am;
.super Ljava/lang/Object;
.source "YourNextReviewAwaitsItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/ak;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/ak;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/yelp/android/ui/panels/am;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/panels/am;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/ak;->c(Lcom/yelp/android/ui/panels/ak;)Lcom/yelp/android/ui/panels/at;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/at;->a()V

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/panels/am;->a:Lcom/yelp/android/ui/panels/ak;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/am;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/ak;->d(Lcom/yelp/android/ui/panels/ak;)Lcom/yelp/android/ui/activities/reviews/StarsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getNumStars()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/panels/ak;->a(Lcom/yelp/android/ui/panels/ak;I)V

    .line 101
    return-void
.end method
