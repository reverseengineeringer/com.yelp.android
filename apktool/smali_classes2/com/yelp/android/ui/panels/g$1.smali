.class Lcom/yelp/android/ui/panels/g$1;
.super Ljava/lang/Object;
.source "YourNextReviewAwaitsItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/g;-><init>(Landroid/content/Context;Lcom/yelp/android/serializable/ReviewSuggestion;Lcom/yelp/android/ui/panels/g$a;Lcom/yelp/android/analytics/iris/IriSource;)V
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
    .line 85
    iput-object p1, p0, Lcom/yelp/android/ui/panels/g$1;->a:Lcom/yelp/android/ui/panels/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g$1;->a:Lcom/yelp/android/ui/panels/g;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/g;->a(Lcom/yelp/android/ui/panels/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/panels/g$1;->a:Lcom/yelp/android/ui/panels/g;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/g;->b(Lcom/yelp/android/ui/panels/g;)V

    .line 91
    :cond_0
    return-void
.end method
