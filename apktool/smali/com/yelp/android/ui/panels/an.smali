.class Lcom/yelp/android/ui/panels/an;
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
    .line 103
    iput-object p1, p0, Lcom/yelp/android/ui/panels/an;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/panels/an;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/ak;->c(Lcom/yelp/android/ui/panels/ak;)Lcom/yelp/android/ui/panels/at;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/an;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/panels/at;->b(Lcom/yelp/android/ui/panels/ak;)V

    .line 109
    return-void
.end method
