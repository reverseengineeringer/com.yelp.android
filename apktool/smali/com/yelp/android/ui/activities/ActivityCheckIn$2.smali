.class Lcom/yelp/android/ui/activities/ActivityCheckIn$2;
.super Ljava/lang/Object;
.source "ActivityCheckIn.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityCheckIn;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCheckIn;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCheckIn;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn$2;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn$2;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Lcom/yelp/android/ui/activities/ActivityCheckIn;)Lcom/yelp/android/ui/activities/CheckInDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->b()Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 119
    const-string/jumbo v2, "extra.comment_text"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn$2;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->b(Lcom/yelp/android/ui/activities/ActivityCheckIn;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn$2;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-virtual {v0, v3, v1}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->setResult(ILandroid/content/Intent;)V

    .line 138
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn$2;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->finish()V

    .line 139
    return-void

    .line 123
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn$2;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->b(Lcom/yelp/android/ui/activities/ActivityCheckIn;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/appdata/BusinessContributionType;->writeToIntent(Landroid/content/Intent;Landroid/os/Parcelable;)V

    .line 125
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn$2;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->setResult(ILandroid/content/Intent;)V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn$2;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.should_forward_to_business"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn$2;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn$2;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->c(Lcom/yelp/android/ui/activities/ActivityCheckIn;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn$2;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->b(Lcom/yelp/android/ui/activities/ActivityCheckIn;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/appdata/BusinessContributionType;->writeToIntent(Landroid/content/Intent;Landroid/os/Parcelable;)V

    .line 134
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn$2;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
