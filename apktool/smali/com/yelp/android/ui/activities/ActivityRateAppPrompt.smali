.class public Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityRateAppPrompt.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->n()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/i;->a(I)V

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->a()V

    return-void
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 95
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->a()V

    .line 96
    sget-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->AppRateBack:Lcom/yelp/android/analytics/iris/AutoIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 97
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->setContentView(I)V

    .line 38
    const v0, 0x7f0c0197

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->a:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f0c019a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->b:Landroid/widget/Button;

    .line 40
    const v0, 0x7f0c019b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->c:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->b:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/dm;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/dm;-><init>(Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->c:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/dn;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/dn;-><init>(Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 64
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 70
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100020

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 88
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 78
    :sswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/i;->b(Z)V

    .line 79
    sget-object v1, Lcom/yelp/android/analytics/iris/AutoIri;->AppRateCancel:Lcom/yelp/android/analytics/iris/AutoIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->finish()V

    goto :goto_0

    .line 83
    :sswitch_1
    sget-object v1, Lcom/yelp/android/analytics/iris/AutoIri;->AppRateBack:Lcom/yelp/android/analytics/iris/AutoIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 84
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->a()V

    .line 85
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->finish()V

    goto :goto_0

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0c0504 -> :sswitch_0
    .end sparse-switch
.end method
