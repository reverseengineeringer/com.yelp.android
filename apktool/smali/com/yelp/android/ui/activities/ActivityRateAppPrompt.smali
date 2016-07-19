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
    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->t()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    .line 113
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/c;->a(I)V

    .line 114
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
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
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
    .line 98
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 99
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->a()V

    .line 100
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->AppRateBack:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->setContentView(I)V

    .line 38
    const v0, 0x7f0f01c8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->a:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f0f01cb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->b:Landroid/widget/Button;

    .line 40
    const v0, 0x7f0f01cc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->c:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->b:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt$1;-><init>(Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->c:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt$2;-><init>(Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100025

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 92
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 82
    :sswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/c;->b(Z)V

    .line 83
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->AppRateCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->finish()V

    goto :goto_0

    .line 87
    :sswitch_1
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->AppRateBack:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 88
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->a()V

    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->finish()V

    goto :goto_0

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0f060d -> :sswitch_0
    .end sparse-switch
.end method
