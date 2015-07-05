.class final Lcom/yelp/android/ui/activities/search/aw;
.super Lcom/yelp/android/database/x;
.source "SearchUtils.java"


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/aw;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/yelp/android/database/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 284
    const v0, 0x7f07052f

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/aw;->a:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 286
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 290
    const v0, 0x7f07052e

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    .line 291
    return-void
.end method
