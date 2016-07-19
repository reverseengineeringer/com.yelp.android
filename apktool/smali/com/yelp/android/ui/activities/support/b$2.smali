.class Lcom/yelp/android/ui/activities/support/b$2;
.super Ljava/lang/Object;
.source "YelpActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/support/b;->a(Lcom/yelp/android/ui/activities/support/b$e;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/activities/support/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/b;ZI)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/b$2;->c:Lcom/yelp/android/ui/activities/support/b;

    iput-boolean p2, p0, Lcom/yelp/android/ui/activities/support/b$2;->a:Z

    iput p3, p0, Lcom/yelp/android/ui/activities/support/b$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/b$2;->a:Z

    iget v1, p0, Lcom/yelp/android/ui/activities/support/b$2;->b:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a(ZI)Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/b$2;->c:Lcom/yelp/android/ui/activities/support/b;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/support/b;->a(Lcom/yelp/android/ui/activities/support/b;)Lcom/yelp/android/ui/activities/support/b$e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a(Lcom/yelp/android/ui/activities/support/b$e;)V

    .line 659
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/b$2;->c:Lcom/yelp/android/ui/activities/support/b;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/support/b;->b(Lcom/yelp/android/ui/activities/support/b;)Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v1

    .line 660
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 661
    return-void
.end method
