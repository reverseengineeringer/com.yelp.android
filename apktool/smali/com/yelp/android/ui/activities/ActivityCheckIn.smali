.class public Lcom/yelp/android/ui/activities/ActivityCheckIn;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityCheckIn.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/CheckInDialog;

.field private b:Lcom/yelp/android/serializable/YelpCheckIn;

.field private c:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.comment_text"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCheckIn;Lcom/yelp/android/serializable/YelpCheckIn;)Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->b:Lcom/yelp/android/serializable/YelpCheckIn;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCheckIn;)Lcom/yelp/android/ui/activities/CheckInDialog;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "extra.comment_text"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "extra.should_forward_to_business"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityCheckIn;)Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->b:Lcom/yelp/android/serializable/YelpCheckIn;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityCheckIn;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->c:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->c:Lcom/yelp/android/serializable/YelpBusiness;

    .line 94
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "check_in_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/CheckInDialog;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.comment_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Lcom/yelp/android/ui/activities/CheckInDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "check_in_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCheckIn$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCheckIn$1;-><init>(Lcom/yelp/android/ui/activities/ActivityCheckIn;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Lcom/yelp/android/ui/activities/CheckInDialog$a;)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCheckIn$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCheckIn$2;-><init>(Lcom/yelp/android/ui/activities/ActivityCheckIn;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 141
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    return-void
.end method
