.class public Lcom/yelp/android/ui/activities/ActivityFirstTranslation;
.super Lcom/yelp/android/ui/activities/NotificationActivity;
.source "ActivityFirstTranslation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/NotificationActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityFirstTranslation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    const-string/jumbo v1, "extra_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFirstTranslation;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/NotificationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFirstTranslation;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityFirstTranslation;->setResult(ILandroid/content/Intent;)V

    .line 29
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFirstTranslation;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080031

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFirstTranslation;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "extra_count"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFirstTranslation;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFirstTranslation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    return-void
.end method
