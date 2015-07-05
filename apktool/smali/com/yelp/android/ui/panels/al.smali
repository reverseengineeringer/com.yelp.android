.class Lcom/yelp/android/ui/panels/al;
.super Ljava/lang/Object;
.source "YourNextReviewAwaitsItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/ak;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/ak;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/yelp/android/ui/panels/al;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/panels/al;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/ak;->a(Lcom/yelp/android/ui/panels/ak;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/panels/al;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/ak;->b(Lcom/yelp/android/ui/panels/ak;)V

    .line 83
    :cond_0
    return-void
.end method
