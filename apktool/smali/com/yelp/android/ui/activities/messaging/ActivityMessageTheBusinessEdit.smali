.class public Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityMessageTheBusinessEdit.java"


# instance fields
.field private a:Lcom/yelp/android/cc/c;

.field private b:Lcom/yelp/android/serializable/YelpBusiness;

.field private c:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;

.field private d:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 100
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit$1;-><init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->c:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;

    .line 109
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit$2;-><init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->d:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    return-object v0
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 85
    const v0, 0x7f0f037e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const v0, 0x7f07031e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->a:Lcom/yelp/android/cc/c;

    new-instance v2, Lcom/yelp/android/cc/k;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/yelp/android/cc/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->d:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/cc/c;->a(Lcom/yelp/android/cc/k;Lcom/yelp/android/database/h$b;)V

    .line 96
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 48
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->h()Lcom/yelp/android/cc/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->a:Lcom/yelp/android/cc/c;

    .line 50
    const v0, 0x7f0300f5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->setContentView(I)V

    .line 51
    const v0, 0x7f07027c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->setTitle(I)V

    .line 53
    if-nez p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->a:Lcom/yelp/android/cc/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->b:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->c:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/cc/c;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/database/h$b;)V

    .line 56
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100022

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 76
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 69
    :sswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->a()Z

    goto :goto_0

    .line 72
    :sswitch_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->finish()V

    .line 73
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessLeave:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0f0607 -> :sswitch_0
    .end sparse-switch
.end method
