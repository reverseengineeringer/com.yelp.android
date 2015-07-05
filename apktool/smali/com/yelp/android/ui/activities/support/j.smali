.class Lcom/yelp/android/ui/activities/support/j;
.super Ljava/lang/Object;
.source "YelpActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/activities/support/h;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/h;ZI)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/j;->c:Lcom/yelp/android/ui/activities/support/h;

    iput-boolean p2, p0, Lcom/yelp/android/ui/activities/support/j;->a:Z

    iput p3, p0, Lcom/yelp/android/ui/activities/support/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/j;->a:Z

    iget v1, p0, Lcom/yelp/android/ui/activities/support/j;->b:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a(ZI)Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;

    move-result-object v0

    .line 682
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/j;->c:Lcom/yelp/android/ui/activities/support/h;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/support/h;->a(Lcom/yelp/android/ui/activities/support/h;)Lcom/yelp/android/ui/activities/support/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->a(Lcom/yelp/android/ui/activities/support/o;)V

    .line 683
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/j;->c:Lcom/yelp/android/ui/activities/support/h;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/support/h;->b(Lcom/yelp/android/ui/activities/support/h;)Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v1

    .line 684
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/LocationSettingsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 685
    return-void
.end method
