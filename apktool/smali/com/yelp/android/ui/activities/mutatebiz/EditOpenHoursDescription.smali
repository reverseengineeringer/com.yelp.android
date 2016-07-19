.class public Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "EditOpenHoursDescription.java"


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    const-string/jumbo v1, "DESCRIPTION"

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string/jumbo v1, "LISTED_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "DESCRIPTION"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 50
    const v0, 0x7f0f00ef

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->a:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "DESCRIPTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "LISTED_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const v0, 0x7f0f0173

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    const v2, 0x7f0705c2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->a:Landroid/widget/TextView;

    const v2, 0x7f07027a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 60
    const v0, 0x7f0f0177

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    const v0, 0x7f0f0178

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessEditHoursDescription:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->a()V

    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->b()V

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 75
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0607

    if-ne v0, v1, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 77
    const-string/jumbo v1, "DESCRIPTION"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->setResult(ILandroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->finish()V

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
