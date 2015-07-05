.class public Lcom/yelp/android/ui/activities/ActivityRoyal;
.super Lcom/yelp/android/ui/activities/NotificationActivity;
.source "ActivityRoyal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/NotificationActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 22
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityRoyal;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    const-string/jumbo v1, "rank"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 25
    const-string/jumbo v1, "loc"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRoyal;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v7, 0x7f0a0115

    const v6, 0x7f0a0060

    .line 31
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/NotificationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRoyal;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityRoyal;->setResult(ILandroid/content/Intent;)V

    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRoyal;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 34
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->n()Z

    move-result v2

    .line 35
    const-string/jumbo v0, "rank"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 36
    const-string/jumbo v3, "loc"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRoyal;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRoyal;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->getAwardBackgroundColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 38
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRoyal;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRoyal;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->getAwardDrawable()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRoyal;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0, v3, v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->getTitle(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v0, p0, v3, v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->getAnnouncement(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityRoyal;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRoyal;->a:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, p0, v2, v3}, Lcom/yelp/android/serializable/RankTitle$Rank;->getDetailText(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    sget-object v1, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_CITY_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRoyal;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRoyal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRoyal;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRoyal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRoyal;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRoyal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRoyal;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRoyal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
