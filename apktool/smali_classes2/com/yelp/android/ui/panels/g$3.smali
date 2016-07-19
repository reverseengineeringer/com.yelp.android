.class Lcom/yelp/android/ui/panels/g$3;
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
    .line 113
    iput-object p1, p0, Lcom/yelp/android/ui/panels/g$3;->a:Lcom/yelp/android/ui/panels/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g$3;->a:Lcom/yelp/android/ui/panels/g;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/g;->c(Lcom/yelp/android/ui/panels/g;)Lcom/yelp/android/ui/panels/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/g$3;->a:Lcom/yelp/android/ui/panels/g;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/panels/g$a;->b(Lcom/yelp/android/ui/panels/g;)V

    .line 119
    return-void
.end method
