.class Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$1;
.super Ljava/lang/Object;
.source "HotNewBusinessAwardBanner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$1;->a:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/yelp/android/serializable/Category;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$1;->a:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07032b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NewBusiness"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$1;->a:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$1;->a:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/serializable/Category;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$1;->a:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->a(Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;)Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$1;->a:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->a(Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;)Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$a;->a()V

    .line 42
    :cond_0
    return-void
.end method
