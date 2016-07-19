.class Lcom/yelp/android/ui/activities/ActivityConfirmAccount$6;
.super Ljava/lang/Object;
.source "ActivityConfirmAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityConfirmAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$6;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 436
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$6;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->d(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 437
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$6;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->e(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->b(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 438
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$6;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->f(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 440
    return-void
.end method
